/*
    filename: @initPlayerLocal.sqf
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
    Can be used as template for any mission.
*/

//-------------- Dynamic grouping system

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

//-------------- Paramiters

for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//-------------- Misc

//{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;    // for use with zeus module. uncomment if using zeus.
enableSentences FALSE;															                     // Enables radio transmissions to be heard and seen on screen. It does not affect KBTell conversations.
enableSaving [FALSE,FALSE];                                              // Enables\Disables saving locally
missionNamespace setVariable ['Ares_Allow_Zeus_To_Execute_Code',false];  // more info : https://github.com/oOKexOo/AresModAchillesExpansion/wiki/Execute-Code
enableEngineArtillery true;                                              // enables Arty Computer for everyone.                                  
player setCustomAimCoef 0.4;                                             // Weapon sway.
player enablestamina false;                                              // Enable\Disable Stamina.

//----------------- Player Variables

// player setVariable ["myNewVariable", true];                           // example setting a new variable "myNewVariable" to true on player object.

//----------------- Client Executions

// _null = [] execVM "mylocalscript.sqf";                                // example execution of local sqf.
// _null = [] execVM "myLocalscript.sqs";                                // example execution of local sqs.
// _null = [] execFSM "myLocalFsm.fsm";                                  // example execution of local fsm.




