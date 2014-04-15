(function(exports) {
 
// Define all your functions on the exports object
    exports.doubleIt = function(it) {
        it = Number(it);
        return it + it;
    };
})((typeof process === 'undefined' || !process.versions) ?
   window.common = window.common || {}
   : exports);

