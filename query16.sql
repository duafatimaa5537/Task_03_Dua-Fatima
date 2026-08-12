# Product Performance from Instagram Referrals
select
	Product,
    count(Quantity) as Count_Quantity,
    round(sum(TotalPrice),2) as Total_Revenue,
    round(avg(TotalPrice),2) as Average_Price
    from new_schema.`dataset for data analytics`
    where ReferralSource = 'Instagram'
    group by Product 
    order by Count_Quantity desc;

# Product-wise Sales Performance Analysis
select
	Product,
    count(Quantity) as Count_Quantity,
    round(sum(TotalPrice),2) as Total_Revenue,
    round(avg(TotalPrice),2) as Average_Price
    from new_schema.`dataset for data analytics`
    group by Product ;
 
# Overall Revenue 
select 
	round(sum(TotalPrice),2) as Revenue
    from new_schema.`dataset for data analytics`;

# Total Number of Orders    
select
	count(OrderID) as Orders
    from new_schema.`dataset for data analytics`;
    
# Sales Performance by Payment Method 
select 
	PaymentMethod,
    count(Quantity) as Count_Quantity,
    round(avg(TotalPrice),2) as Average_Price
    from new_schema.`dataset for data analytics`
    group by PaymentMethod
    order by Count_Quantity desc;
    
# Phone Sales by Payment Method
select 
	PaymentMethod,
    count(Quantity) as Count_Quantity,
    round(sum(TotalPrice),2) as Total_Revenue,
    round(avg(TotalPrice),2) as Average_Price
    from new_schema.`dataset for data analytics`
    where Product = 'Phone'
    group by PaymentMethod
    order by Count_Quantity desc;
    
