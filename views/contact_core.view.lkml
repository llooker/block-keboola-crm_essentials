include: "//@{CONFIG_PROJECT_NAME}/views/contact.view"

view: contact {
  extends: [contact_config]
}

view: contact_core {
  sql_table_name: @{SCHEMA_NAME}.CONTACT ;;

  dimension: contact_id {
    label: "Contact ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: contact_url {
    label: "Contact URL"
    type: string
    #sql:  'https://app.hubspot.com/contacts/@{hubspot_account_id}/contact/' || split_part(${contact_id}, '_', 1) ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}."CONTACT" ;;
    html: <a href={{contact_url}} target="_blank"><font color="blue">{{ value }}</font></a> ;;
  }

  dimension: contact_type {
    description: "View contains both Contacts and Leads"
    type: string
    sql: ${TABLE}."CONTACT_TYPE" ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: lead_converted {
    description: "Contains 'Yes/No' values for lead type records and 'Is Contact' value for contact type records"
    type: string
    sql: ${TABLE}."LEAD_CONVERTED" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  measure: count {
    type: count
    drill_fields: [company.company, contact, lead_source, employee.employee, date_created_date, count]
  }
}
