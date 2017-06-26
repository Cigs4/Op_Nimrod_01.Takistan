/*
 * This file contains parameters to config and function call to start an instance of
 * traffic in the mission. The file is edited by the mission developer.
 *
 * See file Engima\Traffic\Documentation.txt for documentation and a full reference of
 * how to customize and use Engima's Traffic.
 */

 private ["_parameters"];

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", ["LOP_TAK_Civ_Hatchback","LOP_Tak_Civ_Man_04","LOP_TAK_Civ_Landrover","LOP_TAK_Civ_Offroad","LOP_TAK_Civ_UAZ","LOP_Tak_Civ_Man_02","LOP_TAK_Civ_UAZ_Open","LOP_Tak_Civ_Man_02","LOP_TAK_Civ_Ural","LOP_TAK_Civ_Ural_open"]],
	["VEHICLES_COUNT", 10],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1200],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["DEBUG", true]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;
