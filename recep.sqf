waitUntil {speed car1 == 0 OR speed car1 == 0 OR speed vehicle vip == 0};
g1 switchMove "";
Sleep 1;
g1 forceWalk true;
g1 doMove (getmarkerpos "markvip");
Sleep 3;
[vip] joinSilent grpNull;
vip leaveVehicle car1;
vip setBehaviour "SAFE";
vip forcewalk true;
vip sideChat "Gracias, Srs!";
vip doMove (getmarkerpos "mkrTalk");
Sleep 1;
[S4]joinSilent grpNull;
Sleep 2;
[S4]joinSilent Kaiser;

Sleep 1;

if(true) exitWith{};
