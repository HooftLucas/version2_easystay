connection: "easystay_lu_version2"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: easy_stay_lu_version2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: easy_stay_lu_version2_default_datagroup

explore: dim_location {}

explore: fact_easystay {}

explore: dim_room {}

