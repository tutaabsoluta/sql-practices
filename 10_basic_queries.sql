-- Obtener todos los productos disponobles
SELECT * FROM pedidos;

-- Obtener productos con stock mayor a 10
SELECT * FROM productos WHERE stock > 10;

-- Ordenar productos por precio de mayor a menor
SELECT * FROM productos ORDER BY precio DESC;

-- Limitar la consulta a 2 productos
SELECT * FROM productos LIMIT 2;