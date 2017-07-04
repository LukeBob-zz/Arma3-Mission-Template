/*
    filename: @initServer.sqf               
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
	  Can be used as template for any mission.    
    runs on server only.
*/

//------------------- Paramiters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//------------------- Misc
enableEnvironment FALSE;                // Enable/disable environmental effects: ambient life and/or ambient sound.
//adminCurators = allCurators;          // uncomment if using zeus module.

//------------------- Server Executions

// _null = [] execVM "mylocalscript.sqf";                                // example execution of ServerSide sqf.
// _null = [] execVM "myLocalscript.sqs";                                // example execution of ServerSide sqs.
// _null = [] execFSM "myLocalFsm.fsm";                                  // example execution of ServerSide fsm.
