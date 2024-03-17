-- Creaci�n de la tabla "Usuarios"
CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    fecha_nacimiento DATE,
    CONSTRAINT chk_fecha_nacimiento CHECK (fecha_nacimiento <= CURRENT_DATE) -- Restricci�n de fecha de nacimiento
);

-- Creaci�n de la tabla "Pedidos"
CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    usuario_id INT,
    fecha_pedido DATE,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id) -- Llave for�nea que hace referencia a la tabla Usuarios
);

-- Creaci�n de la tabla "Productos"
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    stock INT,
    CONSTRAINT chk_precio_stock CHECK (precio > 0 AND stock >= 0) -- Restricci�n de precio y stock positivos
);

-- Creaci�n de la tabla "Detalles_Pedido"
CREATE TABLE Detalles_Pedido (
    id INT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id), -- Llave for�nea que hace referencia a la tabla Pedidos
    FOREIGN KEY (producto_id) REFERENCES Productos(id) -- Llave for�nea que hace referencia a la tabla Productos
);
