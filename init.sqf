[] execVM "VCOMAI\init.sqf";

[] execVM "aegis\fleeciv.sqf";

[] execVM "aegis\briefing.sqf";


"Obj2" setMarkerAlpha 0;

call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf"
call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";
