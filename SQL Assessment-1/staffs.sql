insert into sales.staffs values(1,"Fabiola","Jackson","fabiola.jackson@bikes.shop","(831)555-5554",1,1,NULL);
insert into sales.staffs values(2,"Mireya","Copeland","mireya.copeland@bikes.shop","(831)555-5555",1,1,1);
insert into sales.staffs values(3,"Genna","Serrano","genna.serrano.@bikes.shop","(831)555-5556",1,1,2);
insert into sales.staffs values(4,"Virgie","Wiggins","virgie.wiggins@bikes.shop","(831)555-5557",1,1,2);
insert into sales.staffs values(5,"Jannette","David","jannette.david@bikes.shop","(516)379-4444",1,2,1);
insert into sales.staffs values(6,"Marcelene","Boyer","marcelene.boyer@bikes.shop","(516)379-4445",1,2,5);
insert into sales.staffs values(7,"Venita","Daniel","venita.daniel@bikes.shop","(516)379-4446",1,2,5);
insert into sales.staffs values(8,"Kali","Vargas","kali.vargas@bikes.shop","(972)530-5555",1,3,1);
insert into sales.staffs values(9,"Layla","Terrell","layla.terrell@bikes.shop","(972)530-5556",1,3,7);
insert into sales.staffs values(10,"Bernardine","Houston","bernardine.houston@bikes.shop","(972)530-5557",1,3,7);

SELECT * FROM sales.staffs;

select stf.first_name, stf.last_name, str.store_name,count(str.store_name) as Total,month(ord.order_date) from staffs as stf,orders as ord,stores as str where stf.staff_id=ord.staff_id and stf.store_id=str.store_id group by stf.first_name,stf.last_name,month(ord.order_date),str.store_name;