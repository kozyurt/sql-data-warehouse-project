/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files.
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None.
      This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
*/
TRUNCATE TABLE bronze.crm_cust_info; --Firstly, table is truncated before uploading
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\Lenovo\Desktop\sql\sql-data-warehouse-project-source\sql-data-warehouse-project\01_datasets\source_crm\cust_info.csv'
WITH(
	FIRSTROW = 2, --First row belongs to column names
	FIELDTERMINATOR = ',',
	TABLOCK --While SQL uploding table, it going to lock the whole table
);

TRUNCATE TABLE bronze.crm_prd_info; --Firstly, table is truncated before uploading
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\Lenovo\Desktop\sql\sql-data-warehouse-project-source\sql-data-warehouse-project\01_datasets\source_crm\prd_info.csv'
WITH(
	FIRSTROW = 2, --First row belongs to column names
	FIELDTERMINATOR = ',',
	TABLOCK --While SQL uploding table, it going to lock the whole table
);

TRUNCATE TABLE bronze.crm_sales_details; --Firstly, table is truncated before uploading
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\Lenovo\Desktop\sql\sql-data-warehouse-project-source\sql-data-warehouse-project\01_datasets\source_crm\sales_details.csv'
WITH(
	FIRSTROW = 2, --First row belongs to column names
	FIELDTERMINATOR = ',',
	TABLOCK --While SQL uploding table, it going to lock the whole table
);

TRUNCATE TABLE bronze.erp_cust_az12; --Firstly, table is truncated before uploading
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\Lenovo\Desktop\sql\sql-data-warehouse-project-source\sql-data-warehouse-project\01_datasets\source_erp\cust_az12.csv'
WITH(
	FIRSTROW = 2, --First row belongs to column names
	FIELDTERMINATOR = ',',
	TABLOCK --While SQL uploding table, it going to lock the whole table
);

TRUNCATE TABLE bronze.erp_loc_a101; --Firstly, table is truncated before uploading
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\Lenovo\Desktop\sql\sql-data-warehouse-project-source\sql-data-warehouse-project\01_datasets\source_erp\loc_a101.csv'
WITH(
	FIRSTROW = 2, --First row belongs to column names
	FIELDTERMINATOR = ',',
	TABLOCK --While SQL uploding table, it going to lock the whole table
);

TRUNCATE TABLE bronze.erp_px_cat_g1v2; --Firstly, table is truncated before uploading
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\Lenovo\Desktop\sql\sql-data-warehouse-project-source\sql-data-warehouse-project\01_datasets\source_erp\px_cat_g1v2.csv'
WITH(
	FIRSTROW = 2, --First row belongs to column names
	FIELDTERMINATOR = ',',
	TABLOCK --While SQL uploding table, it going to lock the whole table
);
