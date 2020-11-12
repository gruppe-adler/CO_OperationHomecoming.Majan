params ["_source", "_position"];

private _helper = "Sign_Sphere25cm_Geometry_F" createVehicle _position;
_helper setObjectTextureGlobal [0,"#(argb,8,8,3)color(0,0,0,0,ca)"];
_helper setVariable ["soundSource", _source, true];

{
_x addCuratorEditableObjects [[_helper], false];
} forEach allCurators;

_helper addEventHandler ["Deleted", {
  params ["_entity"];
  deleteVehicle (_entity getVariable ["soundSource", objNull]);
}];