/*
    filename: @init.sqf
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
	  Can be used as template for any mission.
*/

//-------------- Dynamic Group system

["Initialize"] call BIS_fnc_dynamicGroups;

//-------------- Peramiters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {  
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};


//---------------- Animation. spawned with [object, "animation"] spawn BOB_fnc_switchMove;
BOB_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;
    
    _object switchMove _anim;
};
