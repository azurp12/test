{{ config(database = "snowflake_sample_data") }}
SELECT ps.ps_partkey as part_key
, ps.ps_suppkey as supplier_key
, ps.ps_supplycost as supplier_cost
FROM {{ source('TPCH_SF1000', 'Partsupp')}} AS ps
LEFT JOIN {{ ref('partDim')}} p
    ON ps.part_key = p.part_key
LEFT JOIN {{ ref('supplierDim')}} s
    ON s.s_suppkey = ps.ps_suppkey
