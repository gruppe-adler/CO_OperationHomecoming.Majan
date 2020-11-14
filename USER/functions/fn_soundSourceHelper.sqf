params ["_source", "_position"];

private _posFinal = _position;

if (_position isEqualType "OBJECT") then {
    _posFinal = getPosATL _position;
};

private _helper = "Sign_Sphere25cm_Geometry_F" createVehicle _posFinal;
_helper setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,ca)"];
_helper setVariable ["soundSource", _source, true];

{
_x addCuratorEditableObjects [[_helper], false];
} forEach allCurators;

_helper addEventHandler ["Deleted", {
  params ["_entity"];
  deleteVehicle (_entity getVariable ["soundSource", objNull]);
}];


if (_position isEqualType "OBJECT") then {
    _helper attachTo [_position, [0,0,0]];
};

_helper