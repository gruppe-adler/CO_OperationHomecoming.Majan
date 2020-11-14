/*


l1 = name of unit (use "" for markers and when you on a  multiplayer session only want to set the fog around the player: run the script once! with 'Player' (not 'this' and not 'name of the unit/object'!!!), example: null=[Player,200,10,... )
If the unit/building was destroyed/died or the marker was deleted, the script will exit automatically!
100 = Maximumdistance
11 = Minimumdistance
10 = Count of clouds
3 = Minimumsize of clouds
7 = Maximumsize of clouds
-0.3 = Height of clouds (must be a bit below the ground to look realistic)
0.1 = Respawntime of clouds
0.5 = Transparency
1,1,1 = Color of clouds
13 = Remove-speed of clouds
12 = Minimumlifetime of clouds
15 = Maximumlifetime of clouds
true = The fog will be effected by wind (for no wind effect: false)
2 = Windstrength (acts only when the wind effect is 'true')
2.1 = Random-direction-period(in seconds) (acts only when the wind effect is 'true')
0.1 = Random-direction-intensity (acts only when the wind effect is 'true')
4,6,0 = Move-direction-speed (x,y,z) - same effect as wind, but constant and adjustable(acts only when the wind effect is 'false')
3.5 = Stardaytime (the fog will spawn when the ingametime is 03:30)
17.5 = Enddaytime (the fog will spawn when the ingametime is 17:30)
RandomDirectionPeriod 2.1 with RandomDirectionIntensity 0.1 means that 0.1 will be added to the direction-speed (x,y,z-randomized) of a moving-cloud every 2.1 seconds.

*/

[player, 250, 10, 50, 3, 7, -0.5, 0.1, 0.1, 1,1,1, 13, 15, false, 0, 0, 0, 0, 0.1, 0, 20, 4] execFSM "user\functions\fn_fogFSM.sqf";
[l1,     100, 11, 10, 3, 7, -0.3, 0.1, 0.5, 1,1,1,13,12,15,true, 2, 2.1, 0.1,4,6,0,3.5,17.5] execFSM "Fog.fsm";