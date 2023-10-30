

select nextval('batch.batches_id_seq'::regclass) as id,
    0 as created_by,now() as created_date, 
    0 as modified_by, now() as modified_date, 
    '161903da-cc99-465f-9bd9-42d02128f870' as source_code,
    'new' as status