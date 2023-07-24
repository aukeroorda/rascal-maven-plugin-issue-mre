module MreTest

// import corel::Syntax;
// import corel::Check;
// import corel::CST2AST;

// import util::IDEServices;
// import util::LanguageServer;



// import util::IDEServices;


import util::LanguageServer;
// import util::Reflective;




// import ParseTree;
// import ParseTree;


// import salix::HTML;
// import salix::App;
// import salix::Index;

// set[LanguageService] CorelLanguageContributor() = {
//     parser(Tree (str input, loc src) {
//         return parse(#start[Recipe], input, src);
//     }),
//     outliner(corelOutliner),
//     summarizer(corelSummarizer),
//     lenses(corelLenses),
//     executor(corelCommands),
//     inlayHinter(corelHinter)
// };


// list[DocumentSymbol] corelOutliner(start[Recipe] input)
//     = [symbol("<input.src.file>", \file(), input.src, children=[ // DocumentSymbol for the file itself, the root
//         *[symbol("<ing>", \field(), ing.src, children=[
//             *[symbol("<def>", \variable(), def.src) | /IngredientDef def := ing],
//             *[symbol("<nor>", \constant(), nor.src) | /NumberOrRange nor := ing]
//         ]) | /Ingredient ing := input]    // For each ingredient in the file
//     ])];

// Summary corelSummarizer(loc l, start[Recipe] input) {
//     rel[str, loc] defs = {<"<def.name>", def.src> | /IngredientDef def := input};
//     rel[loc, str] uses = {<ref.src, "<ref.name>"> | /IngredientRef ref := input};
//     rel[loc, str] docs = {<ref.src, "*variable* <ref>"> | /IngredientRef ref := input};

//     MessageDocs msgdocs = check(cst2ast(input));

//     return summary(l,
//         messages = msgdocs.messages,
//         // messages = {<src, error("<ref> is not defined", src)> | <src, ref> <- uses, ref notin defs<0>},
//         // references = (uses o defs)<1,0>,
//         definitions = uses o defs,
//         documentation = (uses o defs) o docs
//     );
// }

// data Command
//      = renameAtoB(start[Recipe] recipe);

// rel[loc, Command] corelLenses(start[Recipe] input) = {<input@\loc, renameAtoB(input, title="Rename variables a to b.")>};

// list[InlayHint] corelHinter(start[Recipe] input) {
//     // typeLookup = ( "<name>" : "<tp>" | /(IdType)`<Id name> : <Type tp>` := input);

//     // return [
//     //     hint(name.src, ": <typeLookup["<name>"]>", \type()) | /(Expression)`<Id name>` := input
//     // ];
//     return [hint(ref.src, "very nice ref", \type(), toolTip="this is tooltip") | /IngredientRef ref := input];
// }

// list[DocumentEdit] getAtoBEdits(start[Recipe] _)
//     // = [changed(input@\loc.top, [replace(id@\loc, "b") | /id:(Id) `a` := input])];
//     = [];

// void corelCommands(renameAtoB(start[Recipe] input)) {
//     applyDocumentsEdits(getAtoBEdits(input));
// }

// void main() {
//     registerLanguage(
//         language(
//             getProjectPathConfig(|project://corel-language/|),
//             "CorelLanguage",               // Name of the language
//             "crl",                         // Extension of source files
//             "corel::CorelLanguageServer",  // Module that is imported for the DSL
//             "CorelLanguageContributor"     // Main function to call with the contributions of this DSL
//         )
//     );
// }
