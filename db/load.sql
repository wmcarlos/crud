--column type data
insert into pt_column_type (column_type_id,name) values (1,'VARCHAR');
insert into pt_column_type (column_type_id,name) values (2,'INTEGER');
insert into pt_column_type (column_type_id,name) values (3,'DECIMAL');
insert into pt_column_type (column_type_id,name) values (4,'TEXT');
insert into pt_column_type (column_type_id,name) values (5,'DATE');
insert into pt_column_type (column_type_id,name) values (6,'DATETIME');
insert into pt_column_type (column_type_id,name) values (7,'FILE');
--end column type data

--window type data
insert into pt_window_type (window_type_id,name) values (1,'MASTER FORM');
insert into pt_window_type (window_type_id,name) values (2,'REPORT');
insert into pt_window_type (window_type_id,name) values (3,'CHART');
insert into pt_window_type (window_type_id,name) values (3,'DETAIL FORM');
--end window type data

--field type data
insert into pt_field_type (field_type_id,name) values (1,'TEXT');
insert into pt_field_type (field_type_id,name) values (2,'DATE');
insert into pt_field_type (field_type_id,name) values (3,'SELECT STATIC'); -- LIST
insert into pt_field_type (field_type_id,name) values (4,'SELECT DINAMYC'); -- QUERY
insert into pt_field_type (field_type_id,name) values (5,'RADIO STATIC');
insert into pt_field_type (field_type_id,name) values (6,'RADIO DINAMYC');
insert into pt_field_type (field_type_id,name) values (7,'CHECKBOX STATIC');
insert into pt_field_type (field_type_id,name) values (9,'CHECKBOX DINAMYC');
insert into pt_field_type (field_type_id,name) values (10,'CHECKBOX BOOLEAN'); --Y or N
insert into pt_field_type (field_type_id,name) values (11,'AUTO COMPLETE');
insert into pt_field_type (field_type_id,name) values (12,'PASSWORD');
--end field type data

--table data
insert into pt_table (table_id,tablename,name) values (1,'pt_list','LIST');
insert into pt_table (table_id,tablename,name) values (2,'pt_value','VALUE');
insert into pt_table (table_id,tablename,name) values (3,'pt_query','QUERY');
insert into pt_table (table_id,tablename,name) values (4,'pt_column_type','COLUMN TYPE');
insert into pt_table (table_id,tablename,name) values (5,'pt_window_type','WINDOW TYPE');
insert into pt_table (table_id,tablename,name) values (6,'pt_field_type','FIELD TYPE');
insert into pt_table (table_id,tablename,name) values (7,'pt_table','TABLE');
insert into pt_table (table_id,tablename,name) values (8,'pt_column','COLUMN');
insert into pt_table (table_id,tablename,name) values (9,'pt_window','WINDOW');
insert into pt_table (table_id,tablename,name) values (10,'pt_field','FIELD');
--end table data

--column data 
insert into pt_column (column_id,table_id,column_type_id,columnname,name,position,lenght) values (1,1,2,'list_id','LIST ID',1,11);
insert into pt_column (column_id,table_id,column_type_id,columnname,name,position,lenght) values (2,1,6,'created','CREATED',2,20);
insert into pt_column (column_id,table_id,column_type_id,columnname,name,position,lenght) values (3,1,6,'updated','UPDATED',3,20);
insert into pt_column (column_id,table_id,column_type_id,columnname,name,position,lenght) values (4,1,1,'name','NAME',4,60);
insert into pt_column (column_id,table_id,column_type_id,columnname,name,position,lenght) values (5,1,1,'isactive','IS ACTIVE',5,1);
--end column data

