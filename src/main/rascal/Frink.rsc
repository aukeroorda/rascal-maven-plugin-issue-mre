module Frink

import FrinkRascalUnits; // This provides frink_units

list[str] fahrenheit_units = ["f", "fahrenheit"];
list[str] celsius_units = ["c", "celsius"];
list[str] kelvin_units = ["k", "kelvin"];

bool is_frink_unit(str unit)
{
	// FrinkLang's units.txt contains definitions for irregular plurals, but not for regular ones.
	// We assume FinkLang checks whether the final character is an "s", and in case it is
	// it compares the unit without the "s" suffix as well with the units.txt. An example:
	// FrinkLang's specification contains both "century" and the irregular plural "centuries":
	//
	//	century
	//	centuries
	//
	// Now if we give as input the "double plural" of century, "centuriess", FrinkLang parses this
	// without problems:
	//
	//		frink_parse("1 centuriess -\> year");
	//		str: "99.999999999999999999"
	if (unit[-1] == "s")
	{
		// This can be a plural, so we also test whether this unit without the "s" suffix is present
		str possibly_singular = unit[..-1];
		if (unit in frink_units || possibly_singular in frink_units)
		{
			return true;
		}
	}
	else if (unit in frink_units)
	{
		return true;
	}
	return false;
}