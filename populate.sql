insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m) 
	values ('Gray Bottle', '1234 Main Street, New York, NY 11111',
		'https://c2.staticflickr.com/6/5506/11170465175_2b84618958_q.jpg', 
		'https://c2.staticflickr.com/6/5506/11170465175_2b84618958_n.jpg',
		'https://c2.staticflickr.com/6/5506/11170465175_2b84618958_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m) 
	values ('Cafe Stumpy', '1234 Narrowway, New York, NY 11111',
		'https://c1.staticflickr.com/3/2821/11170568203_2b152cffb1_q.jpg', 
		'https://c1.staticflickr.com/3/2821/11170568203_2b152cffb1_n.jpg', 
		'https://c1.staticflickr.com/3/2821/11170568203_2b152cffb1_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m)  
	values ('Grumptown', '1234 Beaker Street, New York, NY 11111',
		'https://c2.staticflickr.com/8/7306/11170623003_b880e04b44_q.jpg', 
		'https://c2.staticflickr.com/8/7306/11170623003_b880e04b44_n.jpg', 
		'https://c2.staticflickr.com/8/7306/11170623003_b880e04b44_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m)  
	values ('Tony''s Estate', '1234 1st Ave, New York, NY 11111',
		'https://c2.staticflickr.com/6/5491/11170362496_36fa45b9a0_q.jpg', 
		'https://c2.staticflickr.com/6/5491/11170362496_36fa45b9a0_n.jpg', 
		'https://c2.staticflickr.com/6/5491/11170362496_36fa45b9a0_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m) 
	values ('Second Rail Coffee', '24810 10th Street, New York, NY 11111',
		'https://c1.staticflickr.com/9/8114/8747980541_199990c36b_q.jpg', 
		'https://c1.staticflickr.com/9/8114/8747980541_199990c36b_n.jpg', 
		'https://c1.staticflickr.com/9/8114/8747980541_199990c36b_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m) 
	values ('Unicycle Coffee', '14673 23rd Street, New York, NY 11111',
		'https://c1.staticflickr.com/9/8505/8573690832_193a8825e0_q.jpg', 
		'https://c1.staticflickr.com/9/8505/8573690832_193a8825e0_n.jpg', 
		'https://c1.staticflickr.com/9/8505/8573690832_193a8825e0_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m) 
	values ('Counter Clockwise Coffee', '14673 23rd Street, New York, NY 11111',
		'https://c1.staticflickr.com/9/8378/8570267065_2a114e33d2_q.jpg', 
		'https://c1.staticflickr.com/9/8378/8570267065_2a114e33d2_n.jpg', 
		'https://c1.staticflickr.com/9/8378/8570267065_2a114e33d2_c.jpg');
insert into CoffeeShops(shop_name, shop_address, shop_photo_t, shop_photo_s, shop_photo_m) 
	values ('Oak Coffee', '14673 23rd Street, New York, NY 11111',
		'https://c1.staticflickr.com/7/6092/6279650743_3f1b8504d1_q.jpg', 
		'https://c1.staticflickr.com/7/6092/6279650743_3f1b8504d1_n.jpg', 
		'https://c1.staticflickr.com/7/6092/6279650743_3f1b8504d1_b.jpg');

insert into MenuItems(item_name) values('espresso'); 
insert into MenuItems(item_name) values('latte'); 
insert into MenuItems(item_name) values('americano'); 
insert into MenuItems(item_name) values('cortado'); 
insert into MenuItems(item_name) values('macchiato'); 
insert into MenuItems(item_name) values('pour over'); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Gray Bottle'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Gray Bottle'), 
										(select item_id from MenuItems where item_name='latte')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Gray Bottle'), 
										(select item_id from MenuItems where item_name='americano')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Gray Bottle'), 
										(select item_id from MenuItems where item_name='cortado')); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Cafe Stumpy'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Cafe Stumpy'), 
										(select item_id from MenuItems where item_name='latte')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Cafe Stumpy'), 
										(select item_id from MenuItems where item_name='americano')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Cafe Stumpy'), 
										(select item_id from MenuItems where item_name='pour over')); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Grumptown'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Grumptown'), 
										(select item_id from MenuItems where item_name='latte')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Grumptown'), 
										(select item_id from MenuItems where item_name='macchiato')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Grumptown'), 
										(select item_id from MenuItems where item_name='pour over')); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Tony''s Estate'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Tony''s Estate'), 
										(select item_id from MenuItems where item_name='cortado')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Tony''s Estate'), 
										(select item_id from MenuItems where item_name='macchiato')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Tony''s Estate'), 
										(select item_id from MenuItems where item_name='pour over')); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Second Rail Coffee'), 
										(select item_id from MenuItems where item_name='americano')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Second Rail Coffee'), 
										(select item_id from MenuItems where item_name='cortado')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Second Rail Coffee'), 
										(select item_id from MenuItems where item_name='macchiato')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Second Rail Coffee'), 
										(select item_id from MenuItems where item_name='pour over')); 	

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Unicycle Coffee'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Unicycle Coffee'), 
										(select item_id from MenuItems where item_name='cortado')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Unicycle Coffee'), 
										(select item_id from MenuItems where item_name='americano')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Unicycle Coffee'), 
										(select item_id from MenuItems where item_name='pour over')); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Counter Clockwise Coffee'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Counter Clockwise Coffee'), 
										(select item_id from MenuItems where item_name='latte')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Counter Clockwise Coffee'), 
										(select item_id from MenuItems where item_name='macchiato')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Counter Clockwise Coffee'), 
										(select item_id from MenuItems where item_name='pour over')); 

insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Oak Coffee'), 
										(select item_id from MenuItems where item_name='espresso')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Oak Coffee'), 
										(select item_id from MenuItems where item_name='latte')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Oak Coffee'), 
										(select item_id from MenuItems where item_name='macchiato')); 
insert into ShopMenus(shop, item) values((select shop_id from CoffeeShops where shop_name='Oak Coffee'), 
										(select item_id from MenuItems where item_name='pour over')); 

insert into ShopPassport(passport_date, passport_shop, passport_visited) values('2016-02-20', 
	(select shop_id from CoffeeShops where shop_name='Tony''s Estate'), 1); 
insert into ShopPassport(passport_shop, passport_visited) values( 
	(select shop_id from CoffeeShops where shop_name='Cafe Stumpy'), 0); 
insert into ShopPassport(passport_date, passport_shop, passport_visited) values('2016-02-20', 
	(select shop_id from CoffeeShops where shop_name='Grumptown'), 1); 
insert into ShopPassport(passport_shop, passport_visited) values(
	(select shop_id from CoffeeShops where shop_name='Second Rail Coffee'), 0); 	
	insert into ShopPassport(passport_shop, passport_visited) values(
	(select shop_id from CoffeeShops where shop_name='Gray Bottle'), 0); 	
insert into ShopPassport(passport_shop, passport_visited) values(
	(select shop_id from CoffeeShops where shop_name='Unicycle Coffee'), 0); 
insert into ShopPassport(passport_shop, passport_visited) values(
	(select shop_id from CoffeeShops where shop_name='Counter Clockwise Coffee'), 0); 					
insert into ShopPassport(passport_shop, passport_visited) values(
	(select shop_id from CoffeeShops where shop_name='Oak Coffee'), 0); 				