#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Cop Shop"];


_ret = [];
switch (_filter) do
{
	case 0: 
	{
		_ret =
		[
			["A3L_EC_SOSHERIFF","Sheriff Uniform",15],
			["A3L_EC_SODS","Under Sheriff Uniform",15],
			["A3L_EC_SOMAJ","Major Uniform",15],
			["A3L_EC_SOCPT","Captain Uniform",15],
			["A3L_EC_SOLT","Lieutenant Uniform",15],
			["A3L_EC_SOSGT","Sergeant Uniform",15],
			["A3L_EC_SOCPL","Corporal Uniform",15],
			["A3L_EC_SOCPL","Sen. Deputy Uniform",15],
			["A3L_EC_SOOFC","Deputy Uniform",15],
			["A3L_EC_CCPT","DOC Warden Uniform",15],
			["A3L_EC_CCPT","DOC Asst. Warden Uniform",15],
			["A3L_EC_CCPT","DOC Captain Uniform",15],
			["A3L_EC_CLT","DOC Lieutenant Uniform",15],
			["A3L_EC_CSGT","DOC Sergeant Uniform",15],
			["A3L_EC_CCPL","DOC Corporal Uniform",15],
			["A3L_EC_CCPL","DOC Sen. Deputy Uniform",15],
			["A3L_EC_COFC","DOC Deputy Uniform",15],
			["KAEL_SUITS_BR_Judge",nil,15]
		];
	};

	case 1:
	{
		_ret =
		[
			["Campaign_Hat_Dark",nil,5],
			["Campaign_Hat_Light",nil,5],
			["Campaign_Hat_Tan",nil,5],
			["TRYK_H_PASGT_BLK","S.E.R.T Helmet",5]
		];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,50],
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Aviator",nil,7],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,5],
			["G_Balaclava_combat",nil,5],
			["G_Balaclava_lowprofile",nil,5],
			["G_Bandanna_oli",nil,5],
			["G_Bandanna_blk",nil,5],
			["A3L_Balaclava",nil,6],
			["TRYK_SPGEAR_Glasses","Negotiator Glasses",6],
			["Mask_M40","Gas Mask",5]	
		];
	};

	case 3:
	{
		_ret =
		[
			["DOC_Vest_Threat_Fix",nil,20],
			["DOC_Vest_Threat_Tan_Fix",nil,20],
			["kaelvest_sert2_Fix",nil,20],
			["highthreatvestblack_Fix","Sheriff Black High Threat",20],
			["highthreatvesttan_Fix","Sheriff Tan High Threat",20],
			["SCommand_Vest","Sheriff Command",20],
			["TRYK_V_Bulletproof","Ride Along Vest",15]
		];
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Police Utility Belt",80]
		];
	};
};

_ret;
