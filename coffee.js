var express = require('express');
var app = express();
var mysql = require('./dbcon');

//var exphbs  = require('express-handlebars').create({ defaultLayout:'main' });
var exphbs  = require('express-handlebars');
var hbs = exphbs.create({ 
	defaultLayout:'main', 
    helpers: {
        isVisited: function(visit) { 
        	return visit == 1? "passport-visited" : "passport-unvisited"; 
        }, 
        passportDescription: function(date) {
        	if (date == null) return "unvisited";
        	else {
        		var dateArray = String(date).split(/[- :]/); 
        		var formattedDate = dateArray[1] + " " + dateArray[2] + ", " + dateArray[3];	
        		return "visited on " + formattedDate;
        	}
        }
    }
});

app.engine('handlebars', hbs.engine);
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

app.get('/passport', function(req, res, next) {
	mysql.pool.query('select ShopPassport.passport_shop, ShopPassport.passport_visited, ShopPassport.passport_date, CoffeeShops.shop_id, CoffeeShops.shop_name, CoffeeShops.shop_photo_t from ShopPassport inner join CoffeeShops on ShopPassport.passport_shop = CoffeeShops.shop_id', function(err, rows, fields) {
		if(err) {
            next(err)
            return;
        }
		res.render('passport', { rows : rows }); 
	});	
});

app.get('/explore', function(req, res, next) {
	mysql.pool.query('select shop_id, shop_name, shop_photo_s from CoffeeShops', function(err, rows, fields) {
		if(err) {
            next(err)
            return;
        }
		res.render('explore', { rows : rows }); 
	});	
});

app.get('/menu/:id', function(req, res, next) {
	var id = req.params.id; 
	mysql.pool.query('select MenuItems.item_id, MenuItems.item_name, CoffeeShops.shop_id, CoffeeShops.shop_name, CoffeeShops.shop_address, CoffeeShops.shop_photo_m from MenuItems inner join ShopMenus on MenuItems.item_id = ShopMenus.item inner join CoffeeShops on ShopMenus.shop = CoffeeShops.shop_id where CoffeeShops.shop_id ='+id, function(err, rows, fields){
		if(err) {
			next(err)
			return;
		}
		res.render('menu', {rows : rows});
	});
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