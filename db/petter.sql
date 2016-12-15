create database petter;

use petter;

create table pt_list(
	list_id int auto_increment not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	name varchar(60) not null,
	isactive char(1) not null default 'Y',
	constraint pk_list_id primary key (list_id)
)engine = InnoDB;

create table pt_value(
	value_id int auto_increment not null,
	list_id int not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	value varchar(60) not null,
	showname varchar(60) not null,
	isactive char(1) not null default 'Y',
	constraint pk_value_id primary key (value_id)
)engine = InnoDB;

create table pt_query(
	query_id int auto_increment not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	querystring text,
	value varchar(60) not null,
	showname varchar(60) not null,
	isactive char(1) not null default 'Y',
	constraint pk_query_id primary key (query_id)
)engine = InnoDB;

create table pt_column_type(
	column_type_id int auto_increment not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	name varchar(60) not null,
	isactive char(1) not null default 'Y',
	constraint pk_column_type_id primary key (column_type_id)
)engine = InnoDB;

create table pt_window_type(
	window_type_id int auto_increment not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	name varchar(60) not null,
	isactive char(1) not null default 'Y',
	constraint pk_window_type_id primary key (window_type_id)
)engine = InnoDB;

create table pt_field_type(
	field_type_id int auto_increment not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	name varchar(60) not null,
	isactive char(1) not null default 'Y',
	constraint pk_field_type_id primary key (field_type_id)
)engine = InnoDB;

create table pt_table(
	table_id int auto_increment not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	tablename varchar(60) not null,
	name varchar(60) not null,
	isview char(1) not null default 'N',
	isactive char(1) not null default 'Y',
	constraint pk_table_id primary key (table_id)
)engine = InnoDB;

create table pt_column(
	column_id int auto_increment not null,
	table_id int not null,
	column_type_id int not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	columnname varchar(60) not null,
	name varchar(60) not null,
	position int not null default 1,
	length int not null,
	isactive char(1) not null default 'Y',
	constraint pk_column_id primary key (column_id),
	constraint fk_table_id foreign key (table_id) references pt_table (table_id) on update cascade on delete restrict,
	constraint fk_column_type_id foreign key (column_type_id) references pt_column_type (column_type_id) on update cascade on delete restrict
)engine = InnoDB;

create table pt_window(
	window_id int auto_increment not null,
	window_type_id int not null,
	table_id int not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	name varchar(60) not null,
	description varchar(255) not null,
	isactive char(1) not null default 'Y',
	constraint pk_window_id primary key (window_id),
	constraint fk_window_type_id foreign key (window_type_id) references pt_window_type (window_type_id) on update cascade on delete restrict,
	constraint fk_table_id01 foreign key (table_id) references pt_table (table_id) on update cascade on delete restrict 
)engine = InnoDB;

create table pt_field(
	field_id int auto_increment not null,
	window_id int not null,
	column_id int not null,
	field_type_id int not null,
	list_id int  not null,
	query_id int not null,
	field_parent_id int not null,
	created timestamp not null default current_timestamp,
	updated timestamp null,
	name varchar(60) not null,
	default_value varchar(60) null,
	position int not null default 1,
	isrequired char(1) not null default 'N',
	rule text,
	isactive char(1) not null default 'Y',
	constraint pk_field_id primary key (field_id),
	constraint fk_window_id foreign key (window_id) references pt_window (window_id) on update cascade on delete restrict,
	constraint fk_column_id foreign key (column_id) references pt_column (column_id) on update cascade on delete restrict,
	constraint fk_field_type_id foreign key (field_type_id) references pt_field_type (field_type_id) on update cascade on delete restrict,
	constraint fk_list_id foreign key (list_id) references pt_list (list_id) on update cascade on delete restrict,
	constraint fk_query_id foreign key (query_id) references pt_query (query_id) on update cascade on delete restrict
)engine = InnoDB;