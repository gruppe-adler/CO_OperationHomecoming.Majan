[{
    isNull abuserPisser
},{
        
    if (isServer) then {

        private _playerStandIn = objNull;

        {
           if (typeOf _x == "B_Medic_F") then {
                _playerStandIn = _x;
           };
        } forEach allPlayers; 

        if (isNull _playerStandIn) then {
            _playerStandIn = selectRandom allPlayers;
        };



        _playerStandIn setPos (abuserPilot getPos [1, 0]);
        _playerStandIn setDir ((_playerStandIn getRelDir abuserPilot) + 90);

        [_playerStandIn, "UnconsciousReviveMedic_A"] remoteExec ["switchMove"];
        [abuserPilot, "Acts_LyingWounded_loop3"] remoteExec ["switchMove"];

        _playerStandIn addEventHandler ["AnimDone", {
            params ["_entity", "_anim"];

            if (missionNamespace setVariable ["cutsceneDone", false]) exitWith {
                _entity removeAllEventHandlers "AnimDone";
                [_playerStandIn, ""] remoteExec ["switchMove"];
            };

            [_playerStandIn, "UnconsciousReviveMedic_A"] remoteExec ["switchMove"];
        }];

        abuserPilot addEventHandler ["AnimDone", {
            params ["_entity", "_anim"];

            if (missionNamespace setVariable ["cutsceneDone", false]) exitWith {
                _entity removeAllEventHandlers "AnimDone";
                [abuserPilot, ""] remoteExec ["switchMove"];
            };

            [abuserPilot, "Acts_LyingWounded_loop3"] remoteExec ["switchMove"];
        }];

        
        // time skipping
        setTimeMultiplier 120;

        [{
            date select 3 >= 20
        }, {
            setTimeMultiplier 1;
        }] call CBA_fnc_waitUntilAndExecute;


    };


    sleep 2;

    cutText ["", "BLACK IN", 3];

    private _position = (getPos cutsceneHelper_3);
    _position set [2,3];

    _camera camSetPos _position;
    _camera camSetTarget abuserPilot;
    _camera camSetFOV 0.6;
    _camera camCommit 0;

    _camera camSetPos (getPos cutsceneHelper_1);
    _camera camSetTarget abuserPilot;
    _camera camSetFOV 0.5;
    _camera camCommit 25;
    sleep 6;


    cutText ["", "BLACK OUT", 1];
    sleep 2;

    if (isServer && date select 3 < 20) then {
        skipTime 3;
    };

    sleep 2;

    cutText ["", "BLACK IN", 1];

    sleep 6;

    cutText ["", "BLACK OUT", 1];
    sleep 2;

    if (isServer && date select 3 < 20) then {
        skipTime 3;
    };

    sleep 2;

    cutText ["", "BLACK IN", 1];

    sleep 6;

    cutText ["", "BLACK OUT", 1];
    sleep 2;

    if (isServer && date select 3 < 20) then {
        skipTime 3;
    };

    sleep 2;

    cutText ["", "BLACK IN", 1];

    sleep 6;

    cutText ["", "BLACK OUT", 1];
    sleep 2;

    if (isServer && date select 3 < 20) then {
        skipTime 3;
    };

    sleep 2;

    cutText ["", "BLACK IN", 1];

    sleep 6;


    missionNamespace setVariable ["cutsceneDone", true, true];


    [
        [
            ["Pilot stabilized and out of danger. Return to Base!", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 15]
        ]
    ] spawn BIS_fnc_typeText;

}, []] call CBA_fnc_waitUntilAndExecute;



cutText ["", "BLACK IN", 1];
3 fadeSound 1;
private _musicVolumeCache = musicVolume;
0 fadeMusic 1;
diwako_dui_main_toggled_off = true;



if (isNull abuserPilot) exitWith {
    cutText ["", "BLACK IN", 5];
    sleep 5;
    diwako_dui_main_toggled_off = false;
    1 fadeMusic _musicVolumeCache;

    player action ['WeaponOnBack', player];
};

private _position = (getPos cutsceneHelper_2);
_position set [2,3];
private _camera = "camera" camCreate _position;


showCinemaBorder true;

playMusic "CUP_A2OA_Night_Visions";

_camera cameraEffect ["internal", "BACK"];
_camera camCommand "inertia on";
_camera camSetPos _position;
_camera camSetTarget abuserPisser;
_camera camSetFOV 0.6;
_camera camCommit 0;

sleep 10;

cutText ["", "BLACK OUT", 5];
sleep 7;

if (isServer) then {
    deleteVehicle abuserPisser;
};