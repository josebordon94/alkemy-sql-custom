--Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT COUNT(*) FROM(SELECT p.nombre, apellido, COUNT(c.nombre) as Cursos, c.turno FROM profesores as p INNER JOIN curso as c ON (c.profesor_id = p.id) WHERE turno = 'Noche' GROUP BY p.nombre HAVING Cursos > 1) as Qty

--Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT e.legajo, e.nombre, e.apellido, e.fecha_nacimiento, e.carrera FROM estudiante as e INNER JOIN inscripcion as i ON e.legajo = i.estudiante_legajo WHERE i.curso_codigo != '1' GROUP BY e.nombre
