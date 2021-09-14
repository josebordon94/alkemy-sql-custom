/* Bordón, José Miguel - Alkemy Custom SQL

Se adjunta en el repositorio el archivo profesores.sql para poder instanciar los datos.

Para cada caso, escriba la consulta correspondiente:

    1) Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
    2) Todos los profesores cuyo salario sea mayor o igual a 65000.
    3) Todos los profesores que nacieron en la década del 80.
    4) 5 registros
    5) Todos los profesores cuyo apellido inicie con la letra “P”
    6) Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
*/

--1
SELECT nombre, apellido, fecha_nacimiento FROM PROFESOR ORDER BY fecha_nacimiento ASC

--2
SELECT * FROM PROFESOR WHERE salario > 65000

--3
SELECT * FROM `profesores` WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1990-01-01' 

--4
SELECT * FROM `profesores` LIMIT 5

--5
SELECT * FROM `profesores` WHERE apellido LIKE 'p%' 

--6
SELECT * FROM `profesores` WHERE (fecha_nacimiento BETWEEN '1980-01-01' AND '1990-01-01') AND (salario > 80000) 
