- dashboard: pipeline_development
  title: Pipeline Development
  layout: newspaper
  elements:
  - name: 'powered by'
    type: text
    body_text: <a href="https://keboola.com" target="_blank"> <img src="https://www.keboola.com/data/poweredByKeboola.png"
      width="100%"/>
    row: 0
    col: 18
    width: 6
    height: 2
  - name: 'scaffold'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>CRM Essentials</b></font>
    row: 0
    col: 0
    width: 7
    height: 2
  - name: 'dashboard'
    type: text
    title_text: ''
    subtitle_text: <font size="5px"><font color="#408ef7"><b>Pipeline Development</b></font>
    body_text: ''
    row: 0
    col: 7
    width: 11
    height: 2
  - title: Pipeline History - value
    name: Pipeline History - value
    model: block_keboola_crm_essentials
    explore: opportunity
    type: looker_column
    fields: [opportunity_snapshot.snapshot_month, opportunity_snapshot.stage, opportunity_snapshot.opportunity_value]
    pivots: [opportunity_snapshot.stage]
    fill_fields: [opportunity_snapshot.snapshot_month]
    filters:
      opportunity_snapshot.max_date_in_month: 'Yes'
      opportunity_snapshot.snapshot_month: 6 months
      opportunity_snapshot.stage: "-Closed Lost,-Closed Won"
    sorts: [opportunity_snapshot.snapshot_month desc, opportunity_snapshot.stage]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Pipeline History - weighted value
    name: Pipeline History - weighted value
    model: block_keboola_crm_essentials
    explore: opportunity
    type: looker_column
    fields: [opportunity_snapshot.snapshot_month, opportunity_snapshot.stage, opportunity_snapshot.opportunity_value_weighted]
    pivots: [opportunity_snapshot.stage]
    fill_fields: [opportunity_snapshot.snapshot_month]
    filters:
      opportunity_snapshot.max_date_in_month: 'Yes'
      opportunity_snapshot.snapshot_month: 6 months
      opportunity_snapshot.stage: "-Closed Lost,-Closed Won"
    sorts: [opportunity_snapshot.snapshot_month desc, opportunity_snapshot.stage]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Pipeline History - opportunity count
    name: Pipeline History - opportunity count
    model: block_keboola_crm_essentials
    explore: opportunity
    type: looker_column
    fields: [opportunity_snapshot.snapshot_month, opportunity_snapshot.stage, opportunity_snapshot.opportunities]
    pivots: [opportunity_snapshot.stage]
    fill_fields: [opportunity_snapshot.snapshot_month]
    filters:
      opportunity_snapshot.max_date_in_month: 'Yes'
      opportunity_snapshot.snapshot_month: 6 months
      opportunity_snapshot.stage: "-Closed Lost,-Closed Won"
    sorts: [opportunity_snapshot.snapshot_month desc, opportunity_snapshot.stage]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Stage Changes
    name: Stage Changes
    model: block_keboola_crm_essentials
    explore: opportunity
    type: sankey
    fields: [opportunity_snapshot.previous_stage, opportunity_snapshot.stage, opportunity_snapshot.opportunities]
    filters:
      opportunity_snapshot.stage_change: 'Yes'
    sorts: [opportunity_snapshot.stage]
    limit: 500
    query_timezone: America/Los_Angeles
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name_value
    show_null_points: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date Range: opportunity_snapshot.snapshot_date
    row: 2
    col: 16
    width: 8
    height: 8
  - title: Pipeline Value Change
    name: Pipeline Value Change
    model: block_keboola_crm_essentials
    explore: opportunity
    type: single_value
    fields: [opportunity_snapshot.opportunity_value, opportunity_snapshot.previous_opportunity_value]
    filters:
      opportunity_snapshot.stage: "-Closed Lost,-Closed Won"
      opportunity_snapshot.opportunity_value_change: 'Yes'
    sorts: [change]
    limit: 500
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${opportunity_snapshot.opportunity_value}-${opportunity_snapshot.previous_opportunity_value}",
        value_format: "+#,##0; -#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Change
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 0, background_color: "#ed6168",
        font_color: "#e7e7e7", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name_value
    show_null_points: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [opportunity_snapshot.opportunity_value, opportunity_snapshot.previous_opportunity_value]
    listen:
      Date Range: opportunity_snapshot.snapshot_date
    row: 2
    col: 0
    width: 8
    height: 4
  - name: ''
    type: text
    subtitle_text: <font size="5px"><font color="#408ef7">6 Months History</font>
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - title: New Opportunities
    name: New Opportunities
    model: block_keboola_crm_essentials
    explore: opportunity
    type: single_value
    fields: [opportunity_snapshot.opportunities, opportunity_snapshot.opportunity_value]
    filters:
      opportunity_snapshot.stage_change: 'Yes'
      opportunity_snapshot.previous_stage: EMPTY
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Added Value
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 0, background_color: "#ed6168",
        font_color: "#e7e7e7", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name_value
    show_null_points: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen:
      Date Range: opportunity_snapshot.snapshot_date
    row: 2
    col: 8
    width: 8
    height: 4
  - title: Opportunities Won
    name: Opportunities Won
    model: block_keboola_crm_essentials
    explore: opportunity
    type: single_value
    fields: [opportunity_snapshot.opportunities, opportunity_snapshot.opportunity_value]
    filters:
      opportunity_snapshot.stage_change: 'Yes'
      opportunity_snapshot.stage: Closed Won
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Won Value
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 0, background_color: "#ed6168",
        font_color: "#e7e7e7", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name_value
    show_null_points: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen:
      Date Range: opportunity_snapshot.snapshot_date
    row: 6
    col: 0
    width: 8
    height: 4
  - title: Opportunities Lost
    name: Opportunities Lost
    model: block_keboola_crm_essentials
    explore: opportunity
    type: single_value
    fields: [opportunity_snapshot.opportunities, opportunity_snapshot.opportunity_value]
    filters:
      opportunity_snapshot.stage_change: 'Yes'
      opportunity_snapshot.stage: Closed Lost
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Lost Value
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 0, background_color: "#ed6168",
        font_color: "#e7e7e7", color_application: {collection_id: legacy, palette_id: legacy_sequential3},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_range: ["#dd3333", "#80ce5d", "#f78131", "#369dc1", "#c572d3", "#36c1b3",
      "#b57052", "#ed69af"]
    label_type: name_value
    show_null_points: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Closed Lost - opportunity_snapshot.opportunity_value,
            id: Closed Lost - opportunity_snapshot.opportunity_value, name: Closed
              Lost}, {axisId: Closed Won - opportunity_snapshot.opportunity_value,
            id: Closed Won - opportunity_snapshot.opportunity_value, name: Closed
              Won}, {axisId: Deep Dive - opportunity_snapshot.opportunity_value, id: Deep
              Dive - opportunity_snapshot.opportunity_value, name: Deep Dive}, {axisId: Discovery
              - opportunity_snapshot.opportunity_value, id: Discovery - opportunity_snapshot.opportunity_value,
            name: Discovery}, {axisId: Negotiation - opportunity_snapshot.opportunity_value,
            id: Negotiation - opportunity_snapshot.opportunity_value, name: Negotiation},
          {axisId: Nurturing - opportunity_snapshot.opportunity_value, id: Nurturing
              - opportunity_snapshot.opportunity_value, name: Nurturing}, {axisId: Proposal
              - opportunity_snapshot.opportunity_value, id: Proposal - opportunity_snapshot.opportunity_value,
            name: Proposal}, {axisId: Stalled - opportunity_snapshot.opportunity_value,
            id: Stalled - opportunity_snapshot.opportunity_value, name: Stalled},
          {axisId: Trial / PoC - opportunity_snapshot.opportunity_value, id: Trial
              / PoC - opportunity_snapshot.opportunity_value, name: Trial / PoC}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen:
      Date Range: opportunity_snapshot.snapshot_date
    row: 6
    col: 8
    width: 8
    height: 4
  filters:
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
