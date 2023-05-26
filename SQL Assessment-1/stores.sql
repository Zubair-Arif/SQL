insert into sales.stores values(1,"Santa Cruz Bikes","(831) 476-4321","santacruz@bikes.shop","3700 Portola Drive","Santa Cruz","CA",95060);
insert into sales.stores values(2,"Baldwin Bikes","(516) 379-8888","baldwin@bikes.shop","4200 Chestnut Lane","Baldwin","NY",11432);
insert into sales.stores values(3,"Rowlett Bikes","(972) 530-5555","rowlett@bikes.shop","8000 Fairway Avenue","Rowlett","TX",75088);

SELECT * FROM sales.stores;

select pro.product_id,pro.product_name from sales.stores as str,sales.orders as ord,sales.order_items as ordit,production.products as pro where ord.store_id=str.store_id and ord.order_id=ordit.order_id and ordit.product_id=pro.product_id group by str.store_id,pro.product_id order by count(pro.product_id);

select str.store_id,ord.order_id,pro.product_id,pro.product_name,count(ordit.order_id) as no_of_times_purchased from sales.stores as str,sales.orders as ord,sales.order_items as ordit,production.products as pro where ord.store_id=str.store_id and ordit.order_id=ord.order_id and pro.product_id=ordit.product_id group by ordit.order_id order by count(ordit.order_id);