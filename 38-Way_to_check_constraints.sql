-- Demo to show all the provided constraints.

SELECT CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='';

-- It will delete the constraint.

ALTER table contact_info drop constraint contact_info_chk_1;

-- It will add the new constraint.

ALTER TABLE contact_info ADD CONSTRAINT mob_num_is_less_than_10
 CHECK (LENGTH(Mobile) >= 10);

-- MI* -------------------------------------------------------------

-- For multiple tables to check the Foreign Key constraints.

SELECT CONSTRAINT_NAME COLUMN_NAME,REFERENCED_TABLE_NAME 
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME='Orders';