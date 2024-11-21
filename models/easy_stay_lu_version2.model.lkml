connection: "easystay_lu_version2"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: easy_stay_lu_version2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: easy_stay_lu_version2_default_datagroup

explore: dim_location {}



explore: dim_room {}

explore: fact_easystay {
  join: dim_location {
    type:  left_outer
    relationship: one_to_one
    sql_on: ${fact_easystay.location_id} = ${dim_location.location_id} ;;

  }
  join: dim_room {
    type:  left_outer
    relationship: : one_to_many
    sql_on: ${fact_easystay.room_id} = ${dim_room.room_id} ;;

  }
}
