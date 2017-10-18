# elements-testing-scripts
The test scripts are straight forward sql scripts that need to be run and have the results compared following an upgrade or a refresh from production
1. run the baseline tests on production prior to a refresh or on the target system prior to an upgrade
  * Run Elements Update Bounds Check Queries and save the output with a unique name
  * Run usersearchsettings.sql and save the output with a unique name 
  * Run Elements Update Data Integrity Check Queries.sql -- this needs to be adjusted to point to the correct hr feed source.
 
2. After the refresh or upgrade, on the target system repeat  bullets in step 1 above and compare with previous results


The selenium scripts directory holds selenium scripts that can be used to set configurations on elements instances.
Use the script to setup an instance to the correct configuration following a refresh from production
It will prompt for a username and password since we don't want to store this in the script
