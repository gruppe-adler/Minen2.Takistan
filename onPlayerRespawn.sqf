// Create a new curator logic
_curator = (createGroup f_var_sideCenter) createUnit ["ModuleCurator_F",[0,0,0] , [], 0, ""];

// Assign the passed unit as curator
player assignCurator _curator;

player setPos getMarkerPos "mrk_curator_spawn"; // mrk_curator_spawn ist Marker auf Spawnposi Zeuse
