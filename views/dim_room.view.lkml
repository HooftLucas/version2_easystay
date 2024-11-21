view: dim_room {
  sql_table_name: `easystay_silver.dim_room` ;;

  dimension: attr_index {
    type: number
    sql: ${TABLE}.Attr_index ;;
  }
  dimension: attr_index_norm {
    type: number
    sql: ${TABLE}.Attr_index_norm ;;
  }
  dimension: bedrooms {
    type: number
    sql: ${TABLE}.Bedrooms ;;
  }
  dimension: cur_ind {
    type: yesno
    sql: ${TABLE}.cur_ind ;;
  }
  dimension_group: date_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_start ;;
  }
  dimension: date_stop {
    type: number
    sql: ${TABLE}.date_stop ;;
  }
  dimension: dist {
    type: number
    sql: ${TABLE}.dist ;;
  }
  dimension: metro_dist {
    type: number
    sql: ${TABLE}.Metro_dist ;;
  }
  dimension: person_capacity {
    type: number
    sql: ${TABLE}.Person_capacity ;;
  }
  dimension: rest_index {
    type: number
    sql: ${TABLE}.Rest_index ;;
  }
  dimension: rest_index_norm {
    type: number
    sql: ${TABLE}.Rest_index_norm ;;
  }
  dimension: room_id {
    type: string
    sql: ${TABLE}.Room_id ;;
  }
  dimension: room_private {
    type: yesno
    sql: ${TABLE}.Room_private ;;
  }
  dimension: room_shared {
    type: yesno
    sql: ${TABLE}.Room_shared ;;
  }
  dimension: room_type {
    type: string
    sql: ${TABLE}.Room_type ;;
  }
  measure: count {
    type: count
  }
}