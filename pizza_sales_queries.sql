/* =====================================================
   PIZZA SALES ANALYSIS - SQL QUERIES
   Database: pizza_sales.db (SQLite)
   Table: pizza_sales
   =====================================================
   Ye file beginner-friendly hai. Har query ke upar
   comment mein likha hai ki wo query kya karti hai
   aur business mein iska kya use hai.
   ===================================================== */


/* ---------------------------------------------------
   QUERY 1: Total Revenue
   Kya karta hai: Saari sales ka total revenue nikalta hai
   Business use: Overall business performance dekhne ke liye
--------------------------------------------------- */
SELECT ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza_sales;


/* ---------------------------------------------------
   QUERY 2: Total Orders aur Total Pizzas Sold
   Kya karta hai: Kitne unique orders aaye aur kitne
   pizzas total becche gaye
   Business use: Order volume samajhne ke liye
--------------------------------------------------- */
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;


/* ---------------------------------------------------
   QUERY 3: Best-Selling Pizza (by Quantity)
   Kya karta hai: Har pizza ki total quantity sold
   nikal ke sabse zyada bikne wali pizza dikhata hai
   Business use: Popular items identify karne ke liye
   (menu planning, stock management)
--------------------------------------------------- */
SELECT
    pizza_name,
    SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


/* ---------------------------------------------------
   QUERY 4: Highest Revenue Generating Pizza
   Kya karta hai: Har pizza ne total kitna revenue
   generate kiya, sabse zyada wale top par
   Business use: Profitable items identify karna
--------------------------------------------------- */
SELECT
    pizza_name,
    ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;


/* ---------------------------------------------------
   QUERY 5: Revenue by Pizza Category
   Kya karta hai: Classic, Veggie, Supreme, Chicken
   categories mein se konsi sabse zyada revenue laati hai
   Business use: Category-level performance dekhne ke liye
--------------------------------------------------- */
SELECT
    pizza_category,
    ROUND(SUM(total_price), 2) AS category_revenue,
    SUM(quantity) AS category_quantity
FROM pizza_sales
GROUP BY pizza_category
ORDER BY category_revenue DESC;


/* ---------------------------------------------------
   QUERY 6: Sales by Pizza Size
   Kya karta hai: Small, Medium, Large mein se kaunsa
   size sabse zyada order hota hai
   Business use: Size-wise demand samajhne ke liye
--------------------------------------------------- */
SELECT
    pizza_size,
    COUNT(*) AS orders_count,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_revenue DESC;


/* ---------------------------------------------------
   QUERY 7: Average Order Value
   Kya karta hai: Har order ka average value nikalta hai
   Business use: Customer spending pattern samajhna
--------------------------------------------------- */
SELECT
    ROUND(SUM(total_price) * 1.0 / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM pizza_sales;


/* ---------------------------------------------------
   QUERY 8: Busiest Hour of the Day
   Kya karta hai: Order_time se hour nikal ke dekhta hai
   ki din ke kis time sabse zyada orders aate hain
   Business use: Staff scheduling aur peak hours
   samajhne ke liye
--------------------------------------------------- */
SELECT
    HOUR(order_time) AS order_hour,
    COUNT(*) AS num_orders
FROM pizza_sales
GROUP BY order_hour
ORDER BY num_orders DESC;


/* ---------------------------------------------------
   QUERY 9: Orders with More than 3 Pizzas
   Kya karta hai: Wo orders dikhata hai jinme 3 se
   zyada pizzas ka combined quantity hai (bade orders)
   Business use: Bulk/party orders identify karna
--------------------------------------------------- */
SELECT
    order_id,
    SUM(quantity) AS pizzas_in_order,
    ROUND(SUM(total_price), 2) AS order_value
FROM pizza_sales
GROUP BY order_id
HAVING SUM(quantity) > 3
ORDER BY pizzas_in_order DESC;


/* ---------------------------------------------------
   QUERY 10: Top 5 Most Expensive Pizzas (by unit price)
   Kya karta hai: Sabse mehenge pizzas dikhata hai
   Business use: Premium pricing analysis
--------------------------------------------------- */
SELECT DISTINCT
    pizza_name,
    pizza_size,
    unit_price
FROM pizza_sales
ORDER BY unit_price DESC
LIMIT 5;
