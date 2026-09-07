# Ohayo_pizzas_Sales_analysis
## 1. Introduction
### Ohayo Pizzas is a pizza restaurant business that captures every customer order through a relational database spanning four linked tables: orders, order details, pizzas, and pizza types. Over the course of 2015, the business processed 21,350 orders comprising 48,620 order line items, selling a total of 49,574 pizzas across 32 unique pizza varieties spread over 4 categories — Classic, Chicken, Supreme, and Veggie.
### This report uses that transactional data to understand how the business performed across the year and where its revenue is really coming from, providing a foundation for menu, staffing, and promotional decisions.
## 2. Objective
### The objective of this sales analysis is to evaluate Ohayo Pizzas' performance over 2015 in order to:
#### ●	Determine total revenue, order volume, and average order value
#### ●	Identify best- and worst-performing pizzas by revenue and quantity sold
#### ●	Understand which categories and sizes drive the most sales
#### ●	Detect seasonal, monthly, and day-of-week ordering patterns
#### ●	Provide data-backed recommendations to support menu, staffing, and promotional decisions
## 3. Dataset Description
### The dataset consists of four related CSV tables, joined via order_id, pizza_id, and pizza_type_id to build a complete transactional view of every sale. Each table is described individually below.
## 3.1 orders.csv (21,350 rows)
### Stores one record per customer order, capturing when each order was placed.
### Field	Description
### order_id	Unique identifier for each customer order (primary key)
### date	Calendar date the order was placed (YYYY-MM-DD)
### time	Time of day the order was placed (HH:MM:SS)


 
## 3.2 order_details.csv (48,620 rows)
### Stores the individual line items within each order — i.e. which pizzas, and how many, were part of a given order. This is the table that links orders to the pizzas purchased.
### Field	Description
### order_details_id	Unique identifier for each order line item (primary key)
### order_id	Identifier linking this line item back to its parent order (foreign key → orders.csv)
### pizza_id	Identifier of the specific pizza variant ordered (foreign key → pizzas.csv)
### quantity	Number of units of that pizza variant purchased in this line item

## 3.3 pizzas.csv (96 rows)
### Stores each purchasable pizza variant — a combination of a pizza type and a size — along with its price.
### Field	Description
### pizza_id	Unique identifier for a specific pizza variant, e.g. size and type combined (primary key)
### pizza_type_id	Identifier linking this variant to its pizza type (foreign key → pizza_types.csv)
### size	Size of the pizza — Small (S), Medium (M), Large (L), X-Large (XL), or XX-Large (XXL)
### price	Selling price of the pizza at this size, in dollars

## 3.4 pizza_types.csv (32 rows)
### Stores descriptive information about each distinct pizza recipe, independent of size or price.
### Field	Description
### pizza_type_id	Unique identifier for each pizza recipe/type (primary key)
### name	Display name of the pizza, e.g. "The Barbecue Chicken Pizza"
### category	Menu category the pizza belongs to — Classic, Chicken, Supreme, or Veggie
## ingredients	Comma-separated list of ingredients used in the pizza

### The data spans the full 2015 calendar year (January 1 – December 31), giving a complete view of a single year of trading.
### 4. Analysis & Key Findings
## 4.1 Overall Performance
### Metric	Value
### Total Revenue	$817,860.05
### Total Orders	21,350
### Total Pizzas Sold	49,574
### Average Order Value	$38.31

## 4.2 Revenue by Category
### Classic pizzas generated the most category revenue ($220,053), narrowly ahead of Supreme ($208,197), Chicken ($195,920), and Veggie ($193,690). The spread across categories is fairly balanced, but Classic and Supreme together account for just over half of total sales.4.3 Revenue by Size
### Large (L) pizzas dominate, contributing $375,319 — about 46% of total revenue — more than Medium and Small combined. This suggests customers consistently choose to upsize, making Large the anchor size for the menu.

## 4.4 Monthly Revenue Trend
### Revenue is fairly stable across the year with no extreme seasonality. July was the strongest month ($72,558), while September and October were the weakest (around $64,000 each).

## 4.5 Revenue by Day of Week
### Friday ($136,074) and Thursday ($123,529) are the busiest days, while Sunday is the slowest ($99,204) — a clear weekly demand pattern that is useful for staffing and inventory planning.

## 4.6 Top-Performing Pizzas
### The Thai Chicken Pizza is the single highest revenue earner ($43,434), followed closely by The Barbecue Chicken Pizza ($42,768) and The California Chicken Pizza ($41,410). By volume, The Classic Deluxe Pizza sells the most units (2,453), narrowly ahead of The Barbecue Chicken Pizza (2,432) and The Hawaiian Pizza (2,422) — indicating that premium/specialty pizzas earn more per unit even at comparable or slightly lower volumes.

## 5. Conclusion
### ●	Ohayo Pizzas generated $817,860.05 in total revenue from 21,350 orders in 2015, at an average order value of $38.31.
### ●	Classic and Supreme pizzas are the top revenue categories, though all four categories are closely matched.
### ●	Large-size pizzas are the clear revenue driver, contributing nearly half of all sales.
### ●	Chicken-category specialty pizzas (Thai Chicken, Barbecue Chicken, California Chicken) punch above their weight, generating outsized revenue relative to volume.
### ●	Demand peaks on Thursday through Saturday and dips on Sunday, a pattern that should inform staffing and inventory decisions.
### ●	Monthly revenue is stable year-round with no strong seasonal swings, aside from a modest summer (July) peak and a autumn (Sep–Oct) dip.

#### Recommendation: Ohayo Pizzas should focus promotions on driving further Large-size upgrades, protect and market its top Chicken-category pizzas which deliver strong revenue per unit, and align staffing and inventory more heavily toward Thursday–Saturday demand.



