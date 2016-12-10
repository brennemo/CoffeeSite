DROP TABLE IF EXISTS `ShopMenus`;
DROP TABLE IF EXISTS `CoffeeShops`;
DROP TABLE IF EXISTS `MenuItems`;

CREATE TABLE `CoffeeShops` (
	`shop_id` int auto_increment primary key not null,
	`shop_name` varchar(255) not null
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