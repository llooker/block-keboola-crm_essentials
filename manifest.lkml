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

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
