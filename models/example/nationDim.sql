{{ config(database = "snowflake_sample_data") }}
SELECT n.nationkey as nation_key
,n.n_name as name
,n.n_comment as comment
FROM {{ source('TPCH_SF1000', 'Nation')}} AS n
