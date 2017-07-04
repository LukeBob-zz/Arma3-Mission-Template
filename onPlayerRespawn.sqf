/*
    filename: @onPlayerRespawn.sqf
    Author: Luke(DOD)
    coded for invade and annex tanoa (DOD).
    Can be used as template for any mission.
    Executed by player on respawn.
*/

//------------------ Loadout Reload

removeAllWeapons player;
removeGoggles player;
removeHeadgear player;
removeVest player;
removeUniform player;
removeAllAssignedItems player;
clearAllItemsFromBackpack player;
removeBackpack player;
player setUnitLoadout(player getVariable["Saved_Loadout",[]]);
