-- =====================================
-- Portfolio Overview KPIs
-- =====================================

SELECT 
    COUNT(*) AS total_accounts,
    ROUND(AVG(utilisation_rate), 4) AS avg_utilisation,
    ROUND(AVG(CASE WHEN days_past_due > 0 THEN 1 ELSE 0 END), 4) 
        AS delinquency_rate,
    ROUND(AVG(default_flag), 4) AS default_rate
FROM portfolio_view;


CREATE OR REPLACE VIEW portfolio_bi AS
SELECT
    customer_id,
    segment,
    credit_score,
    employment_status,
    income,
    credit_limit,
    balance,
    utilisation_rate,
    days_past_due,
    default_flag,
    
    CASE 
        WHEN 
            (CASE 
                WHEN utilisation_rate > 0.85 THEN 2
                WHEN utilisation_rate > 0.70 THEN 1
                ELSE 0
             END
             +
             CASE 
                WHEN days_past_due > 0 THEN 2
                ELSE 0
             END
             +
             CASE 
                WHEN credit_score < 600 THEN 1
                ELSE 0
             END
            ) >= 3 THEN 'High'
        WHEN 
            (CASE 
                WHEN utilisation_rate > 0.85 THEN 2
                WHEN utilisation_rate > 0.70 THEN 1
                ELSE 0
             END
             +
             CASE 
                WHEN days_past_due > 0 THEN 2
                ELSE 0
             END
             +
             CASE 
                WHEN credit_score < 600 THEN 1
                ELSE 0
             END
            ) = 2 THEN 'Medium'
        ELSE 'Low'
    END AS risk_level

FROM portfolio_view;