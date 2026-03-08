# Telecom Customer Churn Analysis
## Problem Statement
Customer churn is a critical challenge for telecom companies because losing customers directly impacts revenue and long-term business growth. Understanding the factors that influence customer churn helps companies improve customer satisfaction and develop effective retention strategies.
This project analyzes telecom customer data using SQL for data exploration and Power BI for building an interactive dashboard. The analysis focuses on identifying churn patterns across different customer segments, contract types, tenure groups, and service subscriptions.
The Power BI dashboard provides visual insights into customer behavior, churn trends, revenue impact, and service usage. Based on the findings, the project highlights key factors contributing to churn and provides business recommendations that can help telecom companies improve customer retention and reduce churn rates.

## Objectives

The main objective of this project is to analyze telecom customer data to understand the key factors that influence customer churn and provide insights that can help improve customer retention. The analysis focuses on exploring customer behavior, service usage patterns, and contract characteristics that contribute to churn.
The specific objectives of this project include:
1. **Analyze Customer Churn Patterns**
   - Identify the proportion of customers who have churned.
   - Understand how churn is distributed across different customer segments.
2. **Evaluate the Impact of Contract Types**
   - Compare churn rates among month-to-month, one-year, and two-year contracts.
   - Identify which contract type has the highest risk of churn.
3. **Understand Customer Lifecycle Behavior**
   - Analyze churn trends based on customer tenure.
   - Identify whether new customers are more likely to churn compared to long-term customers.
4. **Assess the Impact of Service Features**
   - Examine how services such as Tech Support, Online Security, Online Backup, and Device Protection affect churn behavior.
   - Determine whether customers using value-added services have lower churn rates.
5. **Analyze Internet Service Influence**
   - Evaluate churn patterns among different internet service types such as DSL and Fiber Optic.
   - Identify whether premium services influence customer retention or churn risk.
6. **Measure Revenue Impact of Churn**
   - Estimate revenue loss associated with customer churn.
   - Identify customer segments contributing most to revenue loss.

7. **Provide Data-Driven Business Recommendations**
   - Suggest strategies that telecom companies can implement to reduce churn.
   - Highlight opportunities to improve customer retention through contract strategies and service bundles.
  
## Tools & Technologies
The following tools and technologies were used in this project for data analysis, visualization, and documentation:
### SQL
SQL was used for data exploration and analysis. Queries were written to analyze customer churn patterns, calculate churn rates, evaluate contract distributions, and identify key trends in the dataset.
### Power BI
Power BI was used to create an interactive dashboard that visualizes customer churn behavior, revenue impact, and service usage patterns. Various visualizations such as KPI cards, bar charts, donut charts, and slicers were used to build an analytical dashboard.
### ChatGPT
ChatGPT was used to assist with project documentation, structuring the analysis, refining insights, and preparing professional explanations for the README and project presentation.
### Claude
Claude was used to support idea generation, improve clarity in project descriptions, and help refine analytical explanations for better communication of insights.
### Data Visualization
Data visualization techniques were applied to present analytical findings clearly and effectively through interactive dashboards.
### Data Analysis
Data analysis techniques were used to identify patterns, correlations, and trends in the telecom dataset to understand the key drivers of customer churn.

## Raw Dataset Description
The dataset used in this project contains customer information from a telecom company and is designed to analyze customer churn behavior. Each row in the dataset represents a unique customer and includes demographic information, service subscriptions, billing details, and churn status.
The dataset helps identify patterns that influence whether customers stay with the company or leave the service.
### Dataset Size
- Total Records: ~7,000+ customers
- Total Features: 20+ columns including demographic, service, and billing information

Columns Description:

1. customerID: A unique ID that identifies each customer.
2. gender: The customer’s gender: Male (1), Female (0).
3. SeniorCitizen: Indicates if the customer is 65 or older: No (0), Yes (1).
4. Partner: Service contract is resold by the partner: No (0), Yes (1).
5. Dependents: Indicates if the customer lives with any dependents: No (0), Yes (1).
6. Tenure: Indicates the total amount of months that the customer has been with the company.
7. PhoneService: Indicates if the customer subscribes to home phone service with the company: No (0), Yes (1).
8. MultipleLines: Indicates if the customer subscribes to multiple telephone lines with the company: No (0), Yes (1).
9. InternetService: Indicates if the customer subscribes to Internet service with the company: No (0), DSL (1), Fiber optic (2).
10. OnlineSecurity: Indicates if the customer subscribes to an additional online security service provided by the company: No (0), Yes (1), NA (2).
11. OnlineBackup: Indicates if the customer subscribes to an additional online backup service provided by the company: No (0), Yes (1), NA (2).
12. DeviceProtection: Indicates if the customer subscribes to an additional device protection plan for their Internet equipment provided by the company: No (0), Yes (1), NA (2).
13. TechSupport: Indicates if the customer subscribes to an additional technical support plan from the company with reduced wait times: No (0), Yes (1), NA (2).
14. StreamingTV: Indicates if the customer uses their Internet service to stream television programing from a third party provider: No (0), Yes (1), NA (2). The company does not charge an additional fee for this service.
15. StreamingMovies: Indicates if the customer uses their Internet service to stream movies from a third party provider: No (0), Yes (1), NA (2). The company does not charge an additional fee for this service.
16. Contract: Indicates the customer’s current contract type: Month-to-Month (0), One Year (1), Two Year (2).
17. PaperlessBilling: Indicates if the customer has chosen paperless billing: No (0), Yes (1).
18. PaymentMethod: Indicates how the customer pays their bill: Bank transfer - automatic (0), Credit card - automatic (1), Electronic cheque (2), Mailed cheque (3).
19. MonthlyCharges: Indicates the customer’s current total monthly charge for all their services from the company.
20. TotalCharges: Indicates the customer’s total charges.
21. Churn: Indicates if the customer churn or not: No (0), Yes (1).

