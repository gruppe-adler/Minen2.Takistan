blufor_uniform = [
	"rhs_chdkz_uniform_5",
	"rhs_chdkz_uniform_4",
	"rhs_chdkz_uniform_3",
	"rhs_chdkz_uniform_2",
	"rhs_chdkz_uniform_1"
];



blufor_random_helmet = [
	"H_ShemagOpen_khk",
	"H_ShemagOpen_tan",
	"H_Shemag_olive"
];

_addItemsToUniform = {
    _unit = _this select 0;
    _class = _this select 1;
    _amount = _this select 2;
    for "_i" from 1 to _amount do {
        _unit addItemToUniform _class;
    };
};

_addMagazinesToVest = {
    _unit = _this select 0;
    _class = _this select 1;
    _amount = _this select 2;
    for "_i" from 1 to _amount do {
        _unit addItemToVest _class;
    };
};

_addMagazinesToBackpack = {
    _unit = _this select 0;
    _class = _this select 1;
    _amount = _this select 2;
    for "_i" from 1 to _amount do {
        _unit addItemToBackpack _class;
    };
};
	


blufor_random_primaryweapon = [
	"rhs_weap_akm"
];

set_akm_ammo = {
	this = _this select 0;
	[this, "rhs_30Rnd_762x39mm", 5] call _addMagazinesToVest; // 5 (1 in der waffe)
	[this, "rhs_30Rnd_762x39mm_tracer", 5] call _addMagazinesToVest; // 3
};

_taliBeard = [
"TRYK_Beard_BK","TRYK_Beard_BK","TRYK_Beard_BK","TRYK_Beard_BK",
"TRYK_Beard_BK2","TRYK_Beard_BK2","TRYK_Beard_BK2","TRYK_Beard_BK2",
"TRYK_Beard_BK3","TRYK_Beard_BK3","TRYK_Beard_BK3","TRYK_Beard_BK3",
"TRYK_Beard_BK4","TRYK_Beard_BK4","TRYK_Beard_BK4","TRYK_Beard_BK4",
"TRYK_Beard_Gr",
"TRYK_Beard_Gr2",
"TRYK_Beard_Gr3",
"TRYK_Beard_Gr4"
] call BIS_fnc_selectRandom;

blufor_basic = {
	this = _this select 0;

	[this, "ACE_Earplugs", 1] call _addItemsToUniform;
	[this, "ACE_fieldDressing", 6] call _addItemsToUniform;
	[this, "ACE_Morphine", 2] call _addItemsToUniform;
	[this, "ACE_epinephrine", 1] call _addItemsToUniform;

	[this, "ACE_Flashlight_KSF1", 1] call _addItemsToUniform;
	[this, "ACE_key_west", 1] call _addItemsToUniform;
	[this, "ACE_MapTools", 1] call _addItemsToUniform;
	[this, "Chemlight_blue", 2] call _addItemsToUniform;
	

	[this, "rhsusf_mag_17Rnd_9x19_JHP", 3] call _addItemsToUniform;

	this addPrimaryWeaponItem "acc_flashlight";
	this addWeapon "rhsusf_weap_glock17g4";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc148jem";
};

blufor_AT = {
	
	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";
	
	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc_iar";
	if (random 2 > 0.5) then {
		this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	};
	this addBackpack "B_Carryall_khk";

	[this] call set_akm_ammo;

	[this, "SmokeShell", 2] call _addMagazinesToVest;
	[this, "SmokeShellRed", 2] call _addMagazinesToVest;
	[this, "HandGrenade", 1] call _addMagazinesToVest;

	this addGoggles _taliBeard;

	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addWeapon "rhs_weap_rpg7";
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";
	sleep 0.5;
	this addItemToBackpack "rhs_rpg7_PG7VL_mag";

	

};
	
	this = _this select 0;

	comment "Remove existing items";
	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;

	comment "Add containers";
	
	this forceAddUniform (blufor_uniform call BIS_fnc_selectRandom);
	this addVest "rhsusf_spc";
	if (random 2 > 0.5) then {
		this addHeadgear (blufor_random_helmet call BIS_fnc_selectRandom);
	};
	this addBackpack "rhs_sidor";
	
	[this] call set_akm_ammo;
	[this, "SmokeShell", 1] call _addMagazinesToVest;
	[this, "SmokeShellRed", 1] call _addMagazinesToVest;
	[this, "HandGrenade", 2] call _addMagazinesToVest;

	
	this addGoggles _taliBeard;

	this addWeapon "Binocular";
	this addWeapon (blufor_random_primaryweapon call BIS_fnc_selectRandom);
	this addPrimaryWeaponItem "optic_Aco";



	
	if ((random 4) > 3) then {
		[this] call blufor_AT;
	} else {
		[this] call blufor_basic;
	};

