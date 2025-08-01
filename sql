---- in every data i check the excel sheet and check info tht needs to be aggrigated,i aggrigate it and do a case statement on that
SELECT * FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

--EDA- Understading the data provided
--Checking value in the colums

SELECT DISTINCT GENDER
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT DISTINCT Item_purchased
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT DISTINCT Category
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT DISTINCT Location 
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

---Analysis based on Age (aggrigation )
SELECT Max (Age)
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT MIN (Age)
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

CASE
WHEN age BETWEEN 18 AND 30 THEN 'Youth'
WHEN age BETWEEN 31 AND 40 THEN 'Adult'
WHEN age BETWEEN 41 AND 50 THEN 'Senior'
ELSE 'Elder'
End AS Age_bucket;
-----------------------------------------------------------

SELECT Max ("Purchase Amount (USD)")
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT MIN ("Purchase Amount (USD)")
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

CASE
WHEN ("Purchase Amount (USD)"BETWEEN 20 AND 30 THEN'01.20-30:Low Spend'
WHEN ("Purchase Amount (USD)"BETWEEN 31 AND 50 THEN'02.31-50: Medium  Spend'
WHEN ("Purchase Amount (USD)"BETWEEN 51 AND 70 THEN'03.51-70: High Spend'
ELSE '04. 70 + Very High speng'
END AS Spend_buckets
---------------------------------------------------------------------------

SELECT MIN (review_rating)
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT MAX (review_rating)
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

SELECT DISTINCT review_rating
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;

CASE

WHEN review_rating BETWEEN 2.5 AND 3.0 THEN 'Bad'
WHEN review_rating BETWEEN 3.1 AND 4.0 THEN 'Neutral'
ELSE'Good'
END AS review_rating_bucket;
-----------------------------------------------------------------------------
---TO_DATE FUNCTION covert dates into current date

SELECT TO_DATE(processdate) AS Purchase_date,
DAYNAME (TO_DATE (processdate))AS day_name,
MONTHNAME(TO_DATE(processdate)) AS month_name,
TO_VARCHAR(TO_DATE(processdate),'YYYY-MM') AS Month_id,
DAYOFMONTH(TO_DATE(processdate)) AS day_of_month,
YEAR (TO_DATE(processdate)) AS year,

---Aggrigations
SUM("Purchase Amount (USD)")AS Revenue,
COUNT (DISTINCT CUSTOMER_ID) as Number_of_customers,

SUBSCRIPTION_STATUS,
SHIPPING_TYPE,
DISCOUNT_APPLIED,
PROMO_CODE_USED,
PREVIOUS_PURCHASES,
CASE
   WHEN review_rating BETWEEN 2.5 AND 3.0 THEN 'Bad'
   WHEN review_rating BETWEEN 3.1 AND 4.0 THEN 'Neutral'
   ELSE'Good'
   END AS review_rating_bucket,
   
 CASE
    WHEN ("Purchase Amount (USD)"BETWEEN 20 AND 30 THEN'01.20-30:Low Spend'
    WHEN ("Purchase Amount (USD)"BETWEEN 31 AND 50 THEN'02.31-50: Medium  Spend'
    WHEN ("Purchase Amount (USD)"BETWEEN 51 AND 70 THEN'03.51-70: High Spend'
    ELSE '04. 70 + Very High speng'
    END AS Spend_buckets,

 CASE
    WHEN age BETWEEN 18 AND 30 THEN 'Youth'
    WHEN age BETWEEN 31 AND 40 THEN 'Adult'
    WHEN age BETWEEN 41 AND 50 THEN 'Senior'
    ELSE 'Elder'
    End AS Age_bucket,
FROM SHOPPING_TRENDS.SALES.SHOP_TRANSACTIONS;