## Data Analysis Approach – SQL
SQL was used to explore the dataset, validate the data, and identify key patterns related to customer churn before creating visualizations in Power BI.
1. Dataset Exploration
The dataset was first explored to understand its structure and confirm the total number of records.
Result:
The dataset contains 7000+ customer records, with each row representing a unique telecom customer and their service details.
2. Churn Distribution Analysis
SQL was used to calculate how many customers churned and how many remained active.
Result:
A significant portion of customers had churned, indicating a notable customer retention issue that required deeper analysis.
3. Contract Type Analysis
Customer churn was analyzed across different contract types to determine whether contract duration influences retention.
Result:
Customers with month-to-month contracts showed the highest churn rates, while one-year and two-year contracts had significantly lower churn.
4. Tenure Analysis
Customers were grouped based on the number of months they stayed with the company.
Result:
Customers with lower tenure (especially within the first year) were much more likely to churn compared to long-term customers.
5. Service Subscription Analysis
Additional services such as online security, device protection, and technical support were analyzed to determine their effect on churn.
Result:
Customers without additional support or security services showed higher churn rates, suggesting that value-added services may help improve retention.
6. Billing and Revenue Analysis
Monthly charges and total charges were analyzed to understand revenue patterns among churned customers.
Result:
Customers with higher monthly charges tended to have slightly higher churn rates, indicating pricing sensitivity among certain customer segments.

## Data Visualization Analysis – Power BI

The dataset was visualized using Microsoft Power BI to transform the SQL findings into interactive dashboards.
The dashboard is divided into four analytical pages, each focusing on a different aspect of customer churn behavior.

### 1. Customer Churn Overview

This page provides a high-level summary of the telecom customer dataset and churn performance.

Key Metrics Displayed

* Total Customers: 7032

* Total Revenue: $16.06M

* Churned Customers: 1869

* Overall Churn Rate: 26.58%

* Revenue Lost Due to Churn: $2.86M

#### Visual Analysis

**Customer Distribution by Contract Type**

The majority of customers are on month-to-month contracts, making it the largest customer segment.

**Churn Rate by Contract Type**

Month-to-month contracts show the highest churn rate, while two-year contracts have the lowest churn, indicating that long-term contracts improve customer retention.

**Revenue by Contract Type**

Two-year contracts generate the highest revenue contribution, showing that long-term customers are more valuable.

**Churn Rate by Tenure Group**

Customers with 0–12 months tenure have the highest churn rate, while churn gradually decreases as tenure increases.

**Contract vs Tenure Risk Matrix**

This matrix highlights that early-tenure customers with month-to-month contracts represent the highest churn risk group.

### 2. Service Impact on Customer Churn

This page analyzes how telecom services influence customer churn behavior.

**Internet Service Impact**

Customers using Fiber Optic internet show higher churn rates compared to DSL users.
Customers with no internet service churn less frequently, likely due to simpler service plans.

**Online Security**

Customers without online security services churn significantly more than those who have it.

**Online Backup**

Customers without backup services show higher churn rates, suggesting that additional services improve customer retention.

**Tech Support**

Customers who do not receive technical support have much higher churn, indicating the importance of customer support services.

**Device Protection**

Customers without device protection services churn more often, which suggests that service bundles may increase customer loyalty.

### 3. Key Insights

The analysis revealed several important patterns influencing customer churn.

**Contract Type is the Biggest Churn Driver**

Month-to-month contracts have the highest churn rate, while two-year contracts provide the best customer retention and highest revenue contribution.

**Early-Tenure Customers are the Most Vulnerable**

Customers in their first 12 months are the most likely to churn, indicating that the early customer experience is critical.

**Lack of Support Services Increases Churn**

Customers without Tech Support, Online Security, or Online Backup services tend to leave the service more frequently.

