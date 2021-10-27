project_name: "block-keboola-crm_essentials"

################ Constants ################

constant: CONFIG_PROJECT_NAME {
  value: "block-keboola-crm_essentials-config"
  export: override_required
}

constant: CONNECTION {
  value: "keboola_block_crm_essentials"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "specify"
  export: override_required
}


# these constants set how Looker creates links back to your CRM (set only what applies):

constant: SFDC_domain {
  value: "''"
  export: override_required
# example: "keboola.lightning.force.com"
# only needs updating when SOURCE = SFDC, can ignore otherwise
}

constant: hubspot_account_id {
  value: "''"
  export: override_required
# example: "505715"
# only needs updating when SOURCE = HubSpot, can ignore otherwise
}

constant: pipedrive_domain {
  value: "''"
  export: override_required
# example: "keboola-f2ed62.pipedrive.com"
# only needs updating when SOURCE = Pipedrive, can ignore otherwise
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }

  override_constant: SFDC_domain {
    value: "@{SFDC_domain}"
  }

  override_constant: hubspot_account_id {
    value: "@{hubspot_account_id}"
  }

  override_constant: pipedrive_domain {
    value: "@{pipedrive_domain}"
  }
}
