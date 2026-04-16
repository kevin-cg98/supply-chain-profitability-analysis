# Supply Chain Performance & Profitability Analysis

## Overview
This project analyzes the impact of discounting on profitability across regions and sub-categories using Tableau, SQL, and Excel.

## Business Question

How do discounting practices affect profitability across regions and product sub-categories?

## SQL Analysis
Key SQL queries used in this project can be found in the [analysis.sql](analysis.sql) file.

## Objective
To identify pricing inefficiencies, loss-making products, and operational patterns affecting profit margins.

## Tools Used
- Tableau (Data Visualization)
- SQL (Data Analysis)
- Excel (Data Cleaning & Exploration)

## Key Insights
- In 66.7% of of sub-categories, high discount levels (>21%) are strongly associated with negative or near-zero profit margins.
- 12 out of 13 profitable sub-categories maintain an average discount below 16%, with the top 3 remaining under 8%.
- Certain sub-categories show significant margin erosion despite strong sales performance.
- Regional differences highlight inconsistencies in pricing and operational strategies that impact overall profitability.
- Approximately 300 products consistently generate negative profit, with 81% concentrated in the Furniture and Office Supplies categories, indicating structural pricing or cost issues.
- Of these loss-making products, just four sub-categories—Binders (50), Tables (42), Storage (39), and Bookcases (33)—account for 51% of the total.
- Eliminating the 15 least profitable products would result in savings of approximately $35,000, increasing to nearly $70,000 when excluding the 100 least profitable products.

## Recommendation
Reduce discount levels in underperforming sub-categories and temporarily discontinue the lowest-performing products while conducting targeted analysis to optimize pricing and improve margins.

## Dashboard
[View Tableau Dashboard](https://public.tableau.com/views/ImpactofDiscountingonProfitabilitySupplyChainPerformance/mpactofDiscountingonProfitabilityAcrossProductCategories?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
