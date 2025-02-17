-- Obtener todos los pedidos con los datos del cliente
SELECT pedidos.id, clientes.nombre, pedidos.fecha, pedidos.total
FROM pedidos
INNER JOIN clientes ON pedidos.cliente_id = clientes.id;

-- Obtener productos y su cantidad en cada pedido
SELECT detalle_pedido.pedido_id, productos.nombre, detalle_pedido.cantidad
FROM detalle_pedido
INNER JOIN productos ON detalle_pedido.producto_id = productos.id;

-- Obtener todos los clientes y sus pedidos, incluyenco clientes sin pedidos
SELECT clientes.nombre, pedidos.id AS pedido_id, pedidos.fecha
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;
