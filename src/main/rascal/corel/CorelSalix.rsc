module corel::CorelSalix

import corel::AST;
import corel::Syntax;
import corel::CST2AST;

import ParseTree;

import salix::HTML;
import salix::App;
import salix::Index;

/* The model includes the state of the online web-editor, and for instance the most recent valid AST to be able to render this next to the editor.
 */
alias Model = ARecipe;

Model init() = cst2ast(parse(#start[Recipe], "# Kip cashew met noodles\n## Ingredients:\n- [200 grams] {noedels}\n- [300 grams] {kip}\n## Instructions:\n- Kook de @noedels@.\n- Bak de @kip@."));

SalixApp[Model] recipeApp(str id = "recipeDemo") = makeApp(id, init, withIndex("Recipe", id, shopDemoView, css = ["/src/web-app/test.css"]), update);

App[Model] recipeWebApp()
    = webApp(
        recipeApp(),
        |project://corel-language/|
    );

// TODO: Add more interaction functionality here (replace unit (pounds->grams for instance), convert volume to mass, scale recipe)
data Msg
    = addIngredient(str ingredient)
    | removeIngredients()
    ;



Model update(Msg msg, Model m) {
    switch(msg) {
        case addIngredient(str ingredient):
            m.ingredients.ingredients += [cst2ast(parse(#Ingredient, ingredient))];
        case removeIngredients():
            m.ingredients.ingredients = [];
    }

    return m;
}

void shopDemoView(Model m) {
  div(() {
    div(id("header"), () {
      h1("Corel Recipe demo");
    });
    viewIngredients(m.ingredients);
    viewInstructions();
  });
}

void viewIngredients(AIngredients ingredients) {
    div((){
        h2(ingredients.ingredients_header);
        div(id("ingredient_list"));
        ol(() {
                for (int i <- [0..size(ingredients.ingredients)]) {
                    viewIngredient(ingredients.ingredients[i]);
                }
            }
        );
        div("Ingredients list size:", size(ingredients.ingredients));
        button(onClick(addIngredient("- fakeingredient")), "Add ingredient");
        button(onClick(removeIngredients()), "Remove ingredients");
    });
}

void viewIngredient(AIngredient ingredient) {
    li("<ingredient.words>");
}

void viewInstructions() {
    div();
}