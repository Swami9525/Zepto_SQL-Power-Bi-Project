create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);
----Data exploration

----Count of Rows

select count(*) from zepto

---- Sample Data

select * from zepto

---- Null values

select * from zepto 
where category is null
or
name is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
weightInGms is null
or
outOfStock is null
or
quantity is null

------Different product categories

select distinct category 
from zepto
order by category 

---- products in stock vs out stock

select outOfStock,count(*)from zepto group by outOfStock

---product names present multiple times

select name, count(sku_id) as "Number of SKUs"
from zepto 
group by name
having count(sku_id) >1 
order by count(sku_id) desc

----Data cleaning

----products with price = 0

select * from zepto 
where mrp = 0 
or discountedSellingPrice =0

delete from zepto 
where mrp =0

----convert paise to rupees

update zepto 
set mrp = mrp/100,discountedSellingPrice = discountedSellingPrice/100

-- Q1. Find the top 10 best-value products based on the discount percentage.

 select distinct name, mrp, discountpercent 
 from zepto
 order by discountpercent desc
 limit 10;

-- Q2.What are the Products with High MRP but Out of Stock

select distinct name, mrp, outOfStock 
from zepto 
where outOfStock = 'True' and mrp > 300
order by mrp desc

-- Q3.Calculate Estimated Revenue for each category

select category, 
sum(discountedSellingPrice *availableQuantity)as Total_Revenue
from zepto 
group by category
ORDER BY Total_Revenue

-- Q4. Find all products where MRP is greater than <500 and discount is less than 10%.

 SELECT distinct name,mrp,discountPercent 
 FROM ZEPTO 
 WHERE mrp > 500 and discountPercent < 10
 order by mrp desc,discountPercent desc

 
-- Q5. Identify the top 5 categories offering the highest average discount percentage.

select category, round(avg(discountPercent),2) as avg_discount
from zepto 
group by category 
order by avg(discountPercent) desc
limit 5

-- Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name,weightInGms,discountedSellingPrice, round(discountedSellingPrice/weightInGms,2) as price_per_grm
from zepto 
where weightInGms >= 100
order by price_per_grm
-- Q7.Group the products into categories like Low, Medium, Bulk.
select distinct name ,weightInGms, 
case
when weightInGms < 1000 then 'Low'
when weightInGms < 5000 then 'Medium' 
else 'Bulk' 
end as weigh_category
from zepto


-- Q8.What is the Total Inventory Weight Per Category

select 
category, sum(weightInGms * availableQuantity) as total_weight 
from zepto
group by category
order by total_weight desc


