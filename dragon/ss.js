function getGameValueFn() {
  if (!stats || !stats.scene) {
    alert("Sorry, the game cannot be saved.");
    return false;
  }
  var password = computeCookie(stats.scene.stats, stats.scene.temps, stats.scene.lineNum, stats.scene.indent);
  password = stats.scene.obfuscate(stats.scene.name + password);
  return password;
}

function loadGameCallback(password) {
  if (!stats || !stats.scene) {
    alert("Sorry, the game cannot be loaded.");
    return false;
  }
  var token = stats.scene.deobfuscatePassword(password);
  var icol = token.indexOf("{");
  var scene_name = token.substring(0, icol);
  var token = token.substring(icol);
  var state = null;
  try {
    state = eval("state="+token);
  } catch (e) {
    alert("Sorry, your game could not be loaded.");
    return;
  }
  saveCookie(function() {
      clearScreen(function() {
        restoreGame(state, scene_name, /*userRestored*/true);
      })
    }, "", state.stats, state.temps, state.lineNum, state.indent);
}
