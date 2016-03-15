module.exports = function(config) {

	"use strict";

	const
		express = require('express'),
		path = require("path");

	let
		app = express();

	app.use(express.static(path.join(__dirname, config.webServer.folder)));
	app.listen(config.webServer.port, function() {
		console.log('Running a web server on port ' + config.webServer.port);
	});

	var oracledb = require('oracledb');

	oracledb.getConnection(config.oracleServer, function(err, connection) {

		if (err) { console.error(err.message); return; }

    connection.execute("SELECT * FROM widgets", function(err, result) {
      if (err) { console.error(err.message); return; }
      console.log(result.rows.length);
    });

  });

};
