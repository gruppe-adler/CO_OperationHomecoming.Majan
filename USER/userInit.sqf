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

    private _objects = nearestObjects [[worldSize/2, worldSize/2], ["House"], 5000]; 
    { _x switchLight "OFF"; } forEach _objects;

    private _objects = nearestObjects [[worldSize/2, worldSize/2], ["StreetLamp"], 5000]; 
    { _x switchLight "ON"; } forEach _objects;
};