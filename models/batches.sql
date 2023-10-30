{{ config(materialized='incremental') }}

select nextval('batch.batches_id_seq'::regclass) as id,
    0 as created_by,now() as created_date, 
    0 as modified_by, now() as modified_date, 
    '{{ var('source_uuid') }}' as source_uuid,
    'new' as status,
    (select max(_airbyte_normalized_at) from {{ var('source_stream') }}) as normalized_at,
    '{{ var('source_stream') }}' as entity_name