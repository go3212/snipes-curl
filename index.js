'use strict';
// Dependencias externas
const fs = require('fs');

// Dependencias del proyecto
const { spawn, Thread, Worker } = require("threads");

(async () => 
{
    try
    {
        let wurk = await spawn(new Worker("./src/worker.js")); 
    }catch(error) {console.log(error)};

})();