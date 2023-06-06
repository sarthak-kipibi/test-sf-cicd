/* V_MY_VIEW — description of the view */
USE DATABASE TEST_CICD;
USE SCHEMA CICD;
create or replace secure VIEW V_MY_VIEW as
select 
 COL1,
 COL2
from FIRST_TABLE_CICD;

/* adding the view into datashare for secondary account
 * first switching to role which has privileges to adding objects  into share
 * then adding grant
 */
-- USE ROLE {{ sharing_role }}_{{ env }};
-- GRANT SELECT ON VIEW V_MY_VIEW TO SHARE MY_DATASHARE_{{ env }};