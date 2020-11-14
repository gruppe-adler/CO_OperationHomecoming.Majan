params ["_unit", "_abuser"];

[_unit,"Acts_CivilInjuredHead_1"] remoteExecCall ['switchMove'];

_unit addEventHandler ["animDone", {
    params ["_entity", "_anim"];
    
    _entity playMoveNow _anim; 
}];

[{
    params ["_unit", "_abuser"];
    (_abuser getVariable ["pissing_interrupted", false])
},
{
    params ["_unit", "_abuser"];
    _unit removeAllEventHandlers "AnimDone";
    [_unit,"AinjPpneMstpSnonWnonDnon"] remoteExecCall ['switchMove'];

}, [_unit, _abuser]] call CBA_fnc_waitUntilAndExecute;


[_abuser] spawn {
    params ["_abuser"];

    _abuser playMove "Acts_AidlPercMstpSlowWrflDnon_pissing" ;
   

    for "_i" from 1 to 8 do {
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        };
        sleep 0.5;
    };

    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {};

    private _source = createSoundSource ["piss", position _abuser, [], 0];
    private _helper = [_source, position _abuser] call homecoming_fnc_soundSourceHelper;

    private _dir = getDir _abuser;

    
    _stream = "#particlesource" createVehicleLocal [0,0,0];
    _stream setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];

    _stream setDropInterval 0.001;

    _stream attachTo [_abuser,[0.1,0.15,-0.10],"Pelvis"];

    for "_i" from 0 to 1 step 0.01 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
            };
        };
    };

    for "_i" from 1 to 8 do {
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
            };
        };
        sleep 0.5;
    };

    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    
    for "_i" from 1 to 0.4 step -0.01 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
       if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };

    for "_i" from 0.4 to 0.8 step 0.02 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    
    for "_i" from 0.8 to 0.2 step -0.01 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    
    for "_i" from 0.2 to 0.3 step 0.02 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    
    for "_i" from 0.3 to 0.1 step -0.01 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    
    for "_i" from 0.1 to 0 step -0.01 do {
        _stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,_i],[0.8,0.7,0.2,_i],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
        sleep 0.02;
        if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };
    if (_abuser getVariable ["pissing_interrupted", false]) exitWith {
        if (!isNull _stream) then {
            deleteVehicle _stream;
            deleteVehicle _helper;
        };
    };

    if (!isNull _stream) then {
        deleteVehicle _stream;
        deleteVehicle _helper;
    };
    
};

_abuser addEventHandler ["Hit", {
    params ["_unit"];

    _unit setVariable ["pissing_interrupted", true];
    [_unit, "Acts_Stunned_Unconscious"] remoteExec ["switchMove"];

    [[_unit], "user\functions\fn_cutScene.sqf"] remoteExec ["BIS_fnc_execVM"];

    _unit addEventHandler ["AnimDone", {
        params ["_unit"];

        _unit setDamage 1;
    }];
}];