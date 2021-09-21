1.Nombre, apellido y cursos que realiza cada estudiante
2.Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
3.Nombre, apellido y cursos que dicta cada profesor
4.Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
5.Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
6.Cursos cuyo cupo disponible sea menor a 10

--1
SELECT e.nombre, apellido, c.nombre as Curso FROM `inscripcion` as i INNER JOIN estudiante as e ON (i.estudiante_legajo = e.legajo) INNER JOIN curso as c ON (c.codigo = i.curso_codigo) 
--2
SELECT e.nombre, apellido, c.nombre as Curso FROM `inscripcion` as i INNER JOIN estudiante as e ON (i.estudiante_legajo = e.legajo) INNER JOIN curso as c ON (c.codigo = i.curso_codigo) ORDER BY c.nombre 
--3
SELECT p.nombre, apellido, c.nombre as Curso FROM profesores as p INNER JOIN curso as c ON (c.profesor_id = p.id)
--4
SELECT p.nombre, apellido, c.nombre as Curso FROM profesores as p INNER JOIN curso as c ON (c.profesor_id = p.id) ORDER BY c.nombre
--5
SELECT i.numero, c.nombre, COUNT(c.codigo) as inscripciones, cupo as CupoTotal, (cupo - COUNT(c.codigo)) as CupoRestante FROM inscripcion as i INNER JOIN curso as c on (c.codigo = i.curso_codigo) GROUP BY c.nombre
--6
SELECT i.numero, c.nombre, COUNT(c.codigo) as inscripciones, cupo as CupoTotal, (cupo - COUNT(c.codigo)) as CupoRestante FROM inscripcion as i INNER JOIN curso as c on (c.codigo = i.curso_codigo) GROUP BY c.nombre HAVING CupoRestante>10 
