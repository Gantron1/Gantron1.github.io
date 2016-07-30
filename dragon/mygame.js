nav = new SceneNavigator(["startup"]);
stats = {};

function updateStatBar() {
	document.getElementById("quickstats").innerHTML = "Health: "+stats["cur_health"]+"/"+stats["max_health"]+" &nbsp;&nbsp;&#8226;&nbsp;&nbsp; Self-Esteem: "+stats["esteem"]+"/100 &nbsp;&nbsp;&#8226;&nbsp;&nbsp; Rations Left: "+stats["food"];
}

