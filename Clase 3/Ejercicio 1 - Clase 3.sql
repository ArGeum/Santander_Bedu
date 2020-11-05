SHOW DATABASES;

USE tienda; 

SHOW TABLES;

SELECT E.nombre
FROM empleado E, 
	(SELECT id_puesto ID FROM puesto WHERE salario < 10000) P
WHERE E.id_puesto IN (P.ID);

SELECT id_empleado, min(total_ventas), max(total_ventas)
FROM
 (SELECT clave, id_empleado, count(*) total_ventas
      FROM venta
      GROUP BY clave, id_empleado) AS sq
GROUP BY id_empleado;

SELECT DISTINCT V.id_venta 
FROM venta V, 
	(SELECT id_articulo ID FROM articulo WHERE precio > 5000) T
WHERE V.id_articulo IN (T.ID);