module FrinkRascalUnits

public list[str] frink_units = [
"yotta",
"zetta",
"exa",
"peta",
"tera",
"giga",
"mega",
"myria",
"kilo",
"hecto",
"deca",
"deka",
"deci",
"centi",
"milli",
"micro",
"nano",
"pico",
"femto",
"atto",
"zepto",
"yocto",
"Y",
"Z",
"E",
"P",
"T",
"G",
"M",
"k",
"h",
"da",
"d",
"c",
"m",
"n",
"p",
"f",
"a",
"z",
"y",
"length",
"meter",
"time",
"second",
"mass",
"kilogram",
"gram",
"current",
"ampere",
"amp",
"temperature",
"kelvin",
"currency",
"amount_of_substance",
"mole",
"radian",
"sr",
"steradian",
"information",
"luminous_intensity",
"candela",
"i",
"1",
"m",
"m",
"s",
"m",
"m",
"m",
"m",
"m",
"m",
"m",
"m",
"m",
"m",
"m",
"m",
"A",
"dollar",
"unit_",
"semi",
"demi",
"hemi",
"half",
"third",
"quarter",
"eighth",
"uni",
"bi",
"tri",
"zero",
"one",
"two",
"double",
"three",
"triple",
"treble",
"four",
"quadruple",
"five",
"quintuple",
"six",
"sextuple",
"seven",
"septuple",
"eight",
"nine",
"ten",
"twenty",
"thirty",
"forty",
"fifty",
"sixty",
"seventy",
"eighty",
"ninety",
"hundred",
"thousand",
"million",
"billion",
"trillion",
"quadrillion",
"quintillion",
"sextillion",
"septillion",
"octillion",
"nonillion",
"noventillion",
"decillion",
"undecillion",
"duodecillion",
"tredecillion",
"quattuordecillion",
"quindecillion",
"sexdecillion",
"septendecillion",
"octodecillion",
"novemdecillion",
"vigintillion",
"centillion",
"googol",
"brbillion",
"brtrillion",
"brquadrillion",
"brquintillion",
"brsextillion",
"brseptillion",
"broctillion",
"brnonillion",
"brnoventillion",
"brdecillion",
"brundecillion",
"brduodecillion",
"brtredecillion",
"brquattuordecillion",
"brquindecillion",
"brsexdecillion",
"brseptdecillion",
"broctodecillion",
"brnovemdecillion",
"brvigintillion",
"milliard",
"billiard",
"trilliard",
"quadrilliard",
"quintilliard",
"sextilliard",
"septilliard",
"octilliard",
"nonilliard",
"noventilliard",
"decilliard",
"brmilliard",
"brbilliard",
"brtrilliard",
"brquadrilliard",
"brquintilliard",
"brsextilliard",
"brseptilliard",
"broctilliard",
"brnonilliard",
"brnoventilliard",
"brdecilliard",
"lakh",
"lac",
"crore",
"newton",
"N",
"pascal",
"Pa",
"joule",
"J",
"watt",
"W",
"J",
"coulomb",
"coulomb",
"coulomb",
"coulomb",
"C",
"volt",
"V",
"volt",
"V",
"A",
"ohm",
"ohm",
"siemens",
"S",
"siemens",
"farad",
"farad",
"F",
"uF",
"weber",
"weber",
"Wb",
"henry",
"henry",
"henries",
"H",
"tesla",
"tesla",
"T",
"hertz",
"Hz",
"cesiumfrequency",
"J",
"J",
"sec",
"minute",
"min",
"hour",
"hr",
"day",
"d",
"da",
"week",
"wk",
"sennight",
"fortnight",
"blink",
"ce",
"gm",
"g",
"tonne",
"t",
"metricton",
"sthene",
"funal",
"pieze",
"quintal",
"bar",
"vac",
"micron",
"bicron",
"cc",
"are",
"liter",
"oldliter",
"l",
"L",
"mho",
"galvat",
"angstrom",
"xunit",
"siegbahn",
"fermi",
"barn",
"shed",
"brewster",
"diopter",
"fresnel",
"shake",
"svedberg",
"gamma",
"lambda",
"spat",
"preece",
"planck",
"sturgeon",
"sturgeon",
"daraf",
"leo",
"poiseuille",
"mayer",
"mired",
"crocodile",
"metricounce",
"mounce",
"finsenunit",
"fluxunit",
"jansky",
"Jy",
"pi",
"e",
"EulerMascheroniConstant",
"c",
"light",
"lightspeed",
"mu0",
"mu",
"magneticconstant",
"permeabilityofvacuum",
"mu0",
"epsilon0",
"permittivityofvacuum",
"electricconstant",
"coulombconst",
"k_e",
"k",
"coulombconst",
"epsilon0",
"Z0",
"Z",
"impedanceofvacuum",
"Y0",
"Y",
"admittanceofvacuum",
"energy",
"elementarycharge",
"electroncharge",
"protoncharge",
"neutroncharge",
"upquarkcharge",
"downquarkcharge",
"h",
"plancksconstant",
"hbar",
"classicalElectronRadius",
"r_e",
"r",
"ThomsonCrossSection",
"sigma_e",
"sigma",
"sigma_t",
"sigma",
"G",
"gravitationalconstant",
"G",
"au",
"ua",
"astronomicalunit",
"circle",
"cycle",
"turn",
"revolution",
"rev",
"degree",
"arcdegree",
"deg",
"arcdeg",
"arcminute",
"arcmin",
"arcsecond",
"arcsec",
"mas",
"rightangle",
"quadrant",
"quintant",
"sextant",
"sign",
"pulsatance",
"gon",
"grade",
"centesimalminute",
"centesimalsecond",
"milangle",
"pointangle",
"centrad",
"brad",
"sphere",
"squaredegree",
"squareminute",
"squaresecond",
"squarearcmin",
"squarearcsec",
"sphericalrightangle",
"octant",
"percent",
"proof",
"ppm",
"partspermillion",
"ppb",
"partsperbillion",
"ppt",
"partspertrillion",
"karat",
"fine",
"caratgold",
"gammil",
"basispoint",
"degcelsius",
"degreeCelsius",
"degC",
"zerocelsius",
"degfahrenheit",
"degreeFahrenheit",
"degF",
"degreesRankine",
"degreesrankine",
"degrankine",
"degreerankine",
"degR",
"Rankine",
"degreaumur",
"Fahrenheit",
"F",
"Celsius",
"C",
"Reaumur",
"gravity",
"g_n",
"g",
"gee",
"gravities",
"force",
"atm",
"atmosphere",
"Hg",
"mercurydensity",
"water",
"H2O",
"H",
"wc",
"mach",
"standardtemp",
"stdtemp",
"atomicmassunit",
"m_u",
"u",
"m",
"amu",
"amu_chem",
"amu_phys",
"dalton",
"avogadro",
"N_A",
"boltzmann",
"boltzmannsconstant",
"k",
"gasconstant",
"R",
"molarvolume",
"molar",
"Molar",
"molar",
"molal",
"molal",
"m",
"loschmidt",
"amagat",
"stefanboltzmann",
"sigma",
"s",
"wiendisplacement",
"K_J",
"Josephson_constant",
"m",
"R_K",
"von_Klitzing_constant",
"electronmass",
"m_e",
"protonmass",
"m_p",
"neutronmass",
"m_n",
"muonmass",
"m_mu",
"m_muon",
"deuteronmass",
"m_d",
"alphaparticlemass",
"m_alpha",
"taumass",
"m_tau",
"alpha",
"finestructureconstant",
"Rydberg_constant",
"Rinfinity",
"R_H",
"bohrradius",
"planckmass",
"m_P",
"plancktime",
"t_P",
"plancklength",
"l_P",
"plancktemperature",
"T_P",
"electronwavelength",
"lambda_C",
"Comptonwavelength",
"protonwavelength",
"lambda_C_p",
"neutronwavelength",
"lambda_C_n",
"bohrmagneton",
"mu_B",
"nuclearmagneton",
"mu_N",
"m",
"muonmagneticmoment",
"mu_mu",
"protonmagneticmoment",
"mu_p",
"electronmagneticmoment",
"mu_e",
"neutronmagneticmoment",
"mu_n",
"deuteronmagneticmoment",
"mu_d",
"inch",
"foot",
"feet",
"ft",
"survey",
"geodetic",
"statute",
"int",
"inches",
"in",
"yard",
"yd",
"mile",
"line",
"rod",
"rd",
"perch",
"furlong",
"statutemile",
"league",
"cal_IT",
"cal_th",
"cal_fifteen",
"cal_twenty",
"cal_mean",
"calorie",
"cal",
"calorie_IT",
"thermcalorie",
"calorie_th",
"Calorie",
"thermie",
"inHg",
"inH2O",
"inchmercury",
"inchesmercury",
"mmH2O",
"mmHg",
"kgf",
"technicalatmosphere",
"at",
"hyl",
"torr",
"Torr",
"tor",
"eV",
"electronvolt",
"lightyear",
"ly",
"lightsecond",
"lightminute",
"parsec",
"pc",
"rydberg",
"crith",
"amagatvolume",
"lorentz",
"cminv",
"invcm",
"wavenumber",
"cal_mol",
"J_mol",
"dyne",
"dyn",
"erg",
"poise",
"P",
"poise",
"rhe",
"rhe",
"stokes",
"St",
"stokes",
"stoke",
"lentor",
"Gal",
"galileo",
"barye",
"barad",
"kayser",
"balmer",
"kine",
"bole",
"pond",
"glug",
"darcy",
"mobileohm",
"mechanicalohm",
"acousticalohm",
"ray",
"rayl",
"eotvos",
"abampere",
"abamp",
"aA",
"biot",
"Bi",
"abcoulomb",
"abcoul",
"abvolt",
"abfarad",
"abhenry",
"abohm",
"abmho",
"gauss",
"Gs",
"maxwell",
"Mx",
"oersted",
"Oe",
"gilbert",
"Gb",
"Gi",
"unitpole",
"statampere",
"statamp",
"statvolt",
"statcoulomb",
"esu",
"statcoul",
"statfarad",
"cmcapacitance",
"stathenry",
"statohm",
"statmho",
"statmaxwell",
"franklin",
"debye",
"debye",
"helmholtz",
"jar",
"Ah",
"intampere",
"intamp",
"intfarad",
"intvolt",
"intohm",
"daniell",
"faraday",
"faraday_phys",
"faraday_chem",
"kappline",
"siemensunit",
"candle",
"hefnerunit",
"hefnercandle",
"violle",
"lumen",
"lm",
"talbot",
"lumberg",
"talbot",
"m",
"lux",
"lx",
"phot",
"ph",
"footcandle",
"metercandle",
"mcs",
"nit",
"stilb",
"sb",
"apostilb",
"asb",
"blondel",
"nox",
"skot",
"equivalentlux",
"equivalentphot",
"lambert",
"footlambert",
"sunlum",
"sunillum",
"sunillum_o",
"sunlum_h",
"skylum",
"skylum_o",
"moonlum",
"anomalisticyear",
"siderealyear",
"tropicalyear",
"gaussianyear",
"siderealday",
"siderealhour",
"siderealminute",
"siderealsecond",
"solarday",
"anomalisticmonth",
"nodicalmonth",
"draconicmonth",
"draconiticmonth",
"siderealmonth",
"lunarmonth",
"synodicmonth",
"lunation",
"lune",
"lunour",
"year",
"yr",
"month",
"mo",
"decade",
"century",
"centuries",
"millennium",
"millennia",
"solaryear",
"lunaryear",
"calendaryear",
"commonyear",
"leapyear",
"julianyear",
"juliancentury",
"juliancenturies",
"gregorianyear",
"islamicyear",
"islamicleapyear",
"islamicmonth",
"cron",
"lustrum",
"mercuryday",
"venusday",
"earthday",
"marssiderealday",
"marssolarday",
"marsday",
"jupiterday",
"saturnday",
"uranusday",
"neptuneday",
"plutoday",
"mercuryyear",
"venusyear",
"earthyear",
"marsyear",
"jupiteryear",
"saturnyear",
"uranusyear",
"neptuneyear",
"plutoyear",
"sunmass",
"solarmass",
"sunradius",
"sunpower",
"landarea",
"oceanarea",
"oceanvolume",
"moonmass",
"moonradius",
"sundist",
"sundist_near",
"sundist_far",
"mercurydist",
"venusdist",
"earthdist",
"marsdist",
"jupiterdist",
"saturndist",
"uranusdist",
"neptunedist",
"plutodist",
"moondist",
"mercurymass",
"venusmass",
"marsmass",
"earthmass",
"jupitermass",
"saturnmass",
"uranusmass",
"neptunemass",
"plutomass",
"mercuryradius",
"venusradius",
"marsradius",
"earthradius",
"jupiterradius",
"jupiterradius_equatorial",
"jupiterradius_polar",
"saturnradius",
"uranusradius",
"neptuneradius",
"plutoradius",
"earthradius_equatorial",
"earthradius_polar",
"earth_flattening",
"earthvolume",
"phobosdist",
"phobosmass",
"deimosdist",
"deimosmass",
"iodist",
"ioradius",
"iomass",
"europadist",
"europaradius",
"europamass",
"ganymededist",
"ganymederadius",
"ganymedemass",
"callistodist",
"callistoradius",
"callistomass",
"titandist",
"titanradius",
"titanmass",
"charondist",
"charonradius",
"charonmass",
"moongravity",
"hubbleconstant",
"H_0",
"universeage",
"annually",
"annual",
"yearly",
"daily",
"weekly",
"monthly",
"hourly",
"octave",
"majorthird",
"minorthird",
"musicalfourth",
"musicalfifth",
"majorsecond",
"majorsixth",
"minorsixth",
"majorseventh",
"minorseventh",
"pythagoreanthird",
"syntoniccomma",
"pythagoreancomma",
"semitone",
"atomicmass",
"atomiccharge",
"atomicaction",
"atomiclength",
"atomictime",
"atomicvelocity",
"atomicenergy",
"hartree",
"Hartree",
"E_h",
"thermalcoulomb",
"thermalampere",
"thermalfarad",
"thermalohm",
"fourier",
"thermalhenry",
"thermalvolt",
"surveyorschain",
"surveyorspole",
"surveyorslink",
"chain",
"surveychain",
"ch",
"link",
"acre",
"intacre",
"acrefoot",
"acrefeet",
"section",
"township",
"homestead",
"gunterschain",
"engineerschain",
"engineerslink",
"ramsdenschain",
"ramsdenslink",
"fathom",
"nauticalmile",
"oldUSnauticalmile",
"oldUSknot",
"cable",
"cablelength",
"cableslength",
"metriccable",
"navycablelength",
"marineleague",
"knot",
"shackle",
"oldUKRNshackle",
"watch",
"bell",
"datamile",
"pound",
"lb",
"grain",
"gr",
"ounce",
"oz",
"dram",
"dr",
"hundredweight",
"cwt",
"shorthundredweight",
"ton",
"shortton",
"shortquarter",
"troypound",
"troyounce",
"ozt",
"pennyweight",
"dwt",
"assayton",
"metriccarat",
"metricgrain",
"carat",
"ct",
"jewelerspoint",
"silversmithpoint",
"appound",
"apounce",
"apdram",
"scruple",
"gallon",
"gal",
"quart",
"qt",
"pint",
"pt",
"gill",
"fluidounce",
"floz",
"fluiddram",
"fldr",
"minim",
"liquidbarrel",
"petroleumbarrel",
"barrel",
"oilbarrel",
"bbl",
"hogshead",
"firkin",
"drybarrel",
"bushel",
"bu",
"peck",
"pk",
"drygallon",
"dryquart",
"drypint",
"wheatbushel",
"soybeanbushel",
"cornbushel",
"ryebushel",
"barleybushel",
"oatbushel",
"ricebushel",
"canada_oatbushel",
"pony",
"jigger",
"shot",
"eushot",
"fifth",
"winebottle",
"winesplit",
"wineglass",
"magnum",
"metrictenth",
"metricfifth",
"metricquart",
"split",
"jeroboam",
"rehoboam",
"methuselah",
"salmanazar",
"balthazar",
"nebuchadnezzar",
"shoeiron",
"shoeounce",
"buck",
"fin",
"sawbuck",
"key",
"lid",
"footballfield",
"marathon",
"british",
"oldbrnauticalmile",
"oldbrknot",
"oldbrcable",
"geographicalmile",
"admiraltymile",
"admiraltyknot",
"admiraltycable",
"seamile",
"cablet",
"hawserlaidcable",
"oldrussiancable",
"oldhollandcable",
"oldportugalcable",
"clove",
"stone",
"brhundredweight",
"brquartermass",
"longhundredweight",
"longton",
"brton",
"brassayton",
"brgallon",
"canadiangallon",
"cangallon",
"imperialgallon",
"brquart",
"imperialquart",
"brpint",
"imperialpint",
"brfloz",
"imperialfloz",
"brdram",
"imperialdram",
"brminim",
"imperialminim",
"brscruple",
"imperialscruple",
"fluidscruple",
"brfluidounce",
"imperialfluidounce",
"brgill",
"imperialgill",
"brpeck",
"imperialpeck",
"brbarrel",
"imperialbarrel",
"brbushel",
"imperialbushel",
"brheapedbushel",
"brquarter",
"brchaldron",
"bag",
"bucket",
"last",
"noggin",
"pottle",
"pin",
"puncheon",
"seam",
"coomb",
"boll",
"firlot",
"brfirkin",
"cran",
"barrelbulk",
"brhogshead",
"registerton",
"shippington",
"brshippington",
"freightton",
"displacementton",
"waterton",
"strike",
"barleycorn",
"nail",
"pole",
"rope",
"englishell",
"flemishell",
"ell",
"span",
"goad",
"rood",
"englishcarat",
"mancus",
"mast",
"basebox",
"metre",
"gramme",
"litre",
"dioptre",
"geometricpace",
"pace",
"USmilitarypace",
"USdoubletimepace",
"fingerbreadth",
"fingerlength",
"finger",
"hand",
"palmwidth",
"palmlength",
"cup",
"tablespoon",
"tbl",
"tbsp",
"Tbsp",
"Tsp",
"teaspoon",
"tsp",
"metriccup",
"number1can",
"number2can",
"number2_5can",
"number3can",
"number5can",
"number10can",
"brcup",
"brteacup",
"brtablespoon",
"brteaspoon",
"dessertspoon",
"brtsp",
"brtbl",
"dsp",
"australiatablespoon",
"austbl",
"chinesecatty",
"oldchinesecatty",
"chinesetael",
"chinesemace",
"oldchinesepicul",
"chinesepicul",
"thaitical",
"thaibaht",
"thaisalung",
"thaifung",
"thaisatang",
"thaisadtahng",
"thaitamlung",
"thaicatty",
"thaichang",
"thaihap",
"thaipicul",
"thaikoyan",
"japancup",
"jo",
"tatamimat",
"tsubo",
"butter",
"butter_clarified",
"cocoa_butter",
"shortening",
"stickbutter",
"vegetable_oil",
"cakeflour_sifted",
"cakeflour_spooned",
"cakeflour_scooped",
"flour_sifted",
"flour_spooned",
"flour_scooped",
"breadflour_sifted",
"breadflour_spooned",
"breadflour_scooped",
"cornstarch",
"dutchcocoa_sifted",
"dutchcocoa_spooned",
"dutchcocoa_scooped",
"cocoa_sifted",
"cocoa_spooned",
"cocoa_scooped",
"heavycream",
"milk",
"sourcream",
"molasses",
"cornsyrup",
"honey",
"sugar",
"powdered_sugar",
"brownsugar_light",
"brownsugar_dark",
"baking_powder",
"salt",
"koshersalt",
"ethanol",
"alcohol",
"methanol",
"egg",
"eggwhite",
"eggyolk",
"eggvolume",
"eggwhitevolume",
"eggyolkvolume",
"ouncedal",
"poundal",
"tondal",
"pdl",
"psi",
"psia",
"tsi",
"reyn",
"lbf",
"slug",
"slugf",
"slinch",
"slinchf",
"geepound",
"tonf",
"lbm",
"kip",
"mil",
"thou",
"circularinch",
"circularmil",
"cmil",
"cental",
"centner",
"caliber",
"duty",
"celo",
"jerk",
"australiapoint",
"sabin",
"standardgauge",
"flag",
"rollwallpaper",
"fillpower",
"pinlength",
"buttonline",
"scoopnumber",
"Btu",
"btu",
"BTU",
"britishthermalunit",
"Btu_IT",
"btu_IT",
"Btu_th",
"btu_th",
"Btu_mean",
"btu_mean",
"quad",
"ECtherm",
"UStherm",
"therm",
"horsepower",
"hp",
"metrichorsepower",
"electrichorsepower",
"boilerhorsepower",
"waterhorsepower",
"brhorsepower",
"donkeypower",
"Wh",
"Rvalue",
"Cvalue",
"kvalue",
"Uvalue",
"europeanUvalue",
"RSI",
"W",
"m",
"K",
"m",
"W",
"J",
"W",
"J",
"J",
"clo",
"clausius",
"langley",
"poncelet",
"tonrefrigeration",
"tonsrefrigeration",
"tonref",
"refrigeration",
"frigorie",
"TNT",
"PETN",
"gasoline",
"natural_gas",
"naturalgas",
"propane",
"kerosene",
"oil",
"coal",
"unity",
"pair",
"couple",
"brace",
"nest",
"dickers",
"dozen",
"bakersdozen",
"score",
"flock",
"timer",
"shock",
"gross",
"greatgross",
"shortquire",
"quire",
"shortream",
"ream",
"perfectream",
"bundle",
"bale",
"lettersize",
"legalsize",
"ledgersize",
"executivesize",
"Apaper",
"Bpaper",
"Cpaper",
"Dpaper",
"Epaper",
"A0paper",
"A1paper",
"A2paper",
"A3paper",
"A4paper",
"A5paper",
"A6paper",
"A7paper",
"A8paper",
"A9paper",
"A10paper",
"B0paper",
"B1paper",
"B2paper",
"B3paper",
"B4paper",
"B5paper",
"B6paper",
"B7paper",
"B8paper",
"B9paper",
"B10paper",
"C0paper",
"C1paper",
"C2paper",
"C3paper",
"C4paper",
"C5paper",
"C6paper",
"C7paper",
"C8paper",
"C9paper",
"C10paper",
"gsm",
"kg",
"poundbookpaper",
"lbbook",
"poundtextpaper",
"lbtext",
"poundoffsetpaper",
"lboffset",
"poundbiblepaper",
"lbbible",
"poundtagpaper",
"lbtag",
"poundbagpaper",
"lbbag",
"poundnewsprintpaper",
"lbnewsprint",
"poundposterpaper",
"lbposter",
"poundtissuepaper",
"lbtissue",
"poundwrappingpaper",
"lbwrapping",
"poundwaxingpaper",
"lbwaxing",
"poundglassinepaper",
"lbglassine",
"poundcoverpaper",
"lbcover",
"poundindexpaper",
"lbindex",
"poundindexbristolpaper",
"lbindexbristol",
"poundbondpaper",
"lbbond",
"poundwritingpaper",
"lbwriting",
"poundledgerpaper",
"lbledger",
"poundcopypaper",
"lbcopy",
"poundblottingpaper",
"lbblotting",
"poundblankspaper",
"lbblanks",
"poundpostcardpaper",
"lbpostcard",
"poundweddingbristol",
"lbweddingbristol",
"poundbristolpaper",
"lbbristol",
"poundboxboard",
"lbboxboard",
"poundpaperboard",
"lbpaperboard",
"paperM",
"frenchfoot",
"pied",
"frenchfeet",
"frenchinch",
"frenchthumb",
"pouce",
"frenchline",
"ligne",
"frenchpoint",
"toise",
"arpent",
"fournierpoint",
"olddidotpoint",
"bertholdpoint",
"INpoint",
"germandidotpoint",
"metricpoint",
"point",
"printerspoint",
"texscaledpoint",
"texsp",
"computerpoint",
"computerpica",
"postscriptpoint",
"pspoint",
"Q",
"frenchprinterspoint",
"didotpoint",
"europeanpoint",
"cicero",
"stick",
"excelsior",
"brilliant",
"diamond",
"pearl",
"agate",
"ruby",
"nonpareil",
"mignonette",
"emerald",
"minion",
"brevier",
"bourgeois",
"longprimer",
"smallpica",
"pica",
"english",
"columbian",
"greatprimer",
"paragon",
"meridian",
"canon",
"nonplusultra",
"brillant",
"diamant",
"perl",
"nonpareille",
"kolonel",
"petit",
"borgis",
"korpus",
"corpus",
"garamond",
"mittel",
"tertia",
"text",
"kleine_kanon",
"kanon",
"grosse_kanon",
"missal",
"kleine_sabon",
"grosse_sabon",
"hartley",
"trit",
"nat",
"bps",
"byte",
"nybble",
"nibble",
"kibi",
"mebi",
"gibi",
"tebi",
"pebi",
"exbi",
"Ki",
"Mi",
"Gi",
"Ti",
"Pi",
"Ei",
"jiffy",
"jiffies",
"m",
"woolyarnrun",
"yarncut",
"cottonyarncount",
"linenyarncount",
"worstedyarncount",
"metricyarncount",
"kg",
"tex",
"denier",
"manchesteryarnnumber",
"pli",
"typp",
"asbestoscut",
"drex",
"skeincotton",
"cottonbolt",
"woolbolt",
"bolt",
"heer",
"cut",
"lea",
"mcg",
"iudiptheria",
"iupenicillin",
"iuinsulin",
"drop",
"bloodunit",
"hectare",
"ha",
"megohm",
"kilohm",
"microhm",
"cent",
"cord",
"facecord",
"cordfoot",
"cordfeet",
"rick",
"housecord",
"boardfoot",
"boardfeet",
"fbm",
"stere",
"st",
"timberfoot",
"standard",
"deal",
"wholedeal",
"splitdeal",
"cumec",
"cusec",
"sverdrup",
"gph",
"gpm",
"mgd",
"cf",
"ccf",
"cfs",
"cfh",
"cfm",
"lpm",
"minersinchAZ",
"minersinchCA",
"minersinchMT",
"minersinchNV",
"minersinchOR",
"minersinchID",
"minersinchKS",
"minersinchNE",
"minersinchNM",
"minersinchND",
"minersinchSD",
"minersinchUT",
"minersinchCO",
"minersinchBC",
"sccm",
"sccs",
"scfh",
"scfm",
"slpm",
"slph",
"lusec",
"wire0000gauge",
"wire000gauge",
"wire00gauge",
"wire0gauge",
"wire1gauge",
"wire2gauge",
"wire3gauge",
"wire4gauge",
"wire5gauge",
"wire6gauge",
"wire7gauge",
"wire8gauge",
"wire9gauge",
"wire10gauge",
"wire11gauge",
"wire12gauge",
"wire13gauge",
"wire14gauge",
"wire15gauge",
"wire16gauge",
"wire17gauge",
"wire18gauge",
"wire19gauge",
"wire20gauge",
"wire21gauge",
"wire22gauge",
"wire23gauge",
"wire24gauge",
"wire25gauge",
"wire26gauge",
"wire27gauge",
"wire28gauge",
"wire29gauge",
"wire30gauge",
"wire31gauge",
"wire32gauge",
"wire33gauge",
"wire34gauge",
"wire35gauge",
"wire36gauge",
"wire37gauge",
"wire38gauge",
"wire39gauge",
"wire40gauge",
"wire41gauge",
"wire42gauge",
"wire43gauge",
"wire44gauge",
"wire45gauge",
"wire46gauge",
"wire47gauge",
"wire48gauge",
"wire49gauge",
"wire50gauge",
"wire51gauge",
"wire52gauge",
"wire53gauge",
"wire54gauge",
"wire55gauge",
"wire56gauge",
"brwire0000000gauge",
"brwire000000gauge",
"brwire00000gauge",
"brwire0000gauge",
"brwire000gauge",
"brwire00gauge",
"brwire0gauge",
"brwire1gauge",
"brwire2gauge",
"brwire3gauge",
"brwire4gauge",
"brwire5gauge",
"brwire6gauge",
"brwire7gauge",
"brwire8gauge",
"brwire9gauge",
"brwire10gauge",
"brwire11gauge",
"brwire12gauge",
"brwire13gauge",
"brwire14gauge",
"brwire15gauge",
"brwire16gauge",
"brwire17gauge",
"brwire18gauge",
"brwire19gauge",
"brwire20gauge",
"brwire21gauge",
"brwire22gauge",
"brwire23gauge",
"brwire24gauge",
"brwire25gauge",
"brwire26gauge",
"brwire27gauge",
"brwire28gauge",
"brwire29gauge",
"brwire30gauge",
"brwire31gauge",
"brwire32gauge",
"brwire33gauge",
"brwire34gauge",
"brwire35gauge",
"brwire36gauge",
"brwire37gauge",
"brwire38gauge",
"brwire39gauge",
"brwire40gauge",
"brwire41gauge",
"brwire42gauge",
"brwire43gauge",
"brwire44gauge",
"brwire45gauge",
"brwire46gauge",
"brwire47gauge",
"brwire48gauge",
"brwire49gauge",
"brwire50gauge",
"plate000000gauge",
"plate00000gauge",
"plate0000gauge",
"plate000gauge",
"plate00gauge",
"plate0gauge",
"plate1gauge",
"plate2gauge",
"plate3gauge",
"plate4gauge",
"plate5gauge",
"plate6gauge",
"plate7gauge",
"plate8gauge",
"plate9gauge",
"plate10gauge",
"plate11gauge",
"plate12gauge",
"plate13gauge",
"plate14gauge",
"plate15gauge",
"plate16gauge",
"plate17gauge",
"plate18gauge",
"plate19gauge",
"plate20gauge",
"plate21gauge",
"plate22gauge",
"plate23gauge",
"plate24gauge",
"plate25gauge",
"plate26gauge",
"plate27gauge",
"plate28gauge",
"plate29gauge",
"plate30gauge",
"plate31gauge",
"plate32gauge",
"plate33gauge",
"plate34gauge",
"plate35gauge",
"plate36gauge",
"plate37gauge",
"plate38gauge",
"zinc1gauge",
"zinc2gauge",
"zinc3gauge",
"zinc4gauge",
"zinc5gauge",
"zinc6gauge",
"zinc7gauge",
"zinc8gauge",
"zinc9gauge",
"zinc10gauge",
"zinc11gauge",
"zinc12gauge",
"zinc13gauge",
"zinc14gauge",
"zinc15gauge",
"zinc16gauge",
"zinc17gauge",
"zinc18gauge",
"zinc19gauge",
"zinc20gauge",
"zinc21gauge",
"zinc22gauge",
"zinc23gauge",
"zinc24gauge",
"zinc25gauge",
"zinc26gauge",
"zinc27gauge",
"zinc28gauge",
"size2ring",
"size3ring",
"size3_5ring",
"size4ring",
"size4_5ring",
"size5ring",
"size5_5ring",
"size6ring",
"size6_5ring",
"size7ring",
"size7_5ring",
"size8ring",
"size8_5ring",
"size9ring",
"size9_5ring",
"size10ring",
"size10_5ring",
"size11ring",
"size11_5ring",
"size12ring",
"size12_5ring",
"size13ring",
"size13_5ring",
"sizeAring",
"sizeBring",
"sizeCring",
"sizeDring",
"sizeEring",
"sizeFring",
"sizeGring",
"sizeHring",
"sizeIring",
"sizeJring",
"sizeKring",
"sizeLring",
"sizeMring",
"sizeNring",
"sizeOring",
"sizePring",
"sizeQring",
"sizeRring",
"sizeSring",
"sizeTring",
"sizeUring",
"sizeVring",
"sizeWring",
"sizeXring",
"sizeYring",
"sizeZring",
"jpsize1ring",
"jpsize2ring",
"jpsize3ring",
"jpsize4ring",
"jpsize5ring",
"jpsize6ring",
"jpsize7ring",
"jpsize8ring",
"jpsize9ring",
"jpsize10ring",
"jpsize11ring",
"jpsize12ring",
"jpsize13ring",
"jpsize14ring",
"jpsize15ring",
"jpsize16ring",
"jpsize17ring",
"jpsize18ring",
"jpsize19ring",
"jpsize20ring",
"jpsize21ring",
"jpsize22ring",
"jpsize23ring",
"jpsize24ring",
"jpsize25ring",
"jpsize26ring",
"jpsize27ring",
"jpsize28ring",
"jpsize29ring",
"jpsize30ring",
"eusize1ring",
"eusize2ring",
"eusize3ring",
"eusize4ring",
"eusize5ring",
"eusize6ring",
"eusize7ring",
"eusize8ring",
"eusize9ring",
"eusize10ring",
"eusize11ring",
"eusize12ring",
"eusize13ring",
"eusize14ring",
"eusize15ring",
"eusize16ring",
"eusize17ring",
"eusize18ring",
"eusize19ring",
"eusize20ring",
"eusize21ring",
"eusize22ring",
"eusize23ring",
"eusize24ring",
"eusize25ring",
"eusize26ring",
"eusize27ring",
"eusize28ring",
"eusize29ring",
"eusize30ring",
"mph",
"mpg",
"kph",
"fL",
"fpm",
"fps",
"rpm",
"rps",
"mi",
"mbh",
"mcm",
"becquerel",
"Bq",
"curie",
"Ci",
"rutherford",
"gray",
"Gy",
"rad",
"rep",
"sievert",
"Sv",
"rem",
"roentgen",
"rontgen",
"sievertunit",
"eman",
"mache",
"g",
"actinium",
"aluminum",
"aluminium",
"americium",
"antimony",
"argon",
"arsenic",
"astatine",
"barium",
"berkelium",
"beryllium",
"bismuth",
"boron",
"bromine",
"cadmium",
"calcium",
"californium",
"carbon",
"cerium",
"cesium",
"chlorine",
"chromium",
"cobalt",
"copper",
"curium",
"dysprosium",
"einsteinium",
"erbium",
"europium",
"fermium",
"fluorine",
"francium",
"gadolinium",
"gallium",
"germanium",
"gold",
"hafnium",
"helium",
"holmium",
"hydrogen",
"indium",
"iodine",
"iridium",
"iron",
"krypton",
"lanthanum",
"lawrencium",
"lead",
"lithium",
"lutetium",
"magnesium",
"manganese",
"mendelevium",
"mercury",
"molybdenum",
"neodymium",
"neon",
"neptunium",
"nickel",
"niobium",
"nitrogen",
"nobelium",
"osmium",
"oxygen",
"palladium",
"phosphorus",
"platinum",
"plutonium",
"polonium",
"potassium",
"praseodymium",
"promethium",
"protactinium",
"radium",
"radon",
"rhenium",
"rhodium",
"rubidium",
"ruthenium",
"samarium",
"scandium",
"selenium",
"silicon",
"silver",
"sodium",
"strontium",
"sulfur",
"sulphur",
"tantalum",
"technetium",
"tellurium",
"terbium",
"thallium",
"thorium",
"thullium",
"tin",
"titanium",
"tungsten",
"uranium",
"vanadium",
"xenon",
"ytterbium",
"yttrium",
"zinc",
"zirconium",
"scotsinch",
"scotsell",
"scotsfall",
"scotschain",
"scotslink",
"scotsfoot",
"scotsfeet",
"scotsfurlong",
"scotsmile",
"scotsrood",
"scotsacre",
"irishinch",
"irishpalm",
"irishspan",
"irishfoot",
"irishfeet",
"irishcubit",
"irishyard",
"irishpace",
"irishfathom",
"irishpole",
"irishperch",
"irishchain",
"irishlink",
"irishfurlong",
"irishmile",
"irishrood",
"irishacre",
"beerbarrel",
"keg",
"beerkeg",
"ponykeg",
"case",
"beercase",
"winegallon",
"winequart",
"winepint",
"winerundlet",
"winebarrel",
"winetierce",
"winehogshead",
"winepuncheon",
"winebutt",
"winepipe",
"winetun",
"englishbeergallon",
"englishbeerquart",
"englishbeerpint",
"englishbeerbarrel",
"englishbeerhogshead",
"alegallon",
"alequart",
"alepint",
"alebarrel",
"alehogshead",
"scotsgallon",
"scotsquart",
"scotspint",
"choppin",
"mutchkin",
"scotsgill",
"scotsbarrel",
"scotswheatlippy",
"scotswheatlippies",
"scotswheatpeck",
"scotswheatfirlot",
"scotswheatboll",
"scotswheatchalder",
"scotsoatlippy",
"scotsoatlippies",
"scotsoatpeck",
"scotsoatfirlot",
"scotsoatboll",
"scotsoatchalder",
"tronpound",
"tronounce",
"trondrop",
"tronstone",
"irishgallon",
"irishpottle",
"irishquart",
"irishpint",
"irishnoggin",
"irishrundlet",
"irishbarrel",
"irishtierce",
"irishhogshead",
"irishpuncheon",
"irishpipe",
"irishtun",
"irishpeck",
"irishbushel",
"irishstrike",
"irishdrybarrel",
"irishquarter",
"towerpound",
"towerounce",
"towerpennyweight",
"mercpound",
"mercounce",
"mercpennyweight",
"leadstone",
"fotmal",
"leadwey",
"fothers",
"newhaytruss",
"newhayload",
"oldhaytruss",
"oldhayload",
"woolclove",
"woolstone",
"wooltod",
"woolwey",
"woolsack",
"woolsarpler",
"woollast",
"romanfoot",
"romanfeet",
"pes",
"pedes",
"romaninch",
"romandigit",
"romanpalm",
"romancubit",
"romanpace",
"passus",
"romanperch",
"stade",
"stadia",
"stadium",
"romanmile",
"romanleague",
"schoenus",
"earlyromanfoot",
"pesdrusianus",
"lateromanfoot",
"actuslength",
"actus",
"squareactus",
"acnua",
"iugerum",
"iugera",
"jugerum",
"jugera",
"heredium",
"heredia",
"centuria",
"centurium",
"sextarius",
"sextarii",
"cochlearia",
"cyathi",
"acetabula",
"quartaria",
"quartarius",
"heminae",
"hemina",
"cheonix",
"semodius",
"semodii",
"modius",
"modii",
"congius",
"congii",
"amphora",
"amphorae",
"culleus",
"quadrantal",
"libra",
"librae",
"romanpound",
"uncia",
"unciae",
"romanounce",
"deunx",
"dextans",
"dodrans",
"bes",
"seprunx",
"semis",
"quincunx",
"triens",
"quadrans",
"sextans",
"sescuncia",
"semuncia",
"siscilius",
"sextula",
"semisextula",
"scriptulum",
"scrupula",
"romanobol",
"romanaspound",
"egyptianroyalcubit",
"egyptianpalm",
"epyptiandigit",
"egyptianshortcubit",
"doubleremen",
"remendigit",
"greekfoot",
"greekfeet",
"greekcubit",
"pous",
"podes",
"orguia",
"greekfathom",
"stadion",
"akaina",
"plethron",
"greekfinger",
"homericcubit",
"shortgreekcubit",
"ionicfoot",
"doricfoot",
"olympiccubit",
"olympicfoot",
"olympicfinger",
"olympicfeet",
"olympicdakylos",
"olympicpalm",
"olympicpalestra",
"olympicspithame",
"olympicspan",
"olympicbema",
"olympicpace",
"olympicorguia",
"olympicfathom",
"olympiccord",
"olympicamma",
"olympicplethron",
"olympicstadion",
"greekkotyle",
"xestes",
"khous",
"metretes",
"choinix",
"hekteos",
"medimnos",
"aeginastater",
"aeginadrachmae",
"aeginaobol",
"aeginamina",
"aeginatalent",
"atticstater",
"atticdrachmae",
"atticobol",
"atticmina",
"attictalent",
"northerncubit",
"northernfoot",
"sumeriancubit",
"kus",
"sumerianfoot",
"assyriancubit",
"assyrianfoot",
"assyrianpalm",
"assyriansusi",
"susi",
"persianroyalcubit",
"hashimicubit",
"blackcubit",
"arabicfeet",
"arabicfoot",
"arabicinch",
"arabicmile",
"silverdirhem",
"tradedirhem",
"silverkirat",
"silverwukiyeh",
"silverrotl",
"arabicsilverpound",
"tradekirat",
"tradewukiyeh",
"traderotl",
"arabictradepound",
"parasang",
"biblicalcubit",
"hebrewcubit",
"li",
"liang",
"chomer",
"homer",
"letech",
"ephah",
"seah",
"gomer",
"cab",
"kor",
"bath",
"hin",
"log",
"artaba",
"chenice",
"timepoint",
"timeminute",
"timeostent",
"timeounce",
"timeatom",
"mite",
"droit",
"periot",
"blanc",
"katal",
"kat",
"smoot",
"Richter",
"DMS",
"DMS",
"DM",
"HMS",
"DHMS",
"HMS",
"DHMS"
];

