#!/usr/bin/env node
// print process.arg
var common = require('./commonfunc.js');

var myArgs = process.argv.slice(2);

myArgs.forEach(function (val, index, array) {
    console.log(common.doubleIt(val));
});
