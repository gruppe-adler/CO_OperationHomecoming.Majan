params ["_object", ["_effect", "small"], ["_instant", false]];

private _particleClass = ["ObjectDestructionSmokeSmallx", "ObjectDestructionSmoke1_2Smallx"];

switch (_effect) do { 
    case "small" : {  _particleClass = ["ObjectDestructionSmokeSmallx", "ObjectDestructionSmoke1_2Smallx"]; }; // longish
    case "small2": { _particleClass = ["SmallDestructionSmoke", "none"]; };
    case "wreck" : { _particleClass = ["SmallWreckSmoke", "none"]; }; // very small
    // case "WreckSmokeSmall" : { _particleClass = ["WreckSmokeSmall", "none"]; }; // does not work
    case "medium" : {  _particleClass = ["ObjectDestructionSmoke", "ObjectDestructionSmoke1_2"]; };
    // case "medium2" : { _particleClass = ["SmokeMed", "none"]; }; // does not work
    // case "big" : { _particleClass = ["SmokeBig", "none"]; }; // does not work
    case "BigDestructionSmoke" : { _particleClass = ["BigDestructionSmoke", "none"]; }; // very nice
    case "fuel" : {  _particleClass = ["ObjectDestructionSmokeFuelS", "ObjectDestructionSmokeFuelS1_2"]; };
    // case "smoke2" : {  _particleClass = ["ObjectDestructionSmoke2", "ObjectDestructionSmoke2x"]; }; // doesnt work 
    case "fire1" : {  _particleClass = ["ObjectDestructionFire1", "ObjectDestructionFire1Smallx"]; };
    case "fire2" : {  _particleClass = ["ObjectDestructionFire2", "ObjectDestructionFire2Smallx"]; };
    case "shards_burning" : { _particleClass = ["ObjectDestructionShardsBurning1", "ObjectDestructionShardsBurning1"]; };
    // case "vehExpSmoke" : { _particleClass = ["VehExpSmoke", "none"]; }; // only works instant
    case "vehExpSmokeSmall" : { _particleClass = ["vehExpSmokeSmall", "none"]; };
    case "vehExpSmoke2" : { _particleClass = ["VehExpSmoke", "none"]; };
    case "vehExpSmoke2small" : { _particleClass = ["vehExpSmoke2small", "none"]; };
    default {  /*...code...*/ }; 
};

private _effects = [];
_particleClass params ["_big", "_small"];

private _pos01 = getPos _object;

_source02 = "#particlesource" createVehicleLocal _pos01;
_source02 setParticleClass _big;
_source02 attachto [_object,[0,0,0]];
_effects pushBackUnique _source02;

if (_small != "none") then {
    _source05 = "#particlesource" createVehicleLocal _pos01;
    _source05 setParticleClass _small;
    _source05 attachto [_object,[0,0,0]];
    _effects pushBackUnique _source05;
};

_li = "#lightpoint" createVehicleLocal _pos01;
_li setLightBrightness 0.08;
_li setLightAmbient [1,0.28,0.05];
_li setLightColor [1,0.28,0.05];
_li lightAttachObject [_object, [0,0,0]];
_effects pushBackUnique _li;

_object setVariable ["effects",_effects];

_object addEventHandler ["Deleted", {
    params ["_entity"];

    {
        deleteVehicle _x;
    } forEach (_entity getVariable ["effects", []]);
}];

if (_instant) then {

    [{
        params ["_object"];
        {
            deleteVehicle _x;
        } forEach (_object getVariable ["effects", []]);
    
    }, [_object], 0.5] call CBA_fnc_waitAndExecute;
};

diag_log format ["created smoke %1", _effect];