CREATE DATABASE CANIL;
USE CANIL;


CREATE TABLE CAO
(
cod_cao INT PRIMARY KEY auto_increment,
nom_cao VARCHAR(200),
idad_cao INT,
port_cao VARCHAR(10),
raca_cao VARCHAR(200),
defi_cao VARCHAR(2000),
doen_cao VARCHAR(200),
temp_passeio VARCHAR(200),
agress_cao CHAR(1),
nom_dono_cao VARCHAR(200),
dat_pagam_cao DATETIME,
val_pagam_cao double,
form_pag_cao VARCHAR(100)
);

	select * FROM CAO;
    
create table usuario
(
id int primary key auto_increment,
nome varchar(50) not null,
login varchar(10) not null,
senha text not null, 
nivel char not null
);
    


