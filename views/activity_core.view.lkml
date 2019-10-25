include: "//@{CONFIG_PROJECT_NAME}/views/activity.view"

view: activity {
  extends: [activity_config]
}

view: activity_core {
  sql_table_name: @{SCHEMA_NAME}.ACTIVITY ;;

  dimension: activity_id {
    label: "Activity ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."ACTIVITY_ID" ;;
  }

  dimension: activity {
    type: string
    sql: ${TABLE}."ACTIVITY" ;;
  }

  dimension_group: activity {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ACTIVITY_DATE" ;;
  }

  dimension: activity_duration_m_dimension {
    type: number
    sql: ${TABLE}."ACTIVITY_DURATION_M" ;;
  }

  dimension: contact_id {
    type: string
    hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: employee_id {
    type: string
    hidden: yes
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: opportunity_id {
    type: string
    hidden: yes
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  measure: activity_duration_m {
    label: "Activity Duration (minutes)"
    type: sum
    sql: ${activity_duration_m_dimension} ;;
    value_format: "#,##0"
    drill_fields: [detail*]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  #drill sets
  set: detail {
    fields: [
      contact.contact,
      opportunity.opportunity_id,
      employee.employee,
      activity_date,
      activity_id,
      activity]
  }
}
