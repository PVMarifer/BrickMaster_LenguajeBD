-- Tabla Empresa
CREATE TABLE Empresa (
    Nombre VARCHAR2(40),
    Direccion VARCHAR2(50),
    Telefono VARCHAR2(10),
    Correo VARCHAR2(20),
    Productos_Venta VARCHAR2(50),
    CONSTRAINT pk_empresa PRIMARY KEY (Nombre)
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
    ID_Producto VARCHAR2(10),
    Producto VARCHAR2(50),
    Cantidad NUMBER,
    Precio NUMBER,
    Descripcion VARCHAR2(100),
    CONSTRAINT pk_inventario PRIMARY KEY (ID_Producto)
);

-- Tabla Producto
CREATE TABLE Producto (
    ID_Producto VARCHAR2(10),
    Nombre_Producto VARCHAR2(50),
    Rango_Edad NUMBER,
    Detalles_Juego VARCHAR2(100),
    Precio NUMBER,
    Cantidad NUMBER,
    CONSTRAINT pk_producto PRIMARY KEY (ID_Producto)
);

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
