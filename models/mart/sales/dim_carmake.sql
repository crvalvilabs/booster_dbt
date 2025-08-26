{{
    config(
        tags=["dash_sales_bi"]
    )
}}

SELECT 
RANK() OVER (ORDER BY CARMAKE) AS ID_CARMAKE,
CARMAKE
FROM {{ ref("psg_monthly_sales_make") }}
GROUP BY CARMAKE