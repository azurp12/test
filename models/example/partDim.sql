{{ config(database = "snowflake_sample_data") }}
SELECT p.p_partkey
,p.p_name as name
,p.p_brand as brand
,p.p_type as type
,p.p_comment as comment
,p.p_container as container
,p.p_mfgr

FROM {{ source('TPCH_SF1000', 'Part')}} AS p
