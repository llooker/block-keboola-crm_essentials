# CRM Essentials by Keboola

## Keboola Blocks Intro (Scaffold Prerequisite)
Looker Blocks powered by Keboola are designed to work in tandem with corresponding Keboola Scaffolds in the Keboola Connection platform. Similar to Blocks in nature, Keboola Scaffolds are templatized use-cases that can be instantly deployed into the Keboola platform, providing the whole data management and processing chain required to populate the Looker dashboards.

## Block Overview
This Block connects to data from any Keboola “CRM Essentials” Scaffold into Looker. Its purpose is to provide quick out-of-the-box end to end integration and functionality to be used either stand-alone or to be combined with other data. In order to set up the Keboola data feed, please contact us: [here](https://get.keboola.com/lookerblocks?block=crm_essentials).

## Data and Block Structure
This block is built above data from standard CRM objects, so it’s available to almost user of the included CRM systems. Standard objects needed for the Scaffold and Block to work are (Salesforce terminology used here):

*  Account
*  Contact
*  Event
*  Lead
*  Opportunity
*  Opportunity Contact Role
*  Stage
*  User

The **Keboola Scaffold** will set up everything for you - from the data extraction to data transformation, to setting up the Snowflake database with necessary tables for the LookML. All you need to do is set up the connection to the database in Looker and add it to the Looker model.

In case you want to enrich your Looker model and dashboards with other fields or objects from your CRM or other system, you can modify the whole data extraction and processing directly in Keboola Connection.

## Customization
The LookML contents of this block can also be modified/extended to best all use cases. This block utilizes Refinement files for customization. For more information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).
