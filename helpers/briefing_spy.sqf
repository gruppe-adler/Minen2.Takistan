if (hasInterface) then {
  _keywords1 = keywords
  _keywords1 call BIS_fnc_arrayShuffle;
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


 if (str player == (_this select 0)) then {
     player createDiaryRecord ["Diary",
     ["Spezialauftrag", format ["Sie sind ein Spion der CIA. Versuchen sie die Talibanschläfer in den Reihen der Afghanen zu finden.
	 Die CIA konnte eine Meldung der Taliban abfangen, Zwei der folgenden 10 Codewörter werden die Schläfer für ihrer Kommunikation verwenden. Die NATO Streitkräfte wissen nicht, dass sie exestieren.
   Die 10 Codewörter sind: %1, %2, %3, %4, %5, %6, %7, %8, %9, %10"
   ,_stringR0, _stringR1, _stringF0, _stringF1, _stringF2, _stringF3, _stringF4, _stringF5, _stringF6, _stringF7]
     ]];

     sleep 3;
  	 // hintSilent "Du bist Spy, check dein Briefing!";
  	 ["<img size= '6' shadow='false' image='pic\spy.paa'/>",0,0,15,2] spawn BIS_fnc_dynamicText;
  	0 = [player] execVM "helpers\ensureDeath.sqf";

	};

};
