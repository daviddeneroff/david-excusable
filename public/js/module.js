var curseChecker = (function() {
  var curseEval = function(input) {
  var arr = ["booger", "ugly", "stupid"]
    for (var i = 0; i < arr.length; i++) {
      if (input.indexOf(arr[i]) != -1) {
        console.log("truth");
        return true;
    } else {
      console.log("false");
      return false;
      }
    }
}
  return {
    look: curseEval
  }
}());