- dashboard: sales_overview
  title: Sales Overview
  layout: newspaper
  elements:
  - name: Leads & Contacts
    type: text
    title_text: Leads & Contacts
    row: 2
    col: 0
    width: 24
    height: 2
  - name: Opportunities
    type: text
    title_text: Opportunities
    row: 13
    col: 0
    width: 24
    height: 2
  - title: New Contacts (Total)
    name: New Contacts (Total)
    model: crm
    explore: contact
    type: single_value
    fields: [contact.count]
    filters:
      contact.contact_type: Contact
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Drift - contact.count,
            id: Drift - contact.count, name: Drift}, {axisId: Employee Referral -
              contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Social Media - contact.count, id: Social Media
              - contact.count, name: Social Media}, {axisId: Zoominfo - contact.count,
            id: Zoominfo - contact.count, name: Zoominfo}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    show_null_points: true
    interpolation: linear
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 4
    col: 12
    width: 12
    height: 2
  - title: New Leads (Total)
    name: New Leads (Total)
    model: crm
    explore: contact
    type: single_value
    fields: [contact.count]
    filters:
      contact.contact_type: Lead
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Drift - contact.count,
            id: Drift - contact.count, name: Drift}, {axisId: Employee Referral -
              contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Social Media - contact.count, id: Social Media
              - contact.count, name: Social Media}, {axisId: Zoominfo - contact.count,
            id: Zoominfo - contact.count, name: Zoominfo}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    show_null_points: true
    interpolation: linear
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 4
    col: 0
    width: 12
    height: 2
  - title: New Leads
    name: New Leads
    model: crm
    explore: contact
    type: looker_column
    fields: [contact.date_created_month, contact.lead_source, contact.count]
    pivots: [contact.lead_source]
    fill_fields: [contact.date_created_month]
    filters:
      contact.contact_type: Lead
    sorts: [contact.date_created_month desc, contact.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Drift - contact.count,
            id: Drift - contact.count, name: Drift}, {axisId: Employee Referral -
              contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Social Media - contact.count, id: Social Media
              - contact.count, name: Social Media}, {axisId: Zoominfo - contact.count,
            id: Zoominfo - contact.count, name: Zoominfo}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    show_null_points: true
    interpolation: linear
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 6
    col: 0
    width: 12
    height: 7
  - title: New Contacts
    name: New Contacts
    model: crm
    explore: contact
    type: looker_column
    fields: [contact.date_created_month, contact.lead_source, contact.count]
    pivots: [contact.lead_source]
    fill_fields: [contact.date_created_month]
    filters:
      contact.contact_type: Contact
    sorts: [contact.date_created_month desc, contact.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Drift - contact.count,
            id: Drift - contact.count, name: Drift}, {axisId: Employee Referral -
              contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Social Media - contact.count, id: Social Media
              - contact.count, name: Social Media}, {axisId: Zoominfo - contact.count,
            id: Zoominfo - contact.count, name: Zoominfo}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    label_color: []
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    show_null_points: true
    interpolation: linear
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 6
    col: 12
    width: 12
    height: 7
  - title: New Opportunities
    name: New Opportunities
    model: crm
    explore: opportunity
    type: looker_column
    fields: [opportunity.date_created_month, opportunity.lead_source, opportunity.count]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_created_month]
    sorts: [opportunity.date_created_month desc, opportunity.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_created_date
      Lead Source: opportunity.lead_source
    row: 17
    col: 0
    width: 12
    height: 6
  - title: New Opportunities (Total)
    name: New Opportunities (Total)
    model: crm
    explore: opportunity
    type: single_value
    fields: [opportunity.count]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_created_date
      Lead Source: opportunity.lead_source
    row: 15
    col: 0
    width: 12
    height: 2
  - title: New Opportunities Value (Total)
    name: New Opportunities Value (Total)
    model: crm
    explore: opportunity
    type: single_value
    fields: [opportunity.opportunity_value]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_created_date
      Lead Source: opportunity.lead_source
    row: 15
    col: 12
    width: 12
    height: 2
  - title: New Opportunities Value
    name: New Opportunities Value
    model: crm
    explore: opportunity
    type: looker_column
    fields: [opportunity.date_created_month, opportunity.lead_source, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_created_month]
    sorts: [opportunity.date_created_month desc, opportunity.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_created_date
      Lead Source: opportunity.lead_source
    row: 17
    col: 12
    width: 12
    height: 6
  - title: Won Opportunities
    name: Won Opportunities
    model: crm
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.count, opportunity.date_closed_month]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_closed_month]
    filters:
      opportunity.is_won: 'Yes'
    sorts: [opportunity.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 25
    col: 0
    width: 12
    height: 6
  - title: Won Opportunities (Total)
    name: Won Opportunities (Total)
    model: crm
    explore: opportunity
    type: single_value
    fields: [opportunity.count]
    filters:
      opportunity.is_won: 'Yes'
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 23
    col: 0
    width: 12
    height: 2
  - title: Won Opportunities Value (Total)
    name: Won Opportunities Value (Total)
    model: crm
    explore: opportunity
    type: single_value
    fields: [opportunity.opportunity_value]
    filters:
      opportunity.is_won: 'Yes'
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 23
    col: 12
    width: 12
    height: 2
  - title: Won Opportunities Value
    name: Won Opportunities Value
    model: crm
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.date_closed_month, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_closed_month]
    filters:
      opportunity.is_won: 'Yes'
    sorts: [opportunity.lead_source, opportunity.date_closed_month desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 25
    col: 12
    width: 12
    height: 6
  - title: Lost Opportunities (Total)
    name: Lost Opportunities (Total)
    model: crm
    explore: opportunity
    type: single_value
    fields: [opportunity.count]
    filters:
      opportunity.is_won: 'No'
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 31
    col: 0
    width: 12
    height: 2
  - title: Lost Opportunities Value (Total)
    name: Lost Opportunities Value (Total)
    model: crm
    explore: opportunity
    type: single_value
    fields: [opportunity.opportunity_value]
    filters:
      opportunity.is_won: 'No'
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 31
    col: 12
    width: 12
    height: 2
  - title: Lost Opportunities
    name: Lost Opportunities
    model: crm
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.count, opportunity.date_closed_month]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_closed_month]
    filters:
      opportunity.is_won: 'No'
    sorts: [opportunity.lead_source, opportunity.date_closed_month desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 33
    col: 0
    width: 12
    height: 6
  - title: Lost Opportunities Value
    name: Lost Opportunities Value
    model: crm
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.date_closed_month, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_closed_month]
    filters:
      opportunity.is_won: 'No'
    sorts: [opportunity.lead_source, opportunity.date_closed_month desc]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity}, {axisId: Client Referral
              - opportunity.count, id: Client Referral - opportunity.count, name: Client
              Referral}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral}, {axisId: Event
              - opportunity.count, id: Event - opportunity.count, name: Event}, {
            axisId: Inbound - opportunity.count, id: Inbound - opportunity.count,
            name: Inbound}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp}, {axisId: Other - opportunity.count,
            id: Other - opportunity.count, name: Other}, {axisId: Partner - opportunity.count,
            id: Partner - opportunity.count, name: Partner}, {axisId: PlugNPlay -
              opportunity.count, id: PlugNPlay - opportunity.count, name: PlugNPlay},
          {axisId: Zoominfo - opportunity.count, id: Zoominfo - opportunity.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: opportunity.lead_source
    row: 33
    col: 12
    width: 12
    height: 6
  - name: 'scaffold'
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7"><b>CRM</b></font>
    row: 0
    col: 0
    width: 7
    height: 2
  - name: 'dashboard'
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Overview</b></font>
    row: 0
    col: 7
    width: 11
    height: 2
  - name: 'powered by'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://www.keboola.com/data/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 6 months
    allow_multiple_values: true
    required: false
  - name: Lead Source
    title: Lead Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: crm
    explore: opportunity
    listens_to_filters: []
    field: opportunity.lead_source
