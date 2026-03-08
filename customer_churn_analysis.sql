use churn_project;

-- CHECK NULL VALUES
select * from customer_churn where
customerID is null or
gender is null or
SeniorCitizen is null or
Partner is null or
Dependents is null or
Tenure is null or
PhoneService is null or
MultipleLines is null or
InternetService is null or
OnlineSecurity is null or
OnlineBackup is null or
DeviceProtection is null or
TechSupport is null; 

select * from customer_churn where 
StreamingTV is null or
StreamingMovies is null or
Contract is null or
PaperlessBilling is null or
PaymentMethod is null or
MonthlyCharges is null or
TotalCharges is null or
Churn is null;

-- CHECK DUPLICATES
select customerID, count(*) from customer_churn group by customerID having count(*)>1;

desc customer_churn;

-- how many customers churned and how many not churned
select * from customer_churn;
select count(*) from customer_churn;
select Churn, count(*) from customer_churn group by Churn;

-- Calculating Churn Rate Percentage
select count(*) as total_customers,
sum(case when Churn = 1 then 1 else 0 end) as churned_customers,
round(sum(case when Churn = 1 then 1 else 0 end)*100 / count(*), 2) as churn_rate_percentage
from customer_churn;

-- Total Revenue Generated
select round(sum(TotalCharges),2) from customer_churn;

-- Revenue lost due to churn
select round(sum(TotalCharges),2 ) from customer_churn where Churn = 1;

-- average revenue lostt due to churn
select round(avg(TotalCharges),2) from customer_churn where Churn = 1;

-- which contract type churns the most
select Contract, 
count(*) as total_customer,
sum(case when Churn = 1 then 1 else 0 end) as churned_cus ,
round(sum(case when Churn = 1 then 1 else 0 end) * 100/count(*), 2) as churn_rate_percentage
from customer_churn
group by Contract
order by churn_rate_percentage desc;

-- REVENUE LOST BY CONTRACT TYPE
select
    Contract,
    round(sum(TotalCharges),2) as revenue_lost
from customer_churn
where Churn = 1
group by Contract
order by revenue_lost DESC;


-- REVENUE LOST BY TENURE 
select 
	case
		when Tenure<=12 then "0-12 Months"
        when Tenure <= 24 then "12-24 months"
        when tenure <= 48 then "24-48  months"
        else "48+ months"
	end as tenure_group,
    count(*) as total_customers,
    sum(case when Churn = 1 then 1 else 0 end) as churned,
    round(sum(case when Churn = 1 then 1 else 0 end ) * 100 / count(*), 2) as churn_rate
    from customer_churn
    group by tenure_group 
    order by churn_rate desc;
    
select round(sum(TotalCharges), 2) as revenue_lost_0_12 from customer_churn where Churn = 1 and Tenure <= 12;

select 
    case 
        when tenure <= 12 then '0-12 Months'
        when tenure <= 24 then '13-24 Months'
        when tenure <= 48 then '25-48 Months'
        else '48+ Months'
    end as tenure_group,
    round(sum(TotalCharges),2) as revenue_lost
from customer_churn
where Churn = 1
group by tenure_group
order by revenue_lost desc;

select 
    PaymentMethod,
    count(*) as total_customers,
    sum(case when Churn = 1 then 1 else 0 end) as churned,
    round(sum(case when Churn = 1 then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
from customer_churn
group by PaymentMethod
order by churn_rate desc;
    
select 
    PaymentMethod,
    round(sum(TotalCharges),2) as revenue_lost
from customer_churn
where Churn = 1
group by PaymentMethod
order by revenue_lost desc;

select 
    InternetService,
    count(*) as total_customers,
    sum(case when Churn = 1 then 1 else 0 end) as churned,
    round(sum(case when Churn = 1 then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
from customer_churn
group  by InternetService
order by churn_rate DESC;