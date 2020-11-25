/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/


RUG_DSAI_SIDES = [ "RUG_DSAIArab", "RUG_DSAIENG", "RUG_DSAIArab", "RUG_DSAIArab", "RUG_DSAIArab" ];
SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [];

private _objects = nearestObjects [[worldSize/2, worldSize/2], ["House"], 5000]; 
{ _x switchLight "OFF"; } forEach _objects;

private _objects = nearestObjects [[worldSize/2, worldSize/2], [ 
    "Land_PowerPoleWooden_L_F",
    "Land_LampShabby_F", 
    "Land_PowerPoleWooden_small_F",  
    "PowerLines_Wires_base_F", 
    "Land_PowerPoleWooden_F"
], 5000];  
{ _x switchLight "ON"; } forEach _objects;

if (isServer) then {
    {
        _x setVariable ["RUG_DSAI_OVERRIDE", 1];
    } forEach (playableUnits + switchableUnits);

    
    [{

        private _group = createVehicleCrew introNissan2;
        _group createUnit ["rhssaf_airforce_pilot_mig29", [0,0,0], [], 0, "CARGO"];
        introNissan2 setVelocityModelSpace [0,3,0.1];
        introNissan2 forceSpeed 80; 
        introNissan2 doMove (getMarkerPos "mrk_intro_path_3");      

        diag_log "should drive";
     
    },[],70] call CBA_fnc_waitAndExecute;

};