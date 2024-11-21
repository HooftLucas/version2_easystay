view: fact_easystay {
  sql_table_name: `easystay_silver.fact_easystay` ;;

  dimension: bedrooms {
    type: number
    sql: ${TABLE}.Bedrooms ;;
  }
  dimension: cleanliness_rating {
    type: number
    sql: ${TABLE}.Cleanliness_rating ;;
  }
  dimension: coordinates {
    type: string
    sql: ${TABLE}.coordinates ;;
  }
  dimension: easy_stay_id {
    type: string
    sql: ${TABLE}.easyStay_id ;;
  }
  dimension: guest_satisfaction {
    type: number
    sql: ${TABLE}.Guest_satisfaction ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_id ;;
  }
  dimension: person_capacity {
    type: number
    sql: ${TABLE}.Person_capacity ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }
  dimension: room_id {
    type: string
    sql: ${TABLE}.Room_id ;;
  }
  dimension: room_type {
    type: string
    sql: ${TABLE}.Room_type ;;
  }
  dimension: week_type {
    type: string
    sql: ${TABLE}.week_type ;;
  }
  measure: count {
    type: count
  }
}
