_unit = _this select 0;

if (!firstspawn) exitWith {firstspawn = true;};

if (!local _unit) exitWith {};

(_this select 1) setVariable ["ACE_CanSwitchUnits", true];
