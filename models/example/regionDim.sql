{{ config(database = "snowflake_sample_data") }}
SELECT r.r_regionkey as key
,r.r_name as name
,r.r_comment as comment

FROM {{ source('TPCH_SF1000', 'Region')}} AS r
