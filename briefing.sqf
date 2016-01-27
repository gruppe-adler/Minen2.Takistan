
waitUntil { !isNil {player} };
waitUntil { player == player };

switch (side player) do 
{

case WEST: // BLUFOR briefing goes here
{
player createDiaryRecord ["Diary", ["militärische Mittel", "Ein Squad Amerikaner, die das Oberkommando innehaben und die Afghane ausbilden.
Ein Squad Deutscher, die mittels Fennek und Drohne (wurde leider abgeschossen) aufklären können. Ein Zug afghanischer Pioniere die im Minenräumen ausgebildet werden sollen. 
Außerdem steht innen Artellerie zur verfügung, die Sie über das Hauptquartier (Zeus) anfordern können.
Das Hauptquartier ist über die Frequenz 80 mit dem Langstreckenfunkgerät erreichbar."]];
player createDiaryRecord ["Diary", ["politische Lage", "Das Verhältniss der NATO (USA und Deutschland) und der afghanischen Regierung ist angespannt,
da es in letzter Zeit zu zahlreichen zivilen Opfern kam.
 Die NATO darf nur noch in Afghanistan verweilen, da sie die Afghane ausbildet. Gehen Sie also vorischtig vor."]];
player createDiaryRecord ["Diary", ["militärische Lage", "Rechen Sie überall mit Feindkontakt, besonders in der Nähe von Talibanhochburgen.
Alle Straßen gelten von Minen geräumt,
außer der Straße die Sie räumen sollen und die Straßen, die durch das Minenfeld östlich von Feruz-Abad führen, achten sie aber auch auf den anderen Straßen
und dem offenen Gelände auf Minen. Östlich ihres Einsatzgebietes operieren US-Spezialkräfte. Betreten sie das Operationsgebiet nicht."]];
player createDiaryRecord ["Diary", ["Auftrag", "Räumen Sie alle Minen auf dem Highway ab dem Grüne-Marker bis Feruz-Abad.
Anschließend neutralisieren sie den lokalen Warlord, der in Feruz-Abad vermutet wird. Kehren Sie anschließend zu einer ihrer Basen zurück.
In den Reihen der Afghane werden Schläfer der Taliban vermutet, versuchen sie diese zu identifizieren und auszuschalten.
Gehen sie aber vorsichtig vor, da unsere Regierung sich zurzeit in einer diplomatische Krise mit den Afghane befindet."]];

 
//Task1 - COMMENT
/*task_1 = player createSimpleTask ["TASKNAME"]; 
task_1 setSimpleTaskDescription ["TASK DESCRIPTION","Example Task","WHAT WILL BE DISPLAYED ON THE MAP"]; 
task_1 setSimpleTaskDestination (getMarkerPos "task_1");
task_1 setTaskState "Assigned"; 
player setCurrentTask task_1;

//Task2 - COMMENT
task_2 = player createSimpleTask ["TASKNAME"]; 
task_2 setSimpleTaskDescription ["TASK DESCRIPTION","Example Task","WHAT WILL BE DISPLAYED ON THE MAP"]; 
task_2 setSimpleTaskDestination (getMarkerPos "task_2");*/



};


case EAST: // OPFOR briefing goes here
{ 
};


case RESISTANCE: // RESISTANCE/INDEPENDENT briefing goes here
{ 
player createDiaryRecord ["Diary", ["militärische Mittel", "Ein Squad Amerikaner, die das Oberkommando innehaben und die Afghane ausbilden.
 Ein Squad Deutscher, die mittels Fennek und Drohne aufklären können. Ein Zug afghanischer Pioniere die im Minenräumen ausgebildet werden sollen. 
Außerdem steht innen Artellerie zur verfügung, die die NATO über das Hauptquartier (Zeus) anfordern kann."]];
player createDiaryRecord ["Diary", ["politische Lage", "Das Verhältniss der NATO (USA und Deutschland) und der afghanischen Regierung ist angespannt,
 da es in letzter Zeit zu zahlreichen zivilen Opfern kam.
 Die NATO darf nur noch in Afghanistan verweilen, da sie die Afghane ausbildet. Notieren sie jegliche verdächtige Tätigkeit der NATO
 und melden sie dies später ihrem Hauptquartier."]];
player createDiaryRecord ["Diary", ["militärische Lage", "Rechen Sie überall mit Feindkontakt, besonders in der Nähe von Talibanhochburgen.
 Alle Straßen gelten von Minen geräumt,
 außer der Straße die Sie räumen sollen und die Straßen, die durch das Minenfeld östlich von Feruz-Abad führen, achten sie aber auch auf den anderen Straßen
 und dem offenen Gelände auf Minen. Östlich ihres Einsatzgebietes operieren US-Spezialkräfte. Betreten sie das Operationsgebiet nicht."]];
player createDiaryRecord ["Diary", ["Auftrag", "Räumen Sie alle Minen auf dem Highway ab dem Grüne-Marker bis Feruz-Abad.
 Anschließend neutralisieren sie den lokalen Warlord, der in Feruz-Abad vermutet wird.
 In den Reihen der Afghane werden Schläfer der Taliban vermutet, versuchen sie diese zu identifizieren und auszuschalten.
 Gehen sie aber vorsichtig vor, da unschuldige Opfer vermieden werden sollen."]];

};


case CIVILIAN: // CIVILIAN briefing goes here
{ 
};
default {};
};



