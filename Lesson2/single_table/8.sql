--Write a SQL statement to create the table shown below, menu_items:
/*
item	prep_time	ingredient_cost	sales	menu_price
omelette	10	1.50	182	7.99
tacos	5	2.00	254	8.99
oatmeal	1	0.50	79	5.99
*/
CREATE TABLE menu_items(
 item varchar(50),
 prep_item integer,
 ingredient_cost decimal(4,2),
 sales integer,
 manu_price decimal(4,2));

