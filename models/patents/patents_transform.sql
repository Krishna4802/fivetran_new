SELECT 
    patent_number, UPPER(patent_name) AS patent_name_upper, patent_date, EXTRACT(YEAR FROM patent_date) AS patent_year 
FROM {{ source('patents_transform', 'PATENT_TABLE') }} 