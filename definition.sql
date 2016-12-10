DROP TABLE IF EXISTS `ShopMenus`;
DROP TABLE IF EXISTS `ShopVisits`;
DROP TABLE IF EXISTS `CoffeeShops`;
DROP TABLE IF EXISTS `MenuItems`;


CREATE TABLE `CoffeeShops` (
	`shop_id` int auto_increment primary key not null,
	`shop_name` varchar(255) not null,
	`shop_address` varchar(255),
	`shop_photo_t` varchar(255),		#150 x 150 thumbnail
	`shop_photo_s` varchar(255),		#320 x 212 small
	`shop_photo_m` varchar(255),		#800 x 530 medium 
	`shop_photo_l` varchar(255)			#1600 x 1060 large 
);

CREATE TABLE `MenuItems` (
	`item_id` int auto_increment primary key not null,
	`item_name` varchar(255) not null
);

CREATE TABLE `ShopMenus` (
	`shop` int not null,
	`item` int not null, 
	FOREIGN KEY (shop) REFERENCES CoffeeShops(shop_id) 
		on delete cascade on update cascade, 
	FOREIGN KEY (item) REFERENCES MenuItems(item_id) 
		on delete cascade on update cascade, 
	PRIMARY KEY(shop, item)
); 

CREATE TABLE `ShopVisits` (
	`visit_id` int auto_increment primary key not null,
	`visit_date` date not null, 
	`visit_shop` int not null,

	FOREIGN KEY (visit_shop) REFERENCES CoffeeShops(shop_id) 
		on delete cascade on update cascade
);

