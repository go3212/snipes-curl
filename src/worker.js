'use strict';
const { expose } = require("threads/worker");
const { Observable, Subject } = require("threads/observable");
const greetModule = require("../build/Release/greet.node");



(async () => 
{
    try {
        // console.log('exports: ', greetModule);
        let xd = 1;
        console.log(greetModule.greetHello());
        expose(greetModule);
    } catch (e) { console.log(e) };
})();