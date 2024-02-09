# Integrating New Ad Platforms into MCDM
	
This document outlines the steps required to integrate data from new advertising platforms into the Marketing Common Data Model (MCDM) to ensure consistent and comprehensive analytics across various sources.

## Step 1: Prepare the Data

1. Obtain the raw data CSV file for the new ad platform.
2. Ensure the CSV file name clearly identifies the ad platform (e.g., `src_ads_newplatform_all_data.csv`).
3. Place the CSV file into the `/seeds` folder within the project repository.

## Step 2: Create a New Staging Model

1. Create a new SQL file within the `/models/staging` folder. Name the file to reflect the ad platform (e.g., `stg_newplatform.sql`).
2. Consult the `seeds/mcdm_paid_ads_basic_performance_structure.csv` for field names and corresponding data types to ensure consistency. Use this structure to write a staging model.
3. Write a SQL-query as in example for Bing in `models/staging/stg_bing.sql`.

## Step 3: Integrate Data into the Final Model

1. Navigate to the `/models/marts/paid_ads__basic_performance.sql` file.
2. Add a new section for the ad platform by defining a new subquery, similar to this example:
```sql
newplatform as (
    select * 
    from {{ ref('stg_newplatform')}}
),
```
3. Include the new platform data in the final union statement.

## Step 4: Validate and Test

1. Verify the new staging model correctly integrates with the MCDM structure. 

***
If you reload the dashboards, a new platform should appear an all the charts automatically.

