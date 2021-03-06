DROP TABLE IF EXISTS `ShopMenus`;
DROP TABLE IF EXISTS `ShopPassport`;
DROP TABLE IF EXISTS `CoffeeShops`;
DROP TABLE IF EXISTS `MenuItems`;


CREATE TABLE `CoffeeShops` (
	`shop_id` int auto_increment primary key not null,
	`shop_name` varchar(255) not null,
	`shop_address` varchar(255),
	`shop_photo_t` varchar(255),		#150 x 150 thumbnail
	`shop_photo_s` varchar(255),		#320 x 212 small
	`shop_photo_m` varchar(255)			#800 x 530 medium 
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

CREATE TABLE `ShopPassport` (
	`passport_id` int auto_increment primary key not null,
	`passport_date` date,
	`passport_shop` int not null,
	`passport_visited` tinyint(1) not null,
	FOREIGN KEY (passport_shop) REFERENCES CoffeeShops(shop_id) 
		on delete cascade on update cascade
);

