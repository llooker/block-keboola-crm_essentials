- dashboard: top_opportunities
  title: Top Opportunities
  layout: newspaper
  elements:
  - title: Top Customers by Won Opportunities Value
    name: Top Customers by Won Opportunities Value
    model: block_keboola_crm_essentials_v2
    explore: opportunity
    type: looker_bar
    fields: [company.company, opportunity.opportunity_value]
    filters:
      opportunity.is_won: 'Yes'
    sorts: [opportunity.opportunity_value desc]
    limit: 10
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
        __FILE: crm/top_opportunities.dashboard.lookml
        __LINE_NUM: 19
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: opportunity.opportunity_value,
            id: opportunity.opportunity_value, name: Opportunity Value, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 23}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: crm/top_opportunities.dashboard.lookml,
        __LINE_NUM: 23}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      opportunity.opportunity_value: "#49cec1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: contact.lead_source
    row: 2
    col: 0
    width: 8
    height: 6
  - title: Top Currently Open Opportunities
    name: Top Currently Open Opportunities
    model: block_keboola_crm_essentials_v2
    explore: opportunity
    type: looker_bar
    fields: [opportunity.opportunity_id, opportunity.opportunity_value, opportunity.opportunity]
    filters:
      opportunity.is_closed: 'No'
      opportunity.is_won: 'No'
    sorts: [opportunity.opportunity_value desc]
    limit: 10
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
        __FILE: crm/top_opportunities.dashboard.lookml
        __LINE_NUM: 133
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: opportunity.opportunity_value,
            id: opportunity.opportunity_value, name: Opportunity Value, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 137}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: crm/top_opportunities.dashboard.lookml,
        __LINE_NUM: 137}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      opportunity.opportunity_value: "#e9b404"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Lead Source: contact.lead_source
    row: 2
    col: 16
    width: 8
    height: 6
  - title: Lead Source Performance by New Opportunities Value
    name: Lead Source Performance by New Opportunities Value
    model: block_keboola_crm_essentials_v2
    explore: opportunity
    type: looker_area
    fields: [opportunity.date_created_month, opportunity.lead_source, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.date_created_month]
    sorts: [opportunity.date_created_month desc, opportunity.lead_source]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
        __FILE: crm/top_opportunities.dashboard.lookml
        __LINE_NUM: 189
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - opportunity.count",
            id: " - opportunity.count", name: Opportunity, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 193}, {axisId: Client Referral - opportunity.count, id: Client
              Referral - opportunity.count, name: Client Referral, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 194}, {axisId: Direct - opportunity.count, id: Direct - opportunity.count,
            name: Direct, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 196}, {axisId: Drift - opportunity.count, id: Drift - opportunity.count,
            name: Drift, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 197}, {axisId: Employee Referral - opportunity.count, id: Employee
              Referral - opportunity.count, name: Employee Referral, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 198}, {axisId: Event - opportunity.count, id: Event - opportunity.count,
            name: Event, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 199}, {axisId: Inbound - opportunity.count, id: Inbound -
              opportunity.count, name: Inbound, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 201}, {axisId: Mailchimp - opportunity.count, id: Mailchimp
              - opportunity.count, name: Mailchimp, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 202}, {axisId: Other - opportunity.count, id: Other - opportunity.count,
            name: Other, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 203}, {axisId: Partner - opportunity.count, id: Partner -
              opportunity.count, name: Partner, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 204}, {axisId: PlugNPlay - opportunity.count, id: PlugNPlay
              - opportunity.count, name: PlugNPlay, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 205}, {axisId: Zoominfo - opportunity.count, id: Zoominfo
              - opportunity.count, name: Zoominfo, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 207}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: crm/top_opportunities.dashboard.lookml,
        __LINE_NUM: 193}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    ordering: none
    show_null_labels: false
    listen:
      Date: opportunity.date_created_date
      Lead Source: contact.lead_source
    row: 8
    col: 0
    width: 24
    height: 7
  - name: 'powered by'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://keboola-resources.s3.amazonaws.com/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: 'scaffold'
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7"><b>CRM Essentials</b></font>
    row: 0
    col: 0
    width: 7
    height: 2
  - name: 'dashboard'
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Top Opportunities</b></font>
    row: 0
    col: 7
    width: 11
    height: 2
  - title: Top Lost Opportunities by Value
    name: Top Lost Opportunities by Value
    model: block_keboola_crm_essentials_v2
    explore: opportunity
    type: looker_bar
    fields: [opportunity.opportunity_id, opportunity.opportunity_value, opportunity.opportunity]
    filters:
      opportunity.is_won: 'No'
      opportunity.is_closed: 'Yes'
    sorts: [opportunity.opportunity_value desc]
    limit: 10
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
        __FILE: crm/top_opportunities.dashboard.lookml
        __LINE_NUM: 76
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: opportunity.opportunity_value,
            id: opportunity.opportunity_value, name: Opportunity Value, __FILE: crm/top_opportunities.dashboard.lookml,
            __LINE_NUM: 80}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: crm/top_opportunities.dashboard.lookml,
        __LINE_NUM: 80}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      opportunity.opportunity_value: "#ed6168"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: opportunity.date_closed_date
      Lead Source: contact.lead_source
    row: 2
    col: 8
    width: 8
    height: 6
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
    model: block_keboola_crm_essentials_v2
    explore: opportunity
    listens_to_filters: []
    field: contact.lead_source