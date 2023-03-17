CREATE TABLE category (
	category_id varchar(10) PRIMARY KEY,
	category varchar(30)
);

CREATE TABLE subcategory (
	subcategory_id varchar(10) PRIMARY KEY,
	subcategory varchar(30)
);

CREATE TABLE campaign (
	cf_id int PRIMARY KEY,
	contact_id int,
	company_name varchar(50),
	description varchar(150),
	goal int,
	pledged int,
	outcome varchar(25),
	backers_count int,
	country varchar(15),
	currency varchar(15),
	launched_date date,
	end_date date,
	category_id varchar(10),
	subcategory_id varchar(10),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE contacts(
	contact_id int PRIMARY KEY,
	first_name varchar(20),
	last_name varchar(30),
	email varchar(50)
);


SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM contacts;

SELECT * FROM subcategory;
