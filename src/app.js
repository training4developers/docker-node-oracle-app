module.exports = function(config) {

	"use strict";

	const
		oracledb = require('oracledb'),
		express = require('express'),
		path = require("path");

	let
		app = express();

	oracledb.getConnection(config.oracleServer, function(err, connection) {

		connection.execute("SELECT * FROM widgets", function(err, result) {
			if (err) { console.error(err.message); return; }
			console.log(result.rows.length);
		});

  });


	app.use(express.static(path.join(__dirname, config.webServer.folder)));
	app.listen(config.webServer.port, function() {
		console.log('Running a web server on port ' + config.webServer.port);
	});

};
