SHOW DATABASES;

USE tienda; 

SHOW TABLES;

SELECT E.nombre, V.* 
FROM empleado E INNER JOIN venta V
	ON E.id_empleado = V.id_empleado
ORDER BY E.nombre;

SELECT A.nombre, V.*
FROM articulo A INNER JOIN venta V 
	ON A.id_articulo = V.id_articulo
ORDER BY A.nombre;
    
SELECT V.clave, ROUND(SUM(A.precio))
FROM articulo A INNER JOIN venta V 
	ON A.id_articulo = V.id_articulo
GROUP BY V.clave
ORDER BY V.clave;
