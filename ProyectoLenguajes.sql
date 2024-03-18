-- Tabla Empresa
CREATE TABLE Local (
    Nombre VARCHAR2(40),
    Direccion VARCHAR2(50),
    Telefono VARCHAR2(10),
    Correo VARCHAR2(20),
    Productos_Venta VARCHAR2(50),
    CONSTRAINT pk_local PRIMARY KEY (Nombre)
);



-- Tabla Distribuidores
CREATE TABLE Distribuidores (
    ID_Distribuidor VARCHAR2(10),
    Direccion VARCHAR2(50),
    Telefono VARCHAR2(10),
    Correo VARCHAR2(20),
    Tiendas VARCHAR2(50),
    CONSTRAINT pk_distribuidor PRIMARY KEY (ID_Distribuidor)
);

-- Tabla Inventario
CREATE TABLE Inventario (
    ID_Set VARCHAR2(500),
    nombre_Set VARCHAR2(500),
    Precio NUMBER,
    Descripcion VARCHAR2(500),
    CONSTRAINT pk_inventario PRIMARY KEY (ID_Set)
);

--------MODIFICACIONES A INVENTARIO:------------
SELECT s.*, i.Precio, i.Descripcion
FROM SetsJuego s
INNER JOIN Inventario i ON s.ID_Set = i.ID_Producto;
-----------------------------------------------------

-- Tabla Producto
CREATE TABLE Producto (
    ID_Producto VARCHAR2(10),
    Nombre_Producto VARCHAR2(50),
    Detalles_Juego VARCHAR2(100),
    Precio NUMBER,
    CONSTRAINT pk_producto PRIMARY KEY (ID_Producto)
);
 ------------MODIFICACIONES-----------------------

Alter TABLE Producto RENAME to SETS --Renombre de la tabla 
ALTER TABLE SETS RENAME TO SetsJuego
-- Modificar el atributo nombre_Producto a nombre_Set en la tabla Set
ALTER TABLE SetsJuego RENAME COLUMN nombre_Producto TO nombre_Set;
-- Modificar el atributo nombre_Producto a nombre_Set en la tabla Set
ALTER TABLE SetsJuego RENAME COLUMN ID_Producto TO ID_Set;

ALTER TABLE SetsJuego DROP COLUMN Rango_Edad;
ALTER TABLE SetsJuego DROP COLUMN Cantidad;

select * from SetsJuego;
---------------------------------------

ALTER TABLE SetsJuego
MODIFY ID_Set VARCHAR(100);

ALTER TABLE SetsJuego
MODIFY nombre_Set VARCHAR2(500);

ALTER TABLE SetsJuego
MODIFY Detalles_juego VARCHAR2(500);


-- Tabla Cliente

CREATE TABLE Cliente (
    ID_Cliente VARCHAR2(10),
    Nombre VARCHAR2(50),
    PrimerApellido VARCHAR2(50),
    SegundoApellido VARCHAR2(50),
    Direccion VARCHAR2(100),
    Telefono VARCHAR2(100),
    Correo VARCHAR2(100),
    CONSTRAINT pk_cliente PRIMARY KEY (ID_Cliente)
);

-- Tabla Encabezado_Factura
CREATE TABLE Encabezado_Factura (
    ID_Factura VARCHAR2(10),
    ID_Cliente VARCHAR2(10),
    ID_Producto VARCHAR2(10),
    Total_Pago NUMBER,
    FechaCompra DATE,
    CONSTRAINT pk_encabezado_factura PRIMARY KEY (ID_Factura),
    CONSTRAINT fk_encabezado_factura_cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    CONSTRAINT fk_encabezado_factura_producto FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);

-- Tabla Detalle_Factura
CREATE TABLE Detalle_Factura (
    ID_DetalleFactura VARCHAR2(10),
    CantidadProducto NUMBER,
    Descuento NUMBER,
    Estado_Des VARCHAR2(10),
    CONSTRAINT pk_detalle_factura PRIMARY KEY (ID_DetalleFactura)
);

-- Tabla Entrega
CREATE TABLE Entrega (
    ID_Cliente VARCHAR2(10),
    ID_Factura VARCHAR2(10),
    Direccion_Entrega VARCHAR2(100),
    CONSTRAINT fk_entrega_cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    CONSTRAINT fk_entrega_factura FOREIGN KEY (ID_Factura) REFERENCES Encabezado_Factura(ID_Factura)
);




