SHOW DATABASES;

USE tienda;

SHOW TABLES;


SELECT nombre, COUNT(*) FROM puesto GROUP BY nombre;

-------------------------------------------------------------

SELECT nombre, SUM(salario) FROM puesto GROUP BY nombre;

-------------------------------------------------------------

SELECT v.id_empleado, e.nombre, COUNT(v.id_empleado) AS t 
FROM venta AS v INNER JOIN empleado AS e ON (v.id_empleado = e.id_empleado) 
GROUP BY (v.id_empleado);

SELECT id_empleado, COUNT(*) 
FROM venta
GROUP BY id_empleado;

-------------------------------------------------------------

SELECT v.id_articulo, a.nombre, COUNT(v.id_articulo) AS t 
FROM venta AS v INNER JOIN articulo AS a ON (v.id_articulo = a.id_articulo) 
GROUP BY (v.id_articulo);

SELECT  id_articulo, COUNT(*)
FROM venta
GROUP BY id_articulo;