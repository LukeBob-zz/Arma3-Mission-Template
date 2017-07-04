/*
    filename: @init.sqf
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
    Can be used as template for any mission.    
    runs on both client and server.
    
    Depricated Use only until everything partitioned between client and server.
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

