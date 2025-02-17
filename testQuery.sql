CREATE DATABASE tienda;

USE tienda;


-- Clientes
CREATE TABLE productos (
	id int auto_increment primary key,
	nombre varchar(100) not null,
	precio decimal(10,2) not null,
	stock int default 0
);
-- Categorias
CREATE TABLE categorias (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100) NOT NULL
);

-- Clientes
CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    email varchar(150) UNIQUE NOT NULL,
    telefono varchar(15)
);

-- Pedidos
CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Detalle pedidos
CREATE TABLE detalle_pedido (
	id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (producto_id) REFERENCES productos(id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);

INSERT INTO productos (nombre, precio, stock) VALUES
('Laptop', 1200.50, 10),
('Mouse', 26.75, 50),
('Teclado', 45.99, 30);

SELECT * FROM productos