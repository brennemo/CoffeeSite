var express = require('express');
var app = express();

var handlebars = require('express3-handlebars').create({ defaultLayout:'main' });
app.engine('handlebars', handlebars.engine);
app.set('view engine', 'handlebars');

app.set('port', process.env.PORT || 3000);

app.use(express.static(__dirname + '/public')); 

//mocha tests 
app.use(function(req, res, next){
	res.locals.showTests = app.get('env') !== 'production' && 
		req.query.test === '1';
	next();
});

app.get('/', function(req, res) {
	res.render('home'); 
});

app.get('/about', function(req, res) {
	res.render('about'); 
});

app.get('/menu', function(req, res) {
	res.render('menu'); 
});

app.get('/contact', function(req, res) {
	res.render('contact'); 
});

app.get('/locations', function(req, res) {
	res.render('locations'); 
});

app.use(function(req, res, next) {
	res.status(404);
	res.render('404', { layout: 'error-page' });
}); 

app.use(function(err, req, res, next) {
	console.error(err.stack);
	res.status(500);
	res.render('500', { layout: 'error-page' });
});

app.listen(app.get('port'), function() {
	console.log('Express started on http://localhost:' + app.get('port') + '; press Ctrl-C to terminate.'); 
}); 