-- Insertar un nuevo producto
INSERT INTO productos (nombre, precio, stock) VALUES
('GPU', 3000.00, 10);

-- Actualizar el precio de un producto
UPDATE productos SET precio = 4000.00 WHERE nombre = 'GPU';

-- Eliminar un producto
DELETE FROM productos wHERE nombre = 'GPU';
