CREATE DATABASE prova;
USE prova;



CREATE TABLE aluno
( 
 id_alu int auto_increment primary key,
 ra_alu varchar(8) not null,
 nom_alu varchar(100) not null,
 sex_alu char(1) not null,
 dt_nasc_alu date not null,
 dt_matr_alu date not null,
 email_alu varchar(100) not null,
 curso_alu varchar(100) not null,
 log_end_alu varchar(100) not null,
 num_end_alu varchar(20) not null,
 comp_end_alu varchar(20) not null,
 bair_end_alu varchar(100) not null,
 cid_end_alu varchar(100) not null,
 uf_end_alu char(2) not null
);
