project_name: "block-keboola-crm_essentials"

################ Constants ################

constant: CONNECTION {
  value: "keboola_block_crm_essentials"
  export: override_optional
}

constant: SCHEMA_NAME {
  value: "specify"
  export: override_optional
}

# these constants set how Looker creates links back to your CRM (set only what applies):

constant: SFDC_domain {
  value: "''"
  export: override_optional
# example: "keboola.lightning.force.com"
# only needs updating when SOURCE = SFDC, can ignore otherwise
}

constant: hubspot_account_id {
  value: "''"
  export: override_optional
# example: "505715"
# only needs updating when SOURCE = HubSpot, can ignore otherwise
}

constant: pipedrive_domain {
  value: "''"
  export: override_optional
# example: "keboola-f2ed62.pipedrive.com"
# only needs updating when SOURCE = Pipedrive, can ignore otherwise
}
