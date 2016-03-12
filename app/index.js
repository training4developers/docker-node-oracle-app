var express = require('express');

// Constants
var PORT = 3000;

// App
var app = express();
app.use(express.static(require("path").join(__dirname, "src", "www")));
app.listen(PORT);

console.log('Running on http://localhost:' + PORT);


var oracledb = require('oracledb');

oracledb.getConnection(
  {
    user          : "system",
    password      : "oracle",
    connectString : "localhost/XE"
  },
  function(err, connection)
  {
    if (err) { console.error(err.message); return; }

    connection.execute(
      "SELECT * FROM widgets",
      function(err, result)
      {
        if (err) { console.error(err.message); return; }
        console.log(result.rows);
      });
  });
