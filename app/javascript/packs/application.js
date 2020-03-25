import "bootstrap";
import $ from "jquery";


// /* Code pour les boutons de materialize */

  // document.addEventListener('DOMContentLoaded', function() {
  //   var elems = document.querySelectorAll('.fixed-action-btn');
  //   var instances = M.FloatingActionButton.init(elems, options);
  // });


  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.fixed-action-btn');
    var instances = M.FloatingActionButton.init(elems, {
      direction: 'right'
    });
  });

  document.addEventListener('DOMContentLoaded', function() {
     var elems = document.querySelectorAll('.materialboxed');
     var instances = M.Materialbox.init(elems, {
      outDuration: '200'
     });
   });

// /* Code pour le stretch de la navbar 2 */

// const header = document.querySelector('.start-style')
// if (header) {


//   window.addEventListener("scroll", (event) => {
//     if (window.scrollY >=10) {
//       header.classList.remove("start-style");
//       header.classList.add("scroll-on");
//       console.log("Test if")
//     }
//     else {
//       header.classList.add('start-style');
//       header.classList.remove('scroll-on');
//       console.log("Test else")
//     }
//   });
// }
// /* Code pour le stretch de la navbar 2 */
