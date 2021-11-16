view: opportunity_snapshot {
  sql_table_name: @{SCHEMA_NAME}.OPPORTUNITY_SNAPSHOT ;;

  dimension: snapshot_id {
    type:  string
    sql: CONCAT(${TABLE}."OPPORTUNITY_ID", '_', ${TABLE}."SNAPSHOT_DATE") ;;
    hidden: yes
    primary_key: yes
  }

  dimension: company_id {
    type: string
    hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
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

  dimension: opportunity_value_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."OPPORTUNITY_VALUE" ;;
  }

  dimension: opportunity_value_change {
    description: "Defines if the value has changed since the previous snapshot"
    type: yesno
    sql: ${TABLE}."OPPORTUNITY_VALUE_CHANGE"='Yes' ;;
  }

  dimension: pipeline {
    #doesn't exist in SF CRM
    hidden: yes
    type: string
    sql: ${TABLE}."PIPELINE" ;;
  }

  dimension: pipeline_change {
    #doesn't exist in SF CRM
    hidden: yes
    type: string
    sql: ${TABLE}."PIPELINE_CHANGE" ;;
  }

  dimension: previous_opportunity_value_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."PREVIOUS_OPPORTUNITY_VALUE" ;;
  }

  dimension_group: snapshot {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}."SNAPSHOT_DATE" ;;
  }


  dimension: stage {
    type: string
    sql: ${TABLE}."STAGE" ;;
    order_by_field: stage_order
  }

  dimension: stage_order {
    type: number
    hidden: yes
    sql: ${TABLE}."STAGE_ORDER" ;;
  }

  dimension: previous_stage {
    type: string
    sql: ${TABLE}."PREVIOUS_STAGE" ;;
    order_by_field: previous_stage_order
  }

  dimension: previous_stage_order {
    type: number
    hidden: yes
    sql: ${TABLE}."PREVIOUS_STAGE_ORDER" ;;
  }

  dimension: stage_change {
    description: "Defines if the stage has changed since the previous snapshot"
    type: yesno
    sql: ${TABLE}."STAGE_CHANGE"='Yes' ;;
  }

  dimension: probability_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: previous_probability_dimension {
    hidden: yes
    type: number
    sql: ${TABLE}."PREVIOUS_PROBABILITY" ;;
  }

  dimension: probability_change {
    description: "Defines if the probability has changed since the previous snapshot"
    type: yesno
    sql: ${TABLE}."PROBABILITY_CHANGE"='Yes' ;;
  }

  dimension: max_date_in_month {
    description: "Defines last available snapshot date in month per opportunity."
    type: yesno
    sql: ${TABLE}."MAX_DATE_IN_MONTH"='true' ;;
  }

  measure: opportunity_value {
    description: "Opportunity value at the time of snapshot"
    type: sum_distinct
    sql: ${opportunity_value_dimension} ;;
    value_format: "#,##0"
    drill_fields: [company_opportunity_employee*,opportunity_value]
  }

  measure: previous_opportunity_value {
    description: "Opportunity value of the previous snapshot"
    type: sum_distinct
    sql: ${previous_opportunity_value_dimension} ;;
    value_format: "#,##0"
  }

  measure: opportunity_value_weighted {
    description: "Weighted Opportunity value at the time of snapshot"
    type: sum_distinct
    sql: ${opportunity_value_dimension}*${probability_dimension}/100 ;;
    value_format: "#,##0"
    drill_fields: [company_opportunity_employee*,opportunity_value_weighted]
  }

  measure: previous_opportunity_value_weighted {
    description: "Weighted Opportunity value of the previous snapshot"
    type: sum_distinct
    sql: ${previous_opportunity_value_dimension}*${previous_probability_dimension}/100 ;;
    value_format: "#,##0"
  }

  measure: probability {
    description: "Probability in the time of snapshot"
    type: sum_distinct
    sql: ${probability_dimension}/100 ;;
    value_format: "##0%"
  }

  measure: previous_probability {
    description: "Probability of the previous snapshot"
    type: sum_distinct
    sql: ${previous_probability_dimension}/100 ;;
    value_format: "##0%"
  }

  measure: opportunities {
    type: count_distinct
    sql: ${opportunity_id} ;;
    drill_fields: [company_opportunity_employee*, opportunity.opportunity_value]
  }

  measure: count {
    type: count
    drill_fields: [company_opportunity_employee*, count]
  }

  # ----- Sets of fields for drilling ------
  set: company_opportunity_employee {
    fields: [
      company.company,
      opportunity.opportunity,
      employee.employee
    ]
  }
}
