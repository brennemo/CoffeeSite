insert into CoffeeShops(shop_name) values ('Gray Bottle');
insert into CoffeeShops(shop_name) values ('Cafe Stumpy');
insert into CoffeeShops(shop_name) values ('Grumptown');
insert into CoffeeShops(shop_name) values ('Tony''s Estate');
insert into CoffeeShops(shop_name) values ('Second Rail Coffee');

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