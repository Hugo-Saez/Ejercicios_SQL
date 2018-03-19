#LENGUAJE DML
#1.-Utilizando la base de datos Sakila (BD de Pruebas de MySQL) Extraer todos los actores de la tabla actors.
select * from actor;

#2.-De la tabla actors queremos conocer todos los nombres existentes en la tabla sin que se repita para ello utilizaremos DISTINCT.
select distinct first_name from actor;

#3.-De la tabla film queemos obtenter una relación de películas que cumplan las siguientes características:
#rental_duration = 6
#rental_rate >=2.99
select * from film where rental_duration = 6 and rental_rate >= 2.99;

#4.-De la tabla film queremos obtener una relación de la peliculas que tengan un replacement_cost entre 15.99 y 22.99
select * from film where replacement_cost between 15.99 and 22.99;

#5.-Queremos Obtener todos los customers mediante el filtro de pertenencia a conjuntos IN que cumpla los siguientes requisitos.
#Pertenecen al store 1
#Y su first_name = MARY, o NANCY o DONNA.
select * from customer where store_id = 1 and first_name in('mary', 'nancy', 'donna');