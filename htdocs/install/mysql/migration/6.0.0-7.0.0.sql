--
-- Be carefull to requests order.
-- This file must be loaded by calling /install/index.php page
-- when current version is 7.0.0 or higher.
--
-- To rename a table:       ALTER TABLE llx_table RENAME TO llx_table_new;
-- To add a column:         ALTER TABLE llx_table ADD COLUMN newcol varchar(60) NOT NULL DEFAULT '0' AFTER existingcol;
-- To rename a column:      ALTER TABLE llx_table CHANGE COLUMN oldname newname varchar(60);
-- To drop a column:        ALTER TABLE llx_table DROP COLUMN oldname;
-- To change type of field: ALTER TABLE llx_table MODIFY COLUMN name varchar(60);
-- To drop a foreign key:   ALTER TABLE llx_table DROP FOREIGN KEY fk_name;
-- To drop an index:        -- VMYSQL4.0 DROP INDEX nomindex on llx_table
-- To drop an index:        -- VPGSQL8.0 DROP INDEX nomindex
-- To restrict request to Mysql version x.y minimum use -- VMYSQLx.y
-- To restrict request to Pgsql version x.y minimum use -- VPGSQLx.y
-- To make pk to be auto increment (mysql):    -- VMYSQL4.3 ALTER TABLE llx_c_shipment_mode CHANGE COLUMN rowid rowid INTEGER NOT NULL AUTO_INCREMENT;
-- To make pk to be auto increment (postgres): -- VPGSQL8.2 NOT POSSIBLE. MUST DELETE/CREATE TABLE
-- To set a field as NULL:                     -- VMYSQL4.3 ALTER TABLE llx_table MODIFY COLUMN name varchar(60) NULL;
-- To set a field as NULL:                     -- VPGSQL8.2 ALTER TABLE llx_table ALTER COLUMN name DROP NOT NULL;
-- To set a field as NOT NULL:                 -- VMYSQL4.3 ALTER TABLE llx_table MODIFY COLUMN name varchar(60) NOT NULL;
-- To set a field as NOT NULL:                 -- VPGSQL8.2 ALTER TABLE llx_table ALTER COLUMN name SET NOT NULL;
-- To set a field as default NULL:             -- VPGSQL8.2 ALTER TABLE llx_table ALTER COLUMN name SET DEFAULT NULL;
-- Note: fields with type BLOB/TEXT can't have default value.
-- -- VPGSQL8.2 DELETE FROM llx_usergroup_user      WHERE fk_user      NOT IN (SELECT rowid from llx_user);
-- -- VMYSQL4.1 DELETE FROM llx_usergroup_user      WHERE fk_usergroup NOT IN (SELECT rowid from llx_usergroup);


ALTER TABLE llx_facture_fourn ADD COLUMN date_pointoftax	date DEFAULT NULL;
ALTER TABLE llx_facture_fourn ADD COLUMN date_valid		date;

ALTER TABLE llx_website_page MODIFY COLUMN pageurl varchar(255);
ALTER TABLE llx_website_page ADD COLUMN lang varchar(6);
ALTER TABLE llx_website_page ADD COLUMN fk_page integer;

ALTER TABLE llx_fichinter ADD COLUMN import_key varchar(14);
ALTER TABLE llx_livraison ADD COLUMN import_key varchar(14);
ALTER TABLE llx_livraison ADD COLUMN extraparams varchar(255);
ALTER TABLE llx_don ADD COLUMN extraparams varchar(255);

ALTER TABLE llx_accounting_account ADD COLUMN import_key varchar(14);
ALTER TABLE llx_accounting_account ADD COLUMN extraparams varchar(255);
ALTER TABLE llx_accounting_bookkeeping ADD COLUMN import_key varchar(14);
ALTER TABLE llx_accounting_bookkeeping ADD COLUMN extraparams varchar(255);

