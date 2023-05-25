{{ config(database = "snowflake_sample_data") }}
SELECT s.s_suppkey as supplier_key
,s.s_name as name
,s.s_comment as comment
,s.s_phone as phone

FROM {{ source('TPCH_SF1000', 'Supplier')}} AS s
LEFT JOIN {{ ref('nationDim')}} n
    ON n.N_NATIONKEY = s.S_NATIONKEY
