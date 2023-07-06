module corel::Check

import corel::AST;

import Message; // see standard library
import Frink; // quantity, time and temperature units

alias Use = rel[loc use, str name];
alias Def = rel[str name, loc def];
alias UseDef = rel[loc use, loc def];
alias RefGraph = tuple[
  Use uses, 
  Def defs, 
  UseDef usedef
];
alias MessageDocs = tuple[
	rel[loc, Message] messages,
	rel[loc, str] docs
];

RefGraph resolve(ARecipe r) = <us, ds, us o ds>
  when Use us := uses(r), Def ds := defs(r);

// Use is set of <loc use, str name>
Use uses(ARecipe r) {
  return {<ref.src, ref.name> | /AIngredientRef ref := r};
}

// Def is set of <str name, loc def>
Def defs(ARecipe r) {
  return {<def.name, def.src> | /AIngredientDef def := r};
}


MessageDocs check(ARecipe r) {
    MessageDocs msgdocs = <{}, {}>;
    UseDef usedef = uses(r) o defs(r);


	// Duplicate IngredientDefs
	for (/AIngredientDef def := r)
	{
		for (/AIngredientDef def_other := r)
		{
            // If this is the same ingredient, the name will of course match but it is not a duplicate
			if (def.src == def_other.src)
			{
				continue;
			}
            // However, if the name of another definition is the same, it is a duplicate
			if (def.name == def_other.name)
			{
				msgdocs.messages += {<def.src, error("Duplicate ingredient definition: <def.name>", def.src)>};
				break;
			}
		}
	}
	
	// Unused IngredientDefs
	for (/AIngredientDef def := r)
	{
		if (!(def.src in usedef<1>))
		{
			msgdocs.messages += {<def.src, warning("Unused ingredient: <def.name>", def.src)>};
		}
	}

    // IngredientRefs referring to non-existing ingredients
	for (/AIngredientRef ref := r)
	{
		if (!(ref.src in usedef<0>))
		{
			msgdocs.messages += {<ref.src, error("Reference to undeclared ingredient: <ref.name>", ref.src)>};
		}
	}

    // Check Ingredients
    for (/AIngredient i := r) {
        MessageDocs tmp = check(i);
        msgdocs.messages += tmp.messages;
        msgdocs.docs += tmp.docs;
    }

    return msgdocs;
}

MessageDocs check(AIngredient i) {
    MessageDocs msgdocs = <{}, {}>;

    // Warn if not all elements are present in the ingredient, or if there are multiple:
    // - IngredientDef
    // - Quantity
    
    // Count occurences
    int ingredient_def_count = 0;
    int quantity_count = 0;
    visit(i) {
        case AIngredientDef _: ingredient_def_count += 1;
        case AQuantity _: quantity_count += 1;
    }
    // Validate ingredient definition count
    if (ingredient_def_count < 1) {
        msgdocs.messages += {<i.src, warning("There is no ingredient definition: enclose the ingredient name in braces: {paprika}", i.src)>};
        return msgdocs;
    } elseif (ingredient_def_count > 1) {
        msgdocs.messages += {<def.src, warning("Multiple ingredient definitions", def.src)> | /AIngredientDef def := i};
        return msgdocs;
    }
    // Validate quantity count
    if (quantity_count < 1) {
        msgdocs.messages += {<i.src, warning("No ingredient quantity provided", i.src)>};
        return msgdocs;
    } elseif (quantity_count > 1) {
        msgdocs.messages += {<q.src, warning("Multiple quantities provided", q.src)> | /AQuantity q := i};
        return msgdocs;
    }

    // Validate the quantity
    for (/AQuantity q := i) {
        MessageDocs tmp = check(q);
        msgdocs.messages += tmp.messages;
        msgdocs.docs += tmp.docs;
    }


    return msgdocs;
}

MessageDocs check(AQuantity q) {
    MessageDocs msgdocs = <{}, {}>;

    // Not every quantity has a unit, so check that first
    if (q has unit) {
        if (!is_frink_unit(q.unit.unit))  {
            msgdocs.messages += {<q.unit.src, warning("Unknown unit: <q.unit.unit>", q.unit.src)>};
            return msgdocs;
        }
    }

    return msgdocs;
}