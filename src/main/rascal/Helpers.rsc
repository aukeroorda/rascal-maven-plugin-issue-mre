module Helpers

import corel::Syntax;
import corel::AST;
import corel::CST2AST;
import corel::CorelLanguageServer;

import ParseTree;
import IO;

import util::LanguageServer;
import util::Reflective;

public loc curry = |project://corel-language/recipes/curry-madras.crl|;
public loc cashew = |project://corel-language/recipes/kip-cashew-noodles.md|;
public loc working = |project://corel-language/recipes/working.crl|;


Tree cst_r()
    = parse(#Recipe, working);

Tree cst_amb()
    = parse(#Recipe, working, allowAmbiguity=true);

ARecipe ast_r()
	= cst2ast(cst_r());

Summary usedefs()
    = corelSummarizer(working, cst_r());


void view(value v)
    = writeFile(|project://corel-language/temp/view.rsc|, v);

