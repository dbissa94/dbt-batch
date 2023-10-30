
      insert into "postgres"."batch"."batches" ("id", "created_by", "created_date", "modified_by", "modified_date", "status", "source_code")
    (
        select "id", "created_by", "created_date", "modified_by", "modified_date", "status", "source_code"
        from "batches__dbt_tmp141453813527"
    )


  