// var curseChecker = (function() {
//   var curseEval = function(input) {
//   var arr = ["booger", "icky"];
//     for (var i = 0; i < arr.length; i++) {
//       arr[i]
//     }
//   };
//   return {
//     look: curseEval;
//   }
// })

// var str = "texttexttext";
// var arr = ["asd", "ghj", "xtte"];
// for (var i = 0, len = arr.length; i < len; ++i) {
//     if (str.indexOf(arr[i]) != -1) {
//         // str contains arr[i]
//     }
// }

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