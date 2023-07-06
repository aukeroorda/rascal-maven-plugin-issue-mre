module corel::Syntax_t

import corel::Syntax;

// For tests
import ParseTree;
import Exception;
import IO;


@expected{ParseError}
test bool t_ingredient_0() = Ingredient _ := parse(#Ingredient, "text of ingredient");

test bool t_ingredient_1() = Ingredient _ := [Ingredient]"-"; // Empty
test bool t_ingredient_2() = Ingredient _ := [Ingredient]"- [2 cups]"; // Unit
test bool t_ingredient_3() = Ingredient _ := [Ingredient]"- {Pepper}"; // Ingredient definition
test bool t_ingredient_4() = Ingredient _ := [Ingredient]"- @Pepper@"; // Ingredient reference
test bool t_ingredient_5() = Ingredient _ := [Ingredient]"- |2 minutes|"; // Time
test bool t_ingredient_6() = Ingredient _ := [Ingredient]"- \<25 C\>"; // Temperature
test bool t_ingredient_7() = Ingredient _ := [Ingredient]"- Optionally add some lemon"; // Description text

test bool t_ingredient_a() {
    Ingredient i = parse(#Ingredient, "- {Salt} and {pepper}");

    return i.words[0] is ingredient_def
        && i.words[1] is description_text
        && i.words[2] is ingredient_def
        ;
}

test bool t_ingredient_b() {
    Ingredient i = parse(#Ingredient, "- [2 gram] {Salt} and [4 gram] {pepper}");

    return i.words[0] is quantity
        && i.words[1] is ingredient_def
        && i.words[2] is description_text
        && i.words[3] is quantity
        && i.words[4] is ingredient_def
        ;
}

test bool t_ingredient_c() {
    Ingredient i = parse(#Ingredient, "- [4 cups] {milk}, at room temperature (\<25 C\>)");

    return i.words[0] is quantity
        && i.words[1] is ingredient_def
        && i.words[2] is description_text
        && i.words[3] is temperature
        && i.words[4] is description_text
        ;
}

test bool t_ingredient_d() {
    Ingredient i = parse(#Ingredient, "- [2] medium red {onions}; about [3/4 pound], cut pole to pole into 8 wedges each");

    return i.words[0] is quantity
        && i.words[1] is description_text
        && i.words[2] is ingredient_def
        ;
}

test bool t_ingredient_e() {
    Ingredient i = parse(#Ingredient, "- {walk} and [4 pepper] [4] [5 units] [] {} {} {}");

    return i.words[0] is ingredient_def
        && i.words[1] is description_text
        && i.words[2] is quantity
        && i.words[3] is quantity
        && i.words[4] is quantity
        && i.words[5] is quantity
        && i.words[6] is ingredient_def
        && i.words[7] is ingredient_def
        && i.words[8] is ingredient_def
        ;
}

test bool t_temp() {
    Temperature t = parse(#Temperature, "\<140 degrees\>");
    return "<t.val>" == "140"
        && "<t.unit>" == "degrees";
}
test bool t_temp_1() {
    Temperature t = parse(#Temperature, "\<300F\>");
    return "<t.val>" == "300"
        && "<t.unit>" == "F";
}
test bool t_temp_2() {
    Temperature t = parse(#Temperature, "\<25 degrees C\>");
    return "<t.val>" == "25"
        && "<t.unit>" == "degrees C";
}


test bool t_time() {
    Time t = parse(#Time, "|4 minutes|");
    return "<t.val>" == "4"
        && "<t.unit>" == "minutes";
}

test bool t_time_1() {
    Time t = parse(#Time, "|2hr|");
    return "<t.val>" == "2"
        && "<t.unit>" == "hr";
}


// No delimiting pipe symbols
@expected{ParseError}
test bool t_time_2() = Time _ := parse(#Time, "2 hr");


// General format checking
test bool t_time_3() = Time _ := parse(#Time, "|2|");
test bool t_time_4() = Time _ := parse(#Time, "|2 hr|");
test bool t_time_5() = Time _ := parse(#Time, "|2hr|");
test bool t_time_6() = Time _ := parse(#Time, "|20-30hr|");


test bool t_description_text_0() = DescriptionText _ := parse(#DescriptionText, "What a sentence");
test bool t_description_text_1() = DescriptionText _ := parse(#DescriptionText, "; about 3/4 pound, cut pole to pole into 8 wedges each");
test bool t_description_text_2() = DescriptionText _ := parse(#DescriptionText, "Add a dot.");
test bool t_description_text_3() = DescriptionText _ := [DescriptionText]"ay";
test bool t_description_text_4() = DescriptionText _ := [DescriptionText]"and";
test bool t_description_text_5() = DescriptionText _ := [DescriptionText]"andd";

// Ensure words are parsed as correct syntax
test bool t_word_1() {
    Word w = parse(#Word, "[4 cups]");
    return w is quantity;
}

test bool t_word_2() {
    Word w = parse(#Word, "{apples}");
    return w is ingredient_def;
}

test bool t_word_3() {
    Word w = parse(#Word, "@apples@");
    return w is ingredient_ref;
}

test bool t_word_4() {
    Word w = parse(#Word, "|4 minutes|");
    return w is time;
}

test bool t_word_5() {
    Word w = parse(#Word, "\<400 degrees F\>");
    return w is temperature;
}

test bool t_word_6() {
    Word w = parse(#Word, ", and some description text.");
    return w is description_text;
}

@expected{ParseError}
test bool t_description_text_a() {
    DescriptionText _ := parse(#DescriptionText, "Just in |4 minutes| time and \<500 F\>.");
    return false;
}

@expected{ParseError} // Missing starting dash
test bool t_instruction_0() {
    Instruction i = parse(#Instruction, "Cook the apple.");
    return true;
}

test bool t_instruction_1() {
    Instruction i = parse(#Instruction, "-Cook the apple.");

    return i.words[0] is description_text
        ;
}

test bool t_instruction_2() {
    Instruction i = parse(#Instruction, "- What a sentence.{aaa}a");

    return i.words[0] is description_text
        && i.words[1] is ingredient_def
        && i.words[2] is description_text
        ;
}

test bool t_instruction_3() {
    Instruction i = parse(#Instruction, "- Add each of the [4 cups]");

    return i.words[0] is description_text
        && i.words[1] is quantity
        ;
}

test bool t_instruction_4() {
    Instruction i = parse(#Instruction, "- Cooking instruction. {Different elements} are fine");

    return i.words[0] is description_text
        && i.words[1] is ingredient_def
        && i.words[2] is description_text
        ;
}

test bool t_instruction_5() {
    Instruction i = parse(#Instruction, "- Step. Step.");

    return i.words[0] is description_text
        ;
}
test bool t_instruction_6() {
    Instruction i = parse(#Instruction, "- Cooking instruction.{Different elements} are fine");

    return i.words[0] is description_text
        && i.words[1] is ingredient_def
        && i.words[2] is description_text
        ;
}
test bool t_instruction_7() {
    Instruction i = parse(#Instruction, "- Just in |4 minutes| time, the @apples@ should be at around \<500 F\>.");

    return i.words[0] is description_text
        && i.words[1] is time
        && i.words[2] is description_text
        && i.words[3] is ingredient_ref
        && i.words[4] is description_text
        && i.words[5] is temperature
        && i.words[6] is description_text
        ;
}





// Testing higher level syntax structures

// Ingredients
test bool t_ingredients_0() {
    text = "## Ingredients:
           '- [1 clove] {apple}
           '- [1 tablespoon] vegetable {oil}";

    Ingredients i = parse(#Ingredients, text);

    return true;
}

test bool t_ingredients_1() {
    text = "##ingredients
           '- Some {pepper}
           '- and [4 cloves] or [40gr] {garlic} is nice";
    
    Ingredients i = parse(#Ingredients, text);
    return true;
}

test bool t_ingredients_2() {
    text = "## ingredients:
           '- 1 [tablespoon] vegetable {oil}
           '- 2 medium red {onions}; about 3/4 pound, cut pole to pole into 8 wedges each";
    
    Ingredients i = parse(#Ingredients, text);
    return true;
}




// Test recipe files
test bool t_recipe_0() {
    loc l = |project://corel-language/test-recipes/kip-cashew-noodles.md|;
    Recipe r = parse(#Recipe, l);

    return true;
}

test bool t_recipe_1() {
    loc curry = |project://corel-language/test-recipes/curry-madras-copy.crl|;
    Recipe r = parse(#Recipe, curry);

    return true;
}