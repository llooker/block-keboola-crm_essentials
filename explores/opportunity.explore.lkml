include: "/views/opportunity.view"
include: "/views/company.view"
include: "/views/employee.view"
include: "/views/opportunity_snapshot.view"
include: "/views/opportunity_contact.view"
include: "/views/contact.view"

explore: opportunity {
  join: company {
    type: full_outer
    sql_on: ${opportunity.company_id} = ${company.company_id} ;;
    relationship: many_to_one
  }

  join: employee {
    type: full_outer
    sql_on: ${opportunity.employee_id} = ${employee.employee_id} ;;
    relationship: many_to_one
  }

  join: opportunity_snapshot {
    type: left_outer
    sql_on: ${opportunity.opportunity_id} = ${opportunity_snapshot.opportunity_id};;
    relationship: one_to_many
  }

  join: opportunity_contact {
    type: left_outer
    sql_on: ${opportunity.opportunity_id}=${opportunity_contact.opportunity_id} ;;
    relationship: one_to_many
  }

  join: contact {
    type: full_outer
    sql_on: ${opportunity_contact.contact_id}=${contact.contact_id} ;;
    relationship: many_to_one
  }
}
