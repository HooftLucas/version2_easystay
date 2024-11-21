view: dim_location {
  sql_table_name: `easystay_silver.dim_location` ;;

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_id ;;
  }
  measure: count {
    type: count
    drill_fields: [city_name]
  }
}
