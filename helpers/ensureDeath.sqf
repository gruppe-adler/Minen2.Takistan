// 1-1 --1-4; 2-1 -- 2-4; 3-1 und 5-1

_unit = _this select 0;

ensureDeath = {
	_victim = _this select 0;
	_dmg = _this select 2;

	if (_dmg > 0.8) then {
 		_victim setDamage 1;
 		_victim removeAllEventHandlers "HandleDamage";
	};
};

_unit addEventHandler ["HandleDamage", {_this call ensureDeath}];