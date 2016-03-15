"use strict";

require("./src/app")({
	webServer: {
		port: 3000,
		folder: "www"
	},
	oracleServer: {
		user: "system",
		password: "oracle",
		connectString: "localhost/XE"
	}
});
