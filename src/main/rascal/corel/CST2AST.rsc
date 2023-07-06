module corel::CST2AST

import corel::Syntax;
import corel::AST;

import ParseTree;
import String;
import Boolean;

import List;
import IO;

ARecipe cst2ast(start [Recipe] sr)
    = cst2ast(sr.top);

ARecipe cst2ast(Recipe r) {
    // Construct a default synopsis value in case none is provided
    ASynopsis s = cst2ast(parse(#Synopsis, "# Unnamed recipe"));
    if (r has synopsis) {
        s = cst2ast(r.synopsis);
    }

    // Same for ingredients, construct a default empty list
    AIngredients ing = cst2ast(parse(#Ingredients, "## Ingredients:"));
    if (r has ingredients) {
        ing = cst2ast(r.ingredients);
    }

    // And for instructions
    AInstructions ins = cst2ast(parse(#Instructions, "## Instructions:"));
    if (r has instructions) {
        ins = cst2ast(r.instructions);
    }

    return recipe(s, ing, ins, src=r@\loc);
}

ASynopsis cst2ast(Synopsis s) {
    return synopsis("<s.name>", src=s@\loc);
}

AIngredients cst2ast(Ingredients i)
    = ingredients("<i.ingredients_header>", [cst2ast(ingredient) | ingredient <- i.\list], src=i@\loc);

AInstructions cst2ast(Instructions i)
    = instructions("<i.instructions_header>", [cst2ast(instruction) | instruction <- i.\list], src=i@\loc);

AIngredient cst2ast(Ingredient i)
    = ingredient([cst2ast(word) | word <- i.words], src=i@\loc);

AInstruction cst2ast(Instruction i)
    = instruction([cst2ast(word) | word <- i.words], src=i@\loc);

AWord cst2ast(Word w) {
    if (w is quantity) {
        return quantity(cst2ast(w.quantity), src=w@\loc);
    }
    if (w is ingredient_def) {
        return ingredient_def(cst2ast(w.ingredient_def), src=w@\loc);
    }
    if (w is ingredient_ref) {
        return ingredient_ref(cst2ast(w.ingredient_ref), src=w@\loc);
    }
    if (w is time) {
        return time(cst2ast(w.time), src=w@\loc);
    }
    if (w is temperature) {
        return temperature(cst2ast(w.temperature), src=w@\loc);
    }
    if (w is description_text) {
        return description_text(cst2ast(w.description_text), src=w@\loc);
    }
    throw NotImplemented;
}

AQuantity cst2ast(Quantity q) {
    if (q is exact) {
        return quantity_exact(cst2ast(q.val), cst2ast(q.unit), src=q@\loc);
    }
    if (q is count) {
        return quantity_count(cst2ast(q.val), src=q@\loc);
    }
    if (q is unit) {
        return quantity_unit(cst2ast(q.unit), src=q@\loc);
    }
    if (q is empty) {
        return quantity_empty(src=q@\loc);
    }
    throw NotImplemented;
}


ATemperature cst2ast(Temperature t) {
    if (t is exact) {
        return temperature_exact(cst2ast(t.val), cst2ast(t.unit), src=t@\loc);
    }
    if (t is count) {
        return temperature_count(cst2ast(t.val), src=t@\loc);
    }
    if (t is unit) {
        return temperature_unit(cst2ast(t.unit), src=t@\loc);
    }
    if (t is empty) {
        return temperature_empty(src=t@\loc);
    }
    throw NotImplemented;
}

ATime cst2ast(Time t) {
    if (t is exact) {
        return time_exact(cst2ast(t.val), cst2ast(t.unit), src=t@\loc);
    }
    if (t is count) {
        return time_count(cst2ast(t.val), src=t@\loc);
    }
    if (t is unit) {
        return time_unit(cst2ast(t.unit), src=t@\loc);
    }
    if (t is empty) {
        return time_empty(src=t@\loc);
    }
    throw NotImplemented;
}

AUnit cst2ast(TemperatureUnit t)
    = unit_temperature("<t>", src=t@\loc);
AUnit cst2ast(TimeUnit t)
    = unit_time("<t>", src=t@\loc);
AUnit cst2ast(QuantityUnit q)
    = unit_quantity("<q>", src=q@\loc);

ANumberOrRange cst2ast(NumberOrRange n) {
    if (n is number) {
        return number(cst2ast(n.val), src=n@\loc);
    }
    if (n is range) {
        return range(cst2ast(n.lower), cst2ast(n.upper), src=n@\loc);
    }
    throw NotImplemented;
}

AExactValue cst2ast(ExactValue e) {
    if (e is sole_integral) {
        return sole_integral(toInt("<e.nat>"), src=e@\loc);
    }
    if (e is mixed) {
        return mixed(toInt("<e.nat>"), cst2ast(e.frac), src=e@\loc);
    }
    if (e is sole_fraction) {
        return sole_fraction(cst2ast(e.frac), src=e@\loc);
    }
    throw NotImplemented;
}

AFraction cst2ast(Fraction f)
    = fraction(toInt("<f.numerator>"), toInt("<f.denominator>"), src=f@\loc);

AIngredientDef cst2ast(IngredientDef d)
    = ingredient_def("<d.name>", src=d@\loc);

AIngredientRef cst2ast(IngredientRef r)
    = ingredient_ref("<r.name>", src=r@\loc);

ADescriptionText cst2ast(DescriptionText d)
    = description_text("<d.text>", src=d@\loc);

