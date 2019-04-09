# elements-scripts

This repository contains Microsoft Server SQL scripts used to validate a refresh of preproduction instance of CU Boulder Elements (CUBE) or and upgrade of CUBE.

When  [Refreshing Elements Target Instances (Dev, Test, Staging) With Data from Production Source Instance](https://wush.net/trac/fis/wiki/RefreshingElementsWithProductionData), run the following scripts:

  * bounds-checks.sql
  * user-search-settings.sql
    * save the outputs of this to a file, run a checksum before and and after to compare

To test CUBE upgrades, run:

  * run update-data-integrity-check.sql
