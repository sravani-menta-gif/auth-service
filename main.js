var express = require("express");
var app = express()

app.get("/", function(req, res) {
    res.json({status: "success"})
})

app.listen(3003, () => {
  console.log(`Server running on http://localhost:${3003}`);
});