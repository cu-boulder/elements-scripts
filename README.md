# elements-scripts

Microsoft Server SQL scripts that need to be run and have their output compared to support a CU Boulder Elements (CUBE) software upgrade or a database refresh from production.

1. Run the baseline tests on Elements production prior to a refresh or on the target Elements system prior to an upgrade
  * run bounds-checks.sql and save the output with a unique name
  * run user-search-settings.sql and save the output with a unique name 
  * run update-data-integrity-check.sql -- this needs to be adjusted to point to the correct hr feed source
 
2. After the refresh or upgrade, on the target system repeat bullets in step 1 above and compare with previous results
