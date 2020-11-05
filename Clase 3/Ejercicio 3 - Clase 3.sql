CREATE VIEW tickets_008 AS
(
	SELECT v.clave, v.fecha, a.nombre AS producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) AS empleado
    FROM venta AS v
    JOIN empleado AS e
      ON v.id_empleado = e.id_empleado
	JOIN articulo AS a
	  ON v.id_articulo = a.id_articulo
);
SELECT * FROM tickets_008;



CREATE VIEW vista1_Clase3_008_03 AS
(
	SELECT  E.nombre Empleado, P.nombre Puesto
	FROM empleado E INNER JOIN
	puesto P USING(id_puesto)
);
SELECT * FROM vista1_Clase3_008;



CREATE VIEW vista2_Clase3_008 AS
(
	SELECT V.id_venta, E.nombre, A.nombre Articulo
	FROM empleado E INNER JOIN venta V ON(V.id_empleado = E.id_empleado) INNER JOIN articulo A ON(V.id_articulo = A.id_articulo)
	ORDER BY E.nombre
);
SELECT * from vista2_Clase3_008;



CREATE VIEW vista3_Clase3_008 AS
(
	SELECT P.nombre, COUNT(*) Total_ventas
	FROM puesto P JOIN empleado E USING(id_puesto) INNER JOIN
		(SELECT id_empleado ID, COUNT(*) 
			FROM venta
			GROUP BY id_empleado) T ON (T.ID = E.id_empleado)
	GROUP BY P.id_puesto
	ORDER BY Total_ventas DESC, nombre
	LIMIT 1
);
SELECT * FROM vista3_Clase3_008;


