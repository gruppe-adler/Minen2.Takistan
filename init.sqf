execVM "briefing.sqf";


if (isServer) then {
while {count keywords < 10} do {
    _newWordIdx = floor random 100;
    if (!(keywords find _newWordIdx)) then {
        keywords = keywords + [_newWordIdx];
    };
};
publicVariable "keywords";

TRAITOR_FOUND0 = false;
TRAITOR_FOUND1 = false;
SPY_FOUND = false
private ["Traitor0"]
private ["Traitor1"]
private ["Spy"]
while {!TRAITOR_FOUND0} do {{
        Traitor0 = ["SCH1", "SCH0", "GL0", "GL1", "MG0", "MG1", "Medic0", "Medic1", "ING0", "ING1", "ING2", "ING3", "ING4", "ING5"] call BIS_fnc_selectRandom;
        if (str _x == Traitor0) exitWith {
            TRAITOR_FOUND0 = true;
            [[[Traitor0],"helpers\briefing_traitor.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
        };
    } forEach allPlayers;
    sleep 1;
};

while {!TRAITOR_FOUND1} do {{
        Traitor1 = (["SCH1", "SCH0", "GL0", "GL1", "MG0", "MG1", "Medic0", "Medic1", "ING0", "ING1", "ING2", "ING3", "ING4", "ING5"] - [Traitor0]) call BIS_fnc_selectRandom;	
		if (str _x == Traitor1) exitWith {
            TRAITOR_FOUND1 = true;
            [[[Traitor1],"helpers\briefing_traitor.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
        };
    } forEach allPlayers;
    sleep 1;
};

while {!SPY_FOUND} do {{
        SPY = (["SCH1", "SCH0", "GL0", "GL1", "MG0", "MG1", "Medic0", "Medic1", "ING0", "ING1", "ING2", "ING3", "ING4", "ING5"] - [Traitor0] - [Traitor1]) call BIS_fnc_selectRandom;	
		if (str _x == SPY) exitWith {
            SPY_FOUND = true;
            [[[SPY],"helpers\briefing_spy.sqf"],"BIS_fnc_execVM",true] call BIS_fnc_MP;
        };
    } forEach allPlayers;
    sleep 1;
};
};

 [true,30,false,false,15,5,true,[]] execVM "headless\WerthlesHeadless.sqf";



if (true) exitWith {};    

	