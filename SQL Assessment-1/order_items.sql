select * from sales.order_items;

select stk.quantity-ordit.quantity from production.stocks as stk,sales.order_items as ordit where stk.product_id=ordit_product_id;

select order_id,product_id from order_items where product_id=2;

select count(order_id) from order_items where product_id=6;

select ord.order_id,pro.product_name,sum(ordit.list_price)/ordit.list_price from((sales.order_items as ordit inner join production.products as pro on pro.product_id=ordit.product_id)inner join sales.orders as ord on ord.order_id=ordit.order_id)group by pro.product_name order by sum(ordit.list_price)/ordit.list_price desc;