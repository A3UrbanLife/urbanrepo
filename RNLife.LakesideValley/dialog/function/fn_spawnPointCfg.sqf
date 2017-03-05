/*
	File: fn_spawnPointCfg.sqf
	
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = param [0,civilian,[civilian]];

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Lakeside SO","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Morrison SO","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Diablos SO","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_5","Prison","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};

	case east:
	{

		if(!license_civ_rebel) then {
			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristo","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};

		if(license_civ_rebel && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Air","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Crist","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		if(license_civ_rebel && (rebelshipment getVariable["progress",FALSE]) || license_civ_rebel && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Air","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Crist0","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
	};
	

	
	case civilian:
	{

		if(!license_civ_rebel) then {
			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristo","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};

		if(license_civ_rebel && !(rebelshipment getVariable["progress",FALSE]) && !(rebelshipment getVariable["notCaptured",FALSE]) ) then {

			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Air","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristo","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
		if(license_civ_rebel && (rebelshipment getVariable["progress",FALSE]) || license_civ_rebel && (rebelshipment getVariable["notCaptured",FALSE])) then {

			_return = [
				["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_1","LD Air","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["ld_spawn_2","LD Hos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Knoxville","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Bedford","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","San Cristo","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];


			
			if(count life_houses > 0) then {
				{
					_pos = call compile format["%1",_x select 0];
					_house = nearestBuilding _pos;
					_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
					
					_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
				} foreach life_houses;
			};	
		};
	};
	
	case independent: {
		_return = [
			["medic_spawn_2","Lakeside Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","Lakeside S&R","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],			
			["medic_spawn_3","Diablos Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1","Morrison Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
