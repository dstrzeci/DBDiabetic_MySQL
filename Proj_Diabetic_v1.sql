create database diabetic;
use	diabetic;

# diabetic Tables  

create table products (
  pro_id INT NOT NULL AUTO_INCREMENT ,
  p_name VARCHAR(55) ,
  p_category VARCHAR(25) ,
  PRIMARY KEY (pro_id) 
  );
# describe produscts;

create table gindex (
  gin_id INT NOT NULL ,
  gi_index  INT ,
  gi_load  INT ,
  serving_serve INT ,
  unit varchar (10) ,
  gi_product INT ,
  FOREIGN KEY (gi_product) REFERENCES products (pro_id) ,
  PRIMARY KEY (gin_id)
  );
# describe gi_gindex;

create table nutrition (
  nut_id INT NOT NULL ,
  dietary_fiber INT , 
  protein  INT ,
  energy INT ,
  fat INT ,
  carbs INT ,
  nutrition_p INT ,
  FOREIGN KEY (nutrition_p) REFERENCES products (pro_id) ,
  PRIMARY KEY (nut_id)
  );
# describe nutrition;

 CREATE TABLE results (
  res_id INT NOT NULL,
  gi_reslut INT,
  nut_reslut INT,
  dtime_result DATETIME,
  res_userpro INT,
  FOREIGN KEY (res_userpro) REFERENCES products (pro_id) ,
  PRIMARY KEY (res_id)
  ); 

create table users (
  use_id INT NOT NULL ,
  first_name VARCHAR(20) ,
  last_name VARCHAR(40) ,
  registration_date DATETIME ,  
  res_user INT ,
  FOREIGN KEY (res_user) REFERENCES products (pro_id)  ,
  PRIMARY KEY (use_id)
);

create table permitiion (
  permit_id INT NOT NULL ,
  email VARCHAR(40) ,
  pass VARCHAR(40) ,
  permit_cat VARCHAR(20) ,
  perm int ,
  FOREIGN KEY (perm) REFERENCES users (use_id) ,
  PRIMARY KEY (permit_id)
);


INSERT INTO products VALUES (20,'Borówka amerykańska', 'owoce');

#load data local infile "C:/Users/len/Desktop/DB_Diabetic/Tb_products.txt" into table products;

# describe users;
# describe results;
 #drop database diabetic; 

describe products;
select * from products;
drop table products;
  