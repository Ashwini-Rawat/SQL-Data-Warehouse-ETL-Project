/*
================================================
create database and schemas
================================================

Script:
	This script will create database DataWarehouse after dropting it if it exists and
	it will create 3 schemas  with name 'bronz', 'silver' and 'gold'.

Warning: 
	This script will drop entire database DataWarehouse if it exists.
	All the data in database will be permanently deleted. SO proceed with causion.
	And take proper backup before running this script.
*/

Use master;

if exists(select 1 from sys.databases where name = 'DataWarehouse')
drop database DataWarehouse
go
create database DataWarehouse;

go

use DataWarehouse;

go

create schema bronze;
go
create schema silver;
go
create schema gold;
go
