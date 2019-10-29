project_name: "block-keboola-crm_essentials"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-crm_essentials-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_crm_essentials"
}

constant: SCHEMA_NAME {
  value: "WORKSPACE_542685775"
}


# these constants set how Looker creates links back to your CRM (set only what applies):

constant: SFDC_domain {
  value: ""
# example: "keboola.lightning.force.com"
# only needs updating when SOURCE = SFDC, can ignore otherwise
}

constant: hubspot_account_id {
  value: ""
# example: "505715"
# only needs updating when SOURCE = HubSpot, can ignore otherwise
}

constant: pipedrive_domain {
  value: ""
# example: "keboola-f2ed62.pipedrive.com"
# only needs updating when SOURCE = Pipedrive, can ignore otherwise
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
