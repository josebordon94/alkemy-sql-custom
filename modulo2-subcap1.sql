--1
SELECT COUNT(numero) FROM ESTUDIANTE where carrera = 'Mecánica' 

--2
SELECT MIN(salario) FROM `profesores` WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1990-01-01' 

--3 / 4
SELECT COUNT(id) FROM PASAJERO GROUP BY idpais 

SELECT SUM(monto) from PAGO

SELECT ROUND(SUM(monto), 2) from PAGO WHERE idpasajero = 1

SELECT AVG(monto) from PAGO WHERE idpasajero = 1
