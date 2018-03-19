# Ejercicios_SQL
# Ejercicios para prácticar SQL
## Ejercicios SQL
### LENGUAJE DDL
>1.Crea una base de datos denominada vuelos. Con las siguientes características:
* Character set = Latin1
* Collate = latin1_spanish_ci

CREATE DATABASE vuelos CHARACTER SET Latin1 COLLATE latin1_spanish_ci;

>2.Renombra la base de datos a viajes.
CREATE DATABASE viajes CHARACTER SET Latin1 COLLATE latin1_spanish_ci;

>3.Crea una tabla denominada clientes que contendrá los siguientes campos:
* id 
  * Integer
  * autoincremental 
  * not_null 
  * primary_key
* nombre
  * varchar(50)
* apellidos
  * varchar(50)
* direccion
  * varchar(150)
  
  create table clientes(
	id integer auto_increment not null primary key,
    nombre varchar(50),
    apellidos varchar(50),
    direccion varchar(150)
);

>4.Crea una tabla denominada viajes que contendrá los siguientes campos:
* id
  * Integer
  * autoincremental
  * not_null
  * primary_key
* titulo
  * varchar(50)
* descripcion
  * varchar(150)
* codigoCliente 
  *Integer 
  *Forgein key clientes(id)
  
  create table viajes(
	id integer auto_increment not null primary key,
    titulo varchar(50),
    descripcion varchar(150),
    codigoCliente integer,
    foreign key(codigoCliente) references clientes(id)
);

### LENGUAJE DML
>1. Utilizando la base de datos Sakila (BD de Pruebas de MySQL)
Extraer todos los actores de la tabla actors.
select * from actor;

>2. De la tabla actors queremos conocer todos los nombres existentes en la tabla sin que se repita para ello utilizaremos DISTINCT.
select distinct first_name from actor;

>3. De la tabla film queemos obtenter una relación de películas que cumplan las siguientes características:
* rental_duration = 6
* rental_rate >=2.99
select * from film where rental_duration = 6 and rental_rate >= 2.99;

>4. De la tabla film queremos obtener una relación de la peliculas que tengan un replacement_cost entre 15.99 y 22.99
select * from film where replacement_cost between 15.99 and 22.99;


>5.  Queremos Obtener todos los customers mediante el filtro de pertenencia a conjuntos IN que cumpla los siguientes requisitos.
* Pertenecen al store 1
* Y su first_name = MARY, o NANCY  o DONNA.
select * from customer where store_id = 1 and first_name in('mary', 'nancy', 'donna');