------------------------------------------------------------------------------------------------------
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40681', 'Retro Food Truck', 25000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('75347', 'TIE Bomber™', 52000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('75346', 'Pirate Snub Fighter', 30000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76281', 'X-Men X-Jet', 70000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('5008082', 'Mini Skeleton Storage Head – Green', 8500, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('31135', 'Vintage Motorcycle', 13500, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76916', 'Porsche 963', 22000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76914', 'Ferrari 812 Competizione', 22000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76915', 'Pagani Utopia', 22000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40611', 'Year of the Dragon', 0, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('10329', 'Tiny Plants', 43000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40603', 'Wintertime Carriage Ride', 0, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40604', 'Christmas Decor', 0, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('6487474', 'Buildable Grey Castle', 0, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40602', 'Winter Market Stall', 0, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40601', 'Majisto’s Magical Workshop', 0, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('10315', 'Tranquil Garden', 0, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('71045', 'Lego Minifigures Series 25', 4000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('71045', 'Lego Minifigures Series 25', 48000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76995', 'Shadow the Hedgehog Escape', 18000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('71429', 'Nabbit at Toad''s Shop Expansion Set', 18000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('71430', 'Penguin Family Snow Adventure Expansion Set', 18000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76280', 'Spider-Man vs. Sandman: Final Battle', 30000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40543', 'St. Bernard', 12000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76281', 'X-Men X-Jet', 70000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40544', 'Pets - French Bulldog', 10000, 'Evento');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('31147', 'Retro Camera', 18000, 'Evento');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('31147', 'Retro Camera', 18000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('31157', 'Exotic Peacock', 17000, 'Evento');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('31156', 'Tropical Ukulele', 27000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('21345', 'Polaroid OneStep SX-70 Camera', 68000, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('71405', 'LEGO® Minifigures Series 25', 4000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('10328', 'Bouquet of Roses', 52000, 'Evento');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('5006210', 'LEGO® Storage Head – Mini (Silly)', 8500, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('5006258', 'LEGO® Storage Head – Mini (Silly)', 8500, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('5006211', 'LEGO® Storage Head – Mini (Winking)', 8500, 'Disponible');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('75375', 'Millennium Falcon™', 70000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('75376', 'Tantive IV™', 63000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('75377', 'Invisible Hand™', 43000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('31154', 'Forest Animals: Red Fox', 43000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76429', 'Talking Sorting Hat™', 80000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40677', 'Prisoner of Azkaban™ Figures', 42000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('76430', 'Hogwarts™ Castle Owlery', 38000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('854236', 'Darth Vader™ Keyring', 6500, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('40680', 'Flower Store', 0, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('75379', 'R2-D2™', 80000, 'Sin Registro');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('NoID1', 'Poison Ivy - DC Multiverse Movie Batman & Robin 7 Figure BAF Mr. Freeze', 30000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('NoID2', 'Batgirl - DC Multiverse Movie Batman y Robin 7 Figure BAF Mr. Freeze', 30000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('NoID3', 'Batman - DC Multiverse Movie Batman & Robin 7 Figure BAF Mr. Freeze', 30000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('NoID5', 'The Flash (The Flash Movie) 12" PVC Statue', 25000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('NoID6', 'The Joker (The Deadly Duo) Gold Label 7" Figure McFarlane Toys Store Exclusive', 35000, 'Vendido');
INSERT INTO Inventario (ID_Set, nombre_Set, Precio, Descripcion) VALUES ('NoID7', 'Hawkman (Zero Hour)', 35000, 'Vendido');


INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('76995', 'Shadow the Hedgehog Escape', '', 18000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('71429', 'Nabbit at Toad''s Shop Expansion Set', '', 18000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('71430', 'Penguin Family Snow Adventure Expansion Set', '', 18000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('76280', 'Spider-Man vs. Sandman: Final Battle', '', 30000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('76281', 'X-Men X-Jet', '', 70000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40543', 'St. Bernard', '', 12000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40681', 'Retro Food Truck', '', 25000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40544', 'Pets - French Bulldog', '', 10000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('31147', 'Retro Camera', '', 18000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('31157', 'Exotic Peacock', '', 17000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('31156', 'Tropical Ukulele', '', 27000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('21345', 'Polaroid OneStep SX-70 Camera', '', 68000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('71405', 'LEGO® Minifigures Series 25', '', 4000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('10328', 'Bouquet of Roses', '', 52000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('5006210', 'LEGO® Storage Head – Mini (Silly)', '', 8500);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('5006258', 'LEGO® Storage Head – Mini (Silly)', '', 8500);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('5006211', 'LEGO® Storage Head – Mini (Winking)', '', 8500);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('10329', 'Tiny Plants', '', 43000);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40603', 'Wintertime Carriage Ride', '', 0);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40604', 'Christmas Decor', '', 0);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('6487474', 'Buildable Grey Castle', '', 0);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40602', 'Winter Market Stall', '', 0);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('40601', 'Majisto’s Magical Workshop', '', 0);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('10315', 'Tranquil Garden', '', 0);
INSERT INTO SetsJuego (ID_Set, nombre_Set, Detalles_Juego, Precio) VALUES ('71045', 'Lego Minifigures Series 25', '', 48000);


select * from setsjuego;
select * from inventario;