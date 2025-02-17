-- Contar la cantidad de productos
SELECT COUNT(*) AS total_productos FROM productos;

-- Calcular el precio promedio de los productos
SELECT AVG(precio) AS precio_promedio FROM productos;

-- Obtener el producto mas caro y mas barato
SELECT MAX(precio) AS producto_mas_caro, MIN(precio) AS precio_mas_barato FROM productos;

-- Sumar el total de ventas en pedidos
SELECT SUM(total) AS total_ventas FROM pedidos;

