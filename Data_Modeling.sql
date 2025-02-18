--Membuat Fact Table Order
with transaction_per_product as (select order_id, b.id as product_id, retail_price, user_id
from `bigquery-public-data.thelook_ecommerce.order_items` a
left join `bigquery-public-data.thelook_ecommerce.products` b on a.product_id=b.id)
  
select order_id, user_id, sum(retail_price) as transaction_amount, count(product_id) num_of_item from transaction_per_product group by order_id, user_id  

--Membuat Dimension Table Users
Select id, first_name, last_name, email, age, gender, state, street_address, postal_code, city, country, latitude, longitude, traffic_source  
From `bigquery-public-data.thelook_ecommerce.users`
   
--Membuat Dimension Table Products 
Select id, cost, category, name, brand, retail_price, department, sku  
From `bigquery-public-data.thelook_ecommerce.products`

--Membuat Dimension Table Order Items
Select  id, order_id, product_id From `bigquery-public-data.thelook_ecommerce.order_items`
   