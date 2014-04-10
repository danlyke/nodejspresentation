var assert = require("assert");
var common = require('./commonfunc.js');

describe('common', function(){
    describe('#doubleIt()', function() {
        it('should return 4 when called with 2',
           function() { assert.equal(4, common.doubleIt(2)) } );
        it('should return 2 when called with 1',
           function() { assert.equal(2, common.doubleIt(1)) } );
        it('should return 3 when called with 1.5',
           function() { assert.equal(3, common.doubleIt(1.5)) } );
        it('should return 10 when called with 5',
           function() { assert.equal(10, common.doubleIt("5")) } );
    })
});
