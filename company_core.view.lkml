include: "//@{CONFIG_PROJECT_NAME}/company.view"

view: company {
  extends: [company_config]
}

view: company_core {
  sql_table_name: @{SCHEMA_NAME}.COMPANY ;;

  dimension: company_id {
    label: "Company ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: company_url {
    label: "Company URL"
    type: string
    hidden: yes
    sql: CASE
            WHEN @{SFDC_domain} <> '' THEN 'https://@{SFDC_domain}/lightning/r/Account' || ${company_id} || '/view'
            WHEN @{hubspot_account_id} <> '' THEN 'https://app.hubspot.com/contacts/@{hubspot_account_id}/company/' || ${company_id}
            WHEN @{pipedrive_domain} <> '' THEN 'https://@{pipedrive_domain}/organization/' || ${company_id}
            ELSE ''
         END;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}."COMPANY" ;;
    html: <a href={{company_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension_group: date_created {
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
    sql: ${TABLE}."DATE_CREATED" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
    html: <a href={{website}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  measure: count {
    type: count
    drill_fields: [company_id, contract.count, opportunity.count]
  }
}