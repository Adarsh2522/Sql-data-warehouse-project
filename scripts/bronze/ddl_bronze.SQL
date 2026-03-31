/*
====================================================================
DDL Script: Create Bronze Tables
====================================================================

Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables
    if they already exist.
    Run this script to re-define the DDL structure of 'bronze' Tables
====================================================================
*/


IF OBJECT_ID('Bronze.crm_cust_info','U') IS NOT NULL
	DROP TABLE Bronze.crm_cust_info;

CREATE TABLE Bronze.crm_cust_info --Bronze -> schema, crm -> source system, _cust_info -> entity
(
	cst_id INT,
	cst_key	NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_marital_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

IF OBJECT_ID('Bronze.crm_prd_info','U') IS NOT NULL
	DROP TABLE Bronze.crm_prd_info

CREATE TABLE Bronze.crm_prd_info --Bronze -> schema, crm -> source system, _prd_info -> entity
(
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);

IF OBJECT_ID('Bronze.crm_sales_details','U') IS NOT NULL
	DROP TABLE Bronze.crm_sales_details;

CREATE TABLE Bronze.crm_sales_details --Bronze -> schema, crm -> source system, _sales_details -> entity
(
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT,
);

IF OBJECT_ID('Bronze.erp_cust_az12','U') IS NOT NULL
	DROP TABLE Bronze.erp_cust_az12;

CREATE TABLE Bronze.erp_cust_az12 --Bronze -> schema, erp -> source system, _cust_az12 -> entity
(
	cid NVARCHAR(50),
	bdate DATE,
	gen NVARCHAR(50)
);

IF OBJECT_ID('Bronze.erp_loc_a101','U') IS NOT NULL
	DROP TABLE Bronze.erp_loc_a101;

CREATE TABLE Bronze.erp_loc_a101 --Bronze -> schema, erp -> source system, _loc_a101 -> entity
(
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

IF OBJECT_ID('Bronze.erp_px_cate_g1v2','U') IS NOT NULL
	DROP TABLE Bronze.erp_px_cate_g1v2;

CREATE TABLE Bronze.erp_px_cate_g1v2 --Bronze -> schema, erp -> source system, _px_cate_g1v2 -> entity
(
	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50)
);
