
Col globalchat "Olá, Srs! Já estamos sabendo do seu problema. Um helicóptero está a caminho.";
Sleep 4;
Maj globalchat "Fiquem tranquilos, logo estarão fora daqui.";

Sleep 5;

_helo = [getMarkerPos "rescue", 120, "LOP_UN_Mi8MT_Cargo", INDEPENDENT] call BIS_fnc_spawnVehicle;
_heloCrew = createGroup INDEPENDENT; 
{[_x] joinSilent _heloCrew;} forEach crew (_helo select 0);    
_heloWp = _heloCrew addWaypoint [position pad2, 0];
_heloWp setWaypointType "MOVE";
_heloWp setWaypointBehaviour "CARELESS";
_heloWp setWaypointCombatMode "BLUE";
_heloWp setWaypointSpeed "NORMAL";
_heloWp setWaypointStatements ["true", "(vehicle this) LAND 'GET IN';"];

waitUntil {(_helo select 0) distance pad2 <= 600};

(_helo select 0) globalChat "Base UN-01, elemento Grifo aproximando-se. Preparar o pacote.";

playMusic "track2";

waitUntil {isTouchingGround (_helo select 0)};

Sleep 3;

(_helo select 0) globalChat "Grifo no solo. Mandem o pacote.";

Sleep 1;

waitUntil {{_X in crew (_helo select 0)} count (units kaiser) >= {alive _X} count (units kaiser)};

Sleep 4;

(_helo select 0) globalChat "Pacote à bordo. Grifo iniciando decolagem.";

_heloWp = _heloCrew addWaypoint [(getmarkerpos "fim"), 0];
_heloWp setWaypointType "MOVE";
_heloWp setWaypointBehaviour "CARELESS";
_heloWp setWaypointCombatMode "BLUE";
_heloWp setWaypointSpeed "FULL";

Sleep 15;

["MISSÃO CUMPRIDA",True] call BIS_fnc_endMission;

