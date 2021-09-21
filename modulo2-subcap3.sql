1.Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
2.Inserte datos siguiendo un orden no secuencial para el id.
3.Consulte los datos para visualizar el orden de registros.
4.Agregue una clave primaria para el campo id.
5.Consulte los datos para visualizar el orden de registros.
6.Conteste a la pregunta: ¿Por qué después de agregar la clave primaria, el orden de los registros es diferente?

CREATE TABLE persona(
  id INT,
  nombre VARCHAR(50)
)

INSERT INTO persona (id, nombre) VALUES (3, 'Pepe')
INSERT INTO persona (id, nombre) VALUES (1, 'Romina')
INSERT INTO persona (id, nombre) VALUES (16, 'Carlos')
INSERT INTO persona (id, nombre) VALUES (13, 'Jennifer')

SELECT * FROM PERSONA 
--Orden obtenido: 3,1,16,13

ALTER TABLE persona ADD PRIMARY KEY (id)

SELECT * FROM PERSONA 
--Orden obtenido: 1,3,13,16

--Respuesta: 
--El ordenamiento generado en la segunda consulta se debe a la creación automática de un índice clousterizado al definir la clave primaria id.
