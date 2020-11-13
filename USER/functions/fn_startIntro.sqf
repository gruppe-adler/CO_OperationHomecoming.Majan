cutText ["", "BLACK IN", 15];
3 fadeSound 1;
private _musicVolumeCache = musicVolume;
0 fadeMusic 1;

private _camera = "camera" camCreate (getPos introPos_1);

showCinemaBorder true;

playMusic "Track_O_04";


_camera cameraEffect ["internal", "BACK"];
_camera camCommand "inertia on";
_camera camSetPos (getPos introPos_1);
_camera camSetTarget introTargetSky;
_camera camSetFOV 0.35;
_camera camCommit 0;

_camera camSetPos (getPos introPos_2);
_camera camSetTarget intro_txt_1;
_camera camCommit 10;
sleep 10;

_camera camSetPos (getPos introPos_3);
_camera camSetTarget intro_txt_2;
_camera camCommit 10;
sleep 10;

_camera camSetPos (getPos introPos_4);
_camera camSetTarget intro_txt_3;
_camera camSetFOV 0.25;
_camera camCommit 10;
sleep 10;

_camera camSetPos (getPos introPos_5);
_camera camSetTarget introPlane;
_camera camCommit 10;

sleep 10;

intro_txt_1 hideObject true;
intro_txt_2 hideObject true;
intro_txt_3 hideObject true;

_camera camSetTarget introPilot;
_camera camCommit 10;
sleep 10;  

_camera camSetPos (getPos introPos_6);
_camera camSetFOV 0.4;
_camera camCommit 10;

sleep 15;
cutText ["", "BLACK OUT", 5];
sleep 5;
_camera camSetPos (getPos introPos_7);
_camera camSetTarget introNissan2;
_camera camCommit 0;
cutText ["", "BLACK IN", 5];
sleep 5;

_camera camSetPos (getPos introPos_8);
_camera camCommit 10;
sleep 15;  

cutText ["", "BLACK OUT", 5];
sleep 5;

_camera cameraEffect ["terminate","back"];
camDestroy _camera;
cutText ["", "BLACK FADED", 5];
sleep 5;

cutText ["", "BLACK IN", 5];

sleep 5;

diwako_dui_main_toggled_off = false;
1 fadeMusic _musicVolumeCache;


