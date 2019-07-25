create table recipes (
	recipe_id int(3) auto_increment,
	recipe_name varchar(30) not null,
	ser_size int(1) default null,
	primary key(recipe_id)
       );

create table ingredient_types(
	type_id int(3) auto_increment,
	type_name varchar(30) not null,
	primary key (type_id)
	);

create table ingredients(
	ingredient_id int(3) auto_increment,
	type_id int(3),
	ingredient_name varchar(40) not null,
	cost decimal(7,2) default null,
	quantity varchar(10) DEFAULT NULL,
	unit varchar(5) default null,
	yield decimal(7,4)default null,
	costPerOz decimal(10,4) DEFAULT NULL,
	primary key (ingredient_id),
	foreign key (type_id) references ingredient_types(type_id)
	);

create table recipe_ingredients(
	recipe_id int(3),
	ingredient_id int(3),
	quantity varchar(10) default null,
	unit varchar(5) default null,
	notes varchar(100) default null,
	ingOz decimal(10,2) default null,
	primary key (recipe_id,ingredient_id),
	foreign key (recipe_id) references recipes (recipe_id),
	foreign key (ingredient_id) references ingredients (ingredient_id)
	);
