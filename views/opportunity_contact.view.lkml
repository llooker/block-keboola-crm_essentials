view: opportunity_contact {
  sql_table_name: OPPORTUNITY_CONTACT ;;

  dimension: opportunity_contact_id {
    label: "Opportunity Contact ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."OPPORTUNITY_CONTACT_ID" ;;
  }

  dimension: contact_id {
    type: string
    hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: opportunity_id {
    hidden: yes
    type: string
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  dimension: is_primary_contact {
    type: string
    sql: ${TABLE}."IS_PRIMARY_CONTACT" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."ROLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [opportunity_contact_id, contact.contact, count]
  }
}
