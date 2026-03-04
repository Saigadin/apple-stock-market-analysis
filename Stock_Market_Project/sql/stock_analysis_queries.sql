Create database stock_analysis;
use stock_analysis;

CREATE TABLE apple_stock (
    Date DATE,
    Open FLOAT,
    High FLOAT,
    Low FLOAT,
    Close FLOAT,
    Volume BIGINT,
    Daily_Return FLOAT,
    MA30 FLOAT,
    Price_Change FLOAT
);

-- Dataset Size

SELECT COUNT(*) AS total_rows
FROM apple_stock;

-- Average Closing Price

SELECT AVG(Close) AS average_closing_price
FROM apple_stock;

-- Highest Trading Volume Day

SELECT Date, Volume
FROM apple_stock
ORDER BY Volume DESC
LIMIT 5;


-- Most Volatile Days
-- Stock volatility = High price − Low price.

SELECT Date, (High - Low) AS Volatility
FROM apple_stock
ORDER BY Volatility DESC
LIMIT 5;


-- Best Performing Days

SELECT Date, Daily_Return
FROM apple_stock
ORDER BY Daily_Return DESC
LIMIT 5;


-- Monthly Average Price

SELECT 
YEAR(Date) AS Year,
MONTH(Date) AS Month,
AVG(Close) AS Avg_Close
FROM apple_stock
GROUP BY Year, Month
ORDER BY Year, Month;


-- Highest Closing Price

SELECT Date, Close
FROM apple_stock
ORDER BY Close DESC
LIMIT 5;


-- Lowest Closing Price

SELECT Date, Close
FROM apple_stock
ORDER BY Close ASC
LIMIT 5;


-- Average Daily Return

SELECT 
    AVG(Daily_Return) AS average_daily_return
FROM
    apple_stock;
    
    
-- Highest Daily Gain

SELECT Date, Daily_Return
FROM apple_stock
ORDER BY Daily_Return DESC
LIMIT 1;


-- Highest Price Range Days

SELECT Date, (High - Low) AS Price_Range
FROM apple_stock
ORDER BY Price_Range DESC
LIMIT 5;

