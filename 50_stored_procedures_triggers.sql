-- Crear un procedimiento almacenado para agregar un nuevo cliente
DELIMITER //
CREATE PROCEDURE agregar_cliente(IN nombre_cliente VARCHAR(100), IN email_cliente VARCHAR(100))
BEGIN
    INSERT INTO clientes (nombre, email) VALUES (nombre_cliente, email_cliente);
END //
DELIMITER ;

CALL agregar_cliente('James Doe', 'jamesdoe@mail.com');

-- Crear un trigger que evite la insercion de productos con stock negativo
DELIMITER //
CREATE TRIGGER verificar_stock
BEFORE INSERT ON productos
FOR EACH ROW
BEGIN 
	IF NEW.stock < 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El stock no puede ser negativo';
	END IF;
END //
DELIMITER ;

INSERT INTO productos (nombre, precio, stock) VALUES
('CPU',15000.00, -10);