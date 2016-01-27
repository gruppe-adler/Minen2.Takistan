if (hasInterface) then {

 if (str player == (_this select 0)) then {


	_stringR0 = localize (("TRAITOR_Code_") + (str (keywords select 0)));
	_stringR1 = localize (("TRAITOR_Code_") + (str (keywords select 1)));
	_stringF0 = localize (("TRAITOR_Code_") + (str (keywords select 2)));
	_stringF1 = localize (("TRAITOR_Code_") + (str (keywords select 3)));
	_stringF2 = localize (("TRAITOR_Code_") + (str (keywords select 4)));
	_stringF3 = localize (("TRAITOR_Code_") + (str (keywords select 5)));
	_stringF4 = localize (("TRAITOR_Code_") + (str (keywords select 6)));
	_stringF5 = localize (("TRAITOR_Code_") + (str (keywords select 7)));
	_stringF6 = localize (("TRAITOR_Code_") + (str (keywords select 8)));
	_stringF7 = localize (("TRAITOR_Code_") + (str (keywords select 9)));

     player createDiaryRecord ["Diary",
     ["Spezialauftrag", format ["Sie sind ein Schläfer der Taliban in den Reihen der afghanischer Armee.
	 Töten Sie alle Amerikaner, Deutschen und ihren Vorgestzten Offizier und die beiden Teamleader.
	 Andere Taliban Einheiten werden auf Sie schießen, da sie Sie nicht identifizieren können.
   Wenn sie ein Märtyrer werden, werden sie mit 72 Jungfrauen im Paradies belohnt. Es gibt noch einen weiteren
   Taliban Schläfer in den Reihen der Afghane, benutzten sie die Codewörter, %1, und , %2, um sich gegenseitig zu
   identifiziern.	 Die NSA hat eine Liste an möglichen Codewörtern der Taliban abgefangen, auf dieser Liste
   standen die Wörter: %1, %2, %3, %4, %5, %6, %7, %8, %9, %10"
   ,_stringR0, _stringR1, _stringF0, _stringF1, _stringF2, _stringF3, _stringF4, _stringF5, _stringF6, _stringF7]
     ]];

     sleep 3;
  	 // hintSilent "Du bist Schläfer, check dein Briefing!";
  	 ["<img size= '6' shadow='false' image='pic\schlaefer.paa'/>",0,0,15,2] spawn BIS_fnc_dynamicText;
  	0 = [player] execVM "helpers\ensureDeath.sqf";

	};

};
