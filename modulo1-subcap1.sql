/* Bordón, José Miguel - Alkemy Custom SQL
Cree una tabla llamada CURSO con los atributos:
  Código de curso (clave primaria, entero no nulo)
  Nombre (varchar no nulo)
  Descripcion (varcha)
  Turno (varchar no nulo)
  Agregue un campo “cupo” de tipo numérico
  Inserte datos en la tabla:
    (101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
    (102, “Matemática Discreta”,””,”Tarde”,30)
Intente ingresar un registro con el nombre nulo y verifique que no funciona.
Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.
Actualice, para todos los cursos, el cupo en 25.
Elimine el curso Algoritmos.
*/

CREATE TABLE Curso(
  codigo int NOT NULL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  turno VARCHAR(25) NOT NULL
 )
 
ALTER TABLE Curso
ADD cupo int;

INSERT INTO Curso(codigo, nombre, descripcion, turno, cupo) VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35)
INSERT INTO Curso(codigo, nombre, descripcion, turno, cupo) VALUES (102, 'Matematica discreta','','Tarde',30)

UPDATE Curso SET cupo = 25

DELETE FROM Curso WHERE nombre='Algoritmos'
