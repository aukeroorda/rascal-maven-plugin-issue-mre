module corel::Syntax


extend lang::std::Layout;


/* A recipe should mostly be proza, except for some key elements:
 * - A header indicator followed by the title of the recipe: # Bolognese
 * - A subsection indicating the list of ingredients: ## Ingredients
 * - A subsection containing the instructions: ## Instructions
 */
start syntax Recipe =
    | empty:
    | syn: Synopsis synopsis
    | syn_ing: Synopsis synopsis Ingredients ingredients [\n]*
    | syn_ing_ins: Synopsis synopsis Ingredients ingredients Instructions instructions [\n]*
    ;

/* The synopsis of is required to contain the name, and possibly:
 * - [ ] Number of servings: Servings: 4-6
 * - [ ] or a yield: Yield: 4 plates
 * - [ ] And proza, such as a description
 */
syntax Synopsis
    = ^"#" RestOfLine name
    ;

/* The ingredients section contains a list of ingredients.
 */
syntax Ingredients
    = ^"##" RestOfLine ingredients_header 
      Ingredient* list;


/* The instructions are a list of free text instructions.
 */
syntax Instructions
    = ^"##" RestOfLine instructions_header 
      Instruction* list;


// Ingredient building blocks
syntax Ingredient
    = ^'-' Word* words;

syntax Word
    = quantity: Quantity quantity                         // Starts and ends with '[]'
    | ingredient_def: IngredientDef ingredient_def        // Starts and ends with '{}'
    | ingredient_ref: IngredientRef ingredient_ref        // Starts and ends with '@@'
    | time: Time time                                     // Starts and ends with '||'
    | temperature: Temperature temperature                // Starts and ends with '<>'
    | description_text: DescriptionText description_text  // Starts and ends with remaining characters
    ;

syntax Quantity
    = @category="Type" exact: '[' NumberOrRange val QuantityUnit unit ']'
    | @category="Type" count: '[' NumberOrRange val ']'
    | @category="Type" unit:  '[' QuantityUnit unit ']'
    | @category="Type" empty: '[' ']'
    ;

// Instruction building blocks
/* Instructions are generally grouped in paragraphs of multiple sentences. Each paragraph has to start with a dash `-`.
 */
syntax Instruction
    = ^'-' Word* words;

// Syntactic building blocks
syntax NumberOrRange
    = @category="Constant" number: ExactValue val
    | @category="Constant" range: ExactValue lower '-' ExactValue upper
    ;

syntax ExactValue
    = sole_integral: NaturalNumber nat
    | mixed: NaturalNumber nat Fraction frac
    | sole_fraction: Fraction frac
    ;

// Lexical building blocks

/* RestOfLine matches anything from the current location up to the first newline char
 */
lexical RestOfLine
	= ![\n]+ !>> ![\n];

/* Fractions in the form: "1/2", no whitespace allowed
 */
lexical Fraction = NaturalNumber numerator '/' NaturalNumber denominator;

/* Natural numbers, so no negative numbers or decimals. Always starts with a non-zero digit. Is never preceded or followed by a digit.
 */
lexical NaturalNumber = [0-9] !<< ([1-9][0-9]*) val !>> [0-9];

/* Matches any proza up to the first newline or delimiting character.
 */
lexical DescriptionText
    = @category="Identifier"
        (
            ![#\-@|\<{\[\n]  // Cannot contain delimiting characters OR a dash as first char
            ![@|\<{\[\n]*   // and no delimiting characters later on
        ) text
        !>> ![@|\<{\[\n]   // and ensures the longest match
        ;

/* Ingredient definitions are delimited by curly braces {}. The name cannot contain any of the delimiting characters.
 */
lexical IngredientDef
	= @category="Comment" "{" IngredientIdentifier name "}"
    | @category="Comment" empty: "{" "}"
    ;

/* Ingredient references are enclosed with @. The name follows the same specification as the ingredient definitions.
 */
lexical IngredientRef
	= @category="Comment" "@" IngredientIdentifier name "@"
    | @category="Comment" empty: "@" "@"
    ;

/* The ingredient identifiers are any characters that are not a newline, and also not any of the delimiting characters.
 */
lexical IngredientIdentifier
	= (![\n] - [{}@0-9])    // Atleast a single character long. Cannot start with a digit.
      (![\n] - [{}@])*      // Followed by one or more characters
      !>> ![\n] - [{}@];    // And not directly succeeded by any of the non-delimiting characters.

/* Temperatures are delimited by angled brackets <>, e.g. <400 F>
 */
syntax Temperature
	= @category="Type" exact: "\<" NumberOrRange val TemperatureUnit unit "\>"
    | @category="Type" count: "\<" NumberOrRange val "\>"
    | @category="Type" unit:  "\<" TemperatureUnit unit "\>"
    | @category="Type" empty: "\<" "\>"
    ;

/* Times are enclosed in pipes ||, e.g. |5 minutes|.
 */
syntax Time
	= @category="Type" exact: "|" NumberOrRange val TimeUnit unit "|"
    | @category="Type" count: "|" NumberOrRange val "|"
    | @category="Type" unit:  "|" TimeUnit unit "|"
    | @category="Type" empty: "|" "|"
    ;

/* Unit strings are very flexible, but don't allow numbers or the following delimiter
 */
lexical QuantityUnit = ![0-9\]\n]+ !>> ![\]];
lexical TemperatureUnit =  ![0-9\>\n]+ !>> ![\>];
lexical TimeUnit = ![0-9|\n]+ !>> ![|];
