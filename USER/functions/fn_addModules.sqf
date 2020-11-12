[] spawn { 

    waitUntil {  time > 3 };

    {
  
        _x addEventHandler ["CuratorGroupPlaced", {
            params ["", "_group"];
            ["GRAD_missionControl_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;
        }];

        _x addEventHandler ["CuratorObjectPlaced", {
            params ["", "_object"];

            if (_object isKindOf "CAManBase") then {
                if (count units _object == 1) then {
                    ["GRAD_missionControl_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
                };
            } else {
                if (count crew _object > 1) then {
                    ["GRAD_missionControl_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
                };
            };
        }];

        /*
        _x addEventHandler ["CuratorWaypointPlaced", {
            params ["_curator", "_group", "_waypointID"];

            private _vehicles = [_group, true] call BIS_fnc_groupVehicles;
            if (count _vehicles > 0) then {
                _vehicles params ["_vehicle"];
                if (_vehicle getVariable ["suicideCarInit", false]) then {
                    [_vehicle] remoteExec ["homecoming_fnc_suicideCarCalculatePath", 2];
                };
            };
        }];

        _x addEventHandler ["CuratorWaypointEdited", {
            params ["_curator", "_waypoint"];

            _waypoint params ["_group"];

            private _vehicles = [_group, true] call BIS_fnc_groupVehicles;
            if (count _vehicles > 0) then {
                _vehicles params ["_vehicle"];
                if (_vehicle getVariable ["suicideCarInit", false]) then {
                    [_vehicle] remoteExec ["homecoming_fnc_suicideCarCalculatePath", 2];
                };
            };
        }];

        _x addEventHandler ["CuratorWaypointDeleted", {
            params ["_curator", "_waypoint"];

             _waypoint params ["_group"];

            private _vehicles = [_group, true] call BIS_fnc_groupVehicles;
            if (count _vehicles > 0) then {
                _vehicles params ["_vehicle"];
                if (_vehicle getVariable ["suicideCarInit", false]) then {
                    [_vehicle] remoteExec ["homecoming_fnc_suicideCarCalculatePath", 2];
                };
            };
        }];
        */


    } forEach allCurators;

    ["H O M E C O M I N G - FX", "Suicide Car",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      [_position] remoteExec ["homecoming_fnc_suicideCar", 2];

    }] call zen_custom_modules_fnc_register;


    ["H O M E C O M I N G - DSAI", "DSAI Mute Unit",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      
      (leader _objectUnderCursor) setVariable ["RUG_DSAI_OVERRIDE", 1, true];

    }] call zen_custom_modules_fnc_register;

    ["H O M E C O M I N G - DSAI", "DSAI UnMute Unit",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];


      (leader _objectUnderCursor) setVariable ["RUG_DSAI_OVERRIDE", 0, true];

    }] call zen_custom_modules_fnc_register;



    ["H O M E C O M I N G - SFX", "Arab Song 1",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound19", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;

    ["H O M E C O M I N G - SFX", "Arab Song 2",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound20", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;

    ["H O M E C O M I N G - SFX", "Arab Song 3",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound10", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;

    ["H O M E C O M I N G - SFX", "Arab Song 4",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound11", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;




    ["H O M E C O M I N G - SFX", "Arab Radio Traffic",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound18", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;



    ["H O M E C O M I N G - SFX", "ISIS Speaker Propaganda",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound16", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;




    ["H O M E C O M I N G - SFX", "Prayer",
    {
      // Get all the passed parameters
      params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

      private _source = createSoundSource ["sfxsound14", _position, [], 0];
      [_source, _position] call homecoming_fnc_soundSourceHelper;

    }] call zen_custom_modules_fnc_register;

};