**Dashboard Specification**

**Data Source**

Source File: data/orders\_clean.csv

|Field Name<br />|Type|
|-|-|
|order\_id|Dimension|
|order\_month|Dimension|
|clean\_first\_name|Dimension|
|clean\_last\_name|Dimension<br />|
|region<br />|Dimension|
|rep\_name|Dimension|
|item|Dimension|
|category|Dimension|
|status|Dimension|
|unit\_price|Measure|
|quantity|Measure|
|amount|Measure|
|revenue\_calc|Measure|





**KPI Cards**

**Total Revenue**

Value: ₹346,200

Definition: Sum of amount.

Validation: Matches Part A q05 total\_revenue and Part B pivot grand totals.



**Total Units Sold**

Value: 106

Definition: Sum of quantity.



**Worksheet 1 – Revenue by Region**

**Chart Type: Bar Chart**

Rows:

&#x09;• region

Columns:

&#x09;• SUM(amount)

Colour:

&#x09;• region

Reason: Bar charts allow straightforward comparison of revenue between regions.



**Data**

|**Region**|**Revenue**|
|-|-|
|North|119300|
|South|82500|
|West|74900|
|East|69500|





**Worksheet 2 – Revenue by Category**

Chart Type: Bar Chart

Rows:

&#x09;• category

Columns:

&#x09;• SUM(amount)

Colour:

&#x09;• category

Reason: Bar charts clearly compare category performance.



**Data**

|Category|Revenue|
|-|-|
|Electronics|142300|
|Home|126400|
|Apparel|77500|
|||



**Worksheet 3 – Revenue Trend by Month and Category**

Chart Type: Line Chart

Columns:

&#x09;• order\_month

Rows:

&#x09;• SUM(amount)

Colour:

&#x09;• category

Reason: A line chart highlights trends and changes across months.



**Worksheet 4 – Region x Category Detail**

Chart Type: Text Table

Rows:

&#x09;• region

&#x09;• category

Text:

&#x09;• SUM(amount)

Reason: A detail table provides precise underlying values supporting the visualizations.



**Data**

|Region|Category|Revenue|
|-|-|-|
|East|Apparel|10600|
|East|Electronics|21400|
|East|Home|37500|
|North|Apparel|19400|
|North|Electronics|73400|
|North|Home|26500|
|South|Apparel|10000|
|South|Electronics|28700|
|South|Home|43800|
|West|Apparel|37500|
|West|Electronics|18800|
|West|Home|18600|



**Dashboard Layout**

**Top Section:**

Horizontal Container

&#x09;• KPI Card: Total Revenue

&#x09;• KPI Card: Total Units Sold

**Second Section:**

Horizontal Container

&#x09;• Category Filter

The category filter is positioned directly below the KPI cards and applied to all worksheets using the data source.

**Third Section:**

Vertical Container

&#x09;• Revenue Trend by Month and Category

**Fourth Section:**

Horizontal Container

&#x09;• Revenue by Region

&#x09;• Revenue by Category

**Fifth Section:**

Vertical Container

&#x09;• Region x Category Detail

Use as Filter Behaviour:

When a user clicks a bar in Revenue by Region with “Use as Filter” enabled, all other worksheets update to display only values for the selected region.



**Visualization Summary**

The dashboard presents completed-order revenue performance across regions, categories and months. It combines KPI cards with trend, comparison and detail views to support management decision-making and promotional planning.



**Summary Analysis**

&#x09;1. North generated the highest revenue at ₹119,300, outperforming South (₹82,500) by ₹36,800 and East (₹69,500) by ₹49,800.

&#x09;2. Electronics was the strongest category with ₹142,300 in revenue, followed by Home at ₹126,400 and Apparel at ₹77,500.

&#x09;3. Revenue increased significantly from ₹93,100 in October 2026 to ₹154,800 in November 2026, representing the strongest month in the dataset.

&#x09;4. South generated the largest Home-category revenue of ₹43,800, while North generated the largest Electronics revenue of ₹73,400.



**Recommendations**

**Recommendation 1**

Region: North

Category: Electronics

Action: Increase promotional spending and inventory support for Electronics products.

Supporting Number: North generated ₹73,400 in Electronics revenue.

Success Metric: Electronics revenue growth in North and units sold.

**Recommendation 2**

Region: South

Category: Home

Action: Run targeted Home-product campaigns and bundle offers.

Supporting Number: South generated ₹43,800 in Home revenue.

Success Metric: Home-category revenue and order count growth.

**Recommendation 3**

Region: East

Category: Apparel

Action: Launch discount campaigns and improve product visibility.

Supporting Number: East Apparel revenue was only ₹10,600.

Success Metric: Apparel revenue growth and average order value.



**Reconciliation**

|**Source**|**Revenue**|
|-|-|
|KPI Card – Total Revenue|346200|
|Revenue by Region Total|346200|
|Revenue by Category Total|346200|
|Part B Pivot Grand Total|346200|



All values reconcile successfully.

