const express = require('express');
const app = express();
const port = process.env.PORT || 8000; //EB will pick default env value 8080 if not mentioned in configuration.

app.get('/', (req, res) => {
    console.log("New get")
    res.send('<h1>Hello DevOps on docker!</h1>');
    });

app.listen(port);
console.log(`App running on http://localhost:${port}`);
