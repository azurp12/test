{{ config(database = "snowflake_sample_data") }}
SELECT o.o_orderkey as order_id
,o.o_orderpriority as priority
,o.o_clerk as clerk
,o.o_comment as comment
FROM {{ source('TPCH_SF1000', 'Orders')}} AS o