**Internet Service Type Influences Churn**

Customers using Fiber Optic internet tend to churn more compared to DSL users, possibly due to higher pricing or service expectations.

### 4. Business Recommendations

Based on the analysis, several strategies can help reduce churn and improve customer retention.

**Encourage Long-Term Contracts**

Offer discounts or incentives for one-year and two-year contracts to reduce churn among month-to-month customers.

**Improve Early Customer Experience**

Focus on customer onboarding programs and engagement strategies during the first year to reduce early churn.

**Promote Service Bundles**

Encourage customers to subscribe to value-added services such as Tech Support, Online Security, and Device Protection, which appear to improve retention.

**Improve Fiber Optic Customer Satisfaction**

Investigate why Fiber Optic customers churn more frequently and improve service quality or pricing strategies.


## Key Insights and Business Recommendations

The analysis of the telecom customer dataset revealed several patterns related to customer churn behavior. By examining contract types, tenure groups, service subscriptions, and internet service usage, the dashboard identified key drivers of churn and opportunities for improving customer retention.

### 1. Contract Type is the Biggest Driver of Churn

#### Key Insight

Contract type has the strongest influence on customer churn behavior.

Customers with month-to-month contracts show the highest churn rate at approximately 43%, while customers on longer contracts show significantly lower churn rates.

* One-year contracts: ~11% churn

*Two-year contracts: ~3% churn

This indicates that customers with flexible short-term contracts are more likely to switch providers, while customers who commit to longer contracts tend to remain loyal.

#### Business Recommendation

Telecom companies should encourage customers to move from month-to-month contracts to longer-term contracts.

Possible strategies include:

* Offering discounted pricing for one-year and two-year contracts

* Providing loyalty rewards or service upgrades for long-term customers

* Creating special contract upgrade campaigns targeting month-to-month customers

Increasing the number of long-term contracts would help reduce churn and stabilize revenue streams.

### 2. Early-Tenure Customers Are the Most Vulnerable

#### Key Insight

Customer tenure plays a critical role in churn behavior.

Customers in the first 12 months show the highest churn rate at approximately 47%, which is significantly higher than other tenure groups.

Churn rates decrease steadily as tenure increases:

* 13–24 months: ~28% churn

* 25–48 months: ~20% churn

* 48+ months: ~9% churn

This trend suggests that customers who stay longer gradually become more loyal and less likely to leave the service.

#### Business Recommendation

Companies should focus on customer retention strategies during the early stages of the customer lifecycle.

**Recommended actions include:**

- Improving customer onboarding experiences

- Providing welcome offers and loyalty incentives for new customers

- Sending early engagement communications and personalized offers

- Monitoring customer satisfaction during the first year

Strengthening relationships with new customers can significantly reduce early churn.

### 3. Lack of Support Services Increases Churn

#### Key Insight

Customers who do not subscribe to additional service features tend to churn more frequently.

The analysis shows:

- Customers without Tech Support have a churn rate of around 42%, compared to 15% for customers who have Tech Support.

- Customers without Online Security also show a churn rate of around 42%, compared to 15% for those using the service.

- Customers without Online Backup show churn rates of around 40%, compared to about 22% for customers with backup services.

These results indicate that customers using additional services tend to be more engaged and less likely to leave the company.

#### Business Recommendation

Telecom providers should promote service bundles and value-added services.

 Possible strategies include:

- Offering discounted bundles that include security and support services

- Providing free trial periods for additional services

- Promoting service upgrades during customer support interactions

Encouraging customers to adopt more services can improve customer engagement and retention.

### 4. Fiber Optic Customers Show Higher Churn

#### Key Insight

Customers using Fiber Optic internet services show higher churn rates compared to DSL users.

This may occur due to:

- Higher pricing for fiber services

- Higher expectations for service quality

- Strong competition in high-speed internet markets

Interestingly, customers with no internet service churn less frequently, possibly because they are on simpler and lower-cost service plans.

#### Business Recommendation

Telecom companies should focus on improving the customer experience for Fiber Optic users.

Possible actions include:

- Improving network performance and service reliability

- Providing premium customer support for fiber customers

- Offering loyalty discounts or bundled services

Improving satisfaction among premium service users can help reduce churn in high-value customer segments.

### 5. Customer Churn Has a Significant Revenue Impact

#### Key Insight

Customer churn directly affects company revenue.

The analysis shows:

* Total revenue generated: $16.06M

* Revenue lost due to churn: $2.86M

A large portion of this revenue loss comes from month-to-month contract customers, who represent the largest and most unstable customer segment.

#### Business Recommendation

Companies should prioritize retention strategies for high-risk customer segments.

Key actions include:

- Identifying customers likely to churn using predictive analytics

- Offering targeted retention campaigns

- Providing personalized promotions or loyalty benefits

Reducing churn even slightly can significantly increase long-term revenue stability.

