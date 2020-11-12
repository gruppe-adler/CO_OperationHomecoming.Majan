/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/


RUG_DSAI_SIDES = [ "UNDEFINED", "UNDEFINED", "RUG_DSAIArab", "RUG_DSAIArab", "UNDEFINED" ];
SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [];

if (isServer) then {
    {
        _x setVariable ["RUG_DSAI_OVERRIDE", 1];
    } forEach (playableUnits + switchableUnits);
};