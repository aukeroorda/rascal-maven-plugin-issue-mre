module corel::AST

data ARecipe(loc src = |tmp:///|)
    = recipe(ASynopsis synopsis,
             AIngredients ingredients,
             AInstructions instructions);

data ASynopsis(loc src = |tmp:///|)
    = synopsis(str name);

data AIngredients(loc src = |tmp:///|)
    = ingredients(str ingredients_header, list[AIngredient] ingredients);

data AInstructions(loc src = |tmp:///|)
    = instructions(str instructions_header, list[AInstruction] instructions);

data AIngredient(loc src = |tmp:///|)
    = ingredient(list[AWord] words);

data AInstruction(loc src = |tmp:///|)
    = instruction(list[AWord] words);

data AWord(loc src = |tmp:///|)
    = quantity(AQuantity quantity)
    | ingredient_def(AIngredientDef ingredient_def)
    | ingredient_ref(AIngredientRef ingredient_ref)
    | time(ATime time)
    | temperature(ATemperature temperature)
    | description_text(ADescriptionText description_text)
    ;

data AQuantity(loc src = |tmp:///|)
    = quantity_exact(ANumberOrRange val, AUnit unit)
    | quantity_count(ANumberOrRange val)
    | quantity_unit(AUnit unit)
    | quantity_empty()
    ;

data ATime(loc src = |tmp:///|)
    = time_exact(ANumberOrRange val, AUnit unit)
    | time_count(ANumberOrRange val)
    | time_unit(AUnit unit)
    | time_empty()
    ;

data ATemperature(loc src = |tmp:///|)
    = temperature_exact(ANumberOrRange val, AUnit unit)
    | temperature_count(ANumberOrRange val)
    | temperature_unit(AUnit unit)
    | temperature_empty()
    ;


data AUnit(loc src = |tmp:///|)
    = unit_quantity(str unit)
    | unit_time(str unit)
    | unit_temperature(str unit)
    ;


data ANumberOrRange(loc src = |tmp:///|)
    = number(AExactValue val)
    | range(AExactValue lower, AExactValue upper)
    ;

data AExactValue(loc src = |tmp:///|)
    = sole_integral(int nat)
    | mixed(int nat, AFraction frac)
    | sole_fraction(AFraction frac)
    ;

data AFraction(loc src = |tmp:///|)
    = fraction(int numerator, int denominator);

data AIngredientDef(loc src = |tmp:///|)
    = ingredient_def(str name);

data AIngredientRef(loc src = |tmp:///|)
    = ingredient_ref(str name);

data ADescriptionText(loc src = |tmp:///|)
    = description_text(str text);