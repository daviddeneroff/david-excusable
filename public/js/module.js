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
    if(input == "hi") {
      console.log("sup");
      return true;
    } else {
      return false;
    }
  }
  return {
    look: curseEval
  }
})