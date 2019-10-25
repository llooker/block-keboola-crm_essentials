view: employee {
  sql_table_name: EMPLOYEE ;;

  dimension: employee_id {
    label: "Employee ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: employee {
    type: string
    sql: ${TABLE}."EMPLOYEE" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."POSITION" ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_id, position, count]
  }
}
