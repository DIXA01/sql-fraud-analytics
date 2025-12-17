SELECT COUNT(*) AS total_transactions
FROM transactions;
SELECT 
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions;
SELECT 
  DATE(transaction_time) AS transaction_date,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY transaction_date
ORDER BY transaction_date;
SELECT 
  country,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY country
ORDER BY fraud_rate DESC, total_transactions DESC;
SELECT 
  channel,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY channel
ORDER BY fraud_rate DESC, total_transactions DESC;
SELECT 
  merchant_category,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY merchant_category
ORDER BY fraud_rate DESC, total_transactions DESC;
SELECT 
  bin_country,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY bin_country
ORDER BY fraud_rate DESC, total_transactions DESC;
SELECT 
  STRFTIME('%H', transaction_time) AS hour,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY hour
ORDER BY hour;
SELECT 
  is_fraud,
  COUNT(*) AS total_transactions,
  ROUND(AVG(amount), 2) AS avg_amount,
  ROUND(SUM(amount), 2) AS total_amount
FROM transactions
GROUP BY is_fraud;
SELECT 
  avs_match,
  cvv_result,
  three_ds_flag,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY avs_match, cvv_result, three_ds_flag
HAVING total_transactions >= 50
ORDER BY fraud_rate DESC, total_transactions DESC;
SELECT
  country,
  bin_country,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) AS fraud_transactions,
  ROUND(1.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*), 4) AS fraud_rate
FROM transactions
GROUP BY country, bin_country
HAVING total_transactions >= 50
ORDER BY fraud_rate DESC, total_transactions DESC;
