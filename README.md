# elements-testing-scripts

Microsoft Server SQL scripts that need to be run and have their results compared to support a CU Boulder Elements (CUBE) software upgrade or a database refresh from production.

1. Run the baseline tests on Elements production prior to a refresh or on the target Elements system prior to an upgrade
  * run Elements Update Bounds Check Queries and save the output with a unique name
  * run usersearchsettings.sql and save the output with a unique name 
  * run Elements Update Data Integrity Check Queries.sql -- this needs to be adjusted to point to the correct hr feed source.
 
2. After the refresh or upgrade, on the target system repeat bullets in step 1 above and compare with previous results

The selenium scripts directory holds selenium scripts that can be used to set configurations on Elements instances.
Use the script to setup an instance to the correct configuration following a refresh from production
It will prompt for a username and password since we don't want to store this in the script
