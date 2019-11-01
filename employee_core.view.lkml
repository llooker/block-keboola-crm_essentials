include: "//@{CONFIG_PROJECT_NAME}/employee.view"

view: employee {
  extends: [employee_config]
}

view: employee_core {
  sql_table_name: @{SCHEMA_NAME}.EMPLOYEE ;;

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