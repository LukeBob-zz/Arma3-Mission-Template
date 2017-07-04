/*
    filename: @onPlayerKilled.sqf
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
    Can be used as template for any mission. 
    Executes on player's Death.
*/

//------------- Save loadout

player setVariable["saved_Loadout",getUnitLoadout player];
