SELECT 
    patent_number, UPPER(patent_name) AS patent_name_upper, EXTRACT(YEAR FROM patent_date) AS patent_year 
FROM {{ source('pat_transform', 'PATENT_TABLE') }} 