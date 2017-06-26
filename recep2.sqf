[vip,"STAND_U1","ASIS"] call BIS_fnc_ambientAnim;
Sleep 15;
V1 call BIS_fnc_ambientAnim__terminate; 
vip call BIS_fnc_ambientAnim__terminate; 
V1 doMove (getmarkerpos "markvip"); 
vip doMove (getmarkerpos "markvip");
V1 forceWalk true; 
vip forceWalk true;
Sleep 300;
deletevehicle V1; 
deletevehicle vip;
deletevehicle g1;

Sleep 1;

if(true) exitWith{};