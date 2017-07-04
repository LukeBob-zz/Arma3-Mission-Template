/*
    filename: @functions\fn_myFirstFunction.sqf
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
   spawn with [object, "animation"] spawn BOB_fnc_myFirstFucntion;
*/

private ["_unit","_anim"];
_unit = _this select 0;
_anim = _this select 1;
_unit playMoveNow _anim;
