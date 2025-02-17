-- Crear un indice en la columna email de clientes para acelerar busquedas
CREATE INDEX idx_email ON clientes(email);

-- Crear un indice compuesto en pedidos para mejorar filtrado por cliente y fecha
CREATE INDEX idx_cliente_fecha ON pedidos(cliente_id, fecha);

-- Explicar cómo se ejecuta una consulta para optimizarla
EXPLAIN SELECT * FROM pedidos WHERE cliente_id = 1;