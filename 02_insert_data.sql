
INSERT INTO productos (nombre, precio, stock) VALUES
('Laptop', 1200.00, 10),
('Teclado', 45.00, 30),
('Mouse', 25.00, 50);

INSERT INTO clientes (nombre, email) VALUES
('John Doe', 'johndoe@mail.com'),
('Jane Doe','janedoe@mail.com');

INSERT INTO pedidos (cliente_id, fecha, total) VALUES 
(1, '2024-02-16', 1245.00),
(2, '2024-02-15', 45.00);

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, subtotal) VALUES
(1,1,3,1000);

