var express = require('express'),
	app = express();

app.use(express.static('/files'));

app.listen(process.env.PORT);