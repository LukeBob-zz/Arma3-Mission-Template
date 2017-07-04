/*
    filename: @CfgFunctions.hpp
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
    Can be used as template for any mission.
    
    class name can be anything.
    tag name is important.
    
    call or spawn with [] call\spawn MYTAG_fnc_MYFUNCTION;
    
    "MYTAG" being your tag
    and MYFUNCTION the name you defined the function in CfgFunction.hpp.
    
    example below would be [object, "my animation"] call BOB_fnc_myFirstFunction;
   
*/

class Luke
{
	tag = "BOB";
	class functions
	{
		file = "functions";
		class myFirstFunction {};
		
	};
};
