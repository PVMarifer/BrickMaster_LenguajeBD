CREATE TABLE Locales (
    ID_Local VARCHAR2(10) PRIMARY KEY,
    Nombre VARCHAR2(40),
    Direccion VARCHAR2(50),
    Telefono VARCHAR2(10),
    Correo VARCHAR2(20),
    Productos_Venta VARCHAR2(50)
);
/*Modifiqué la tabla de locales porque no tenía un ID_Local y eso era lo que daba error en algunos procedimientos, el Primary Key
había sido declarado por el nombre entonces en lugar de editar todos los procedimientos por nombre, cambie la tabla -Fernanda*/

CREATE TABLE Distribuidores (
    ID_Distribuidor VARCHAR2(10),
    Direccion VARCHAR2(50),
    Telefono VARCHAR2(10),
    Correo VARCHAR2(20),
    Tiendas VARCHAR2(50),
    CONSTRAINT pk_distribuidor PRIMARY KEY (ID_Distribuidor));
    

CREATE TABLE Inventario (
ID_Set VARCHAR2(500),
nombre_Set VARCHAR2(500),
Precio NUMBER,
Descripcion VARCHAR2(500), 
CONSTRAINT pk_inventario PRIMARY KEY (ID_Set));

/*Cuando inserten estos datos, les va a pedir un valor para Robin, tienen que poner "Y Robin" porque se encuentre como "& Robin",
entonces modifica el dato. Si no se modifica, da error. -Fernanda*/

/*Cuando hagan los inserts habrá un error por constraints, esto es porque se está identificando un insert con mismo ID en 
alguno de los datos
-Fernanda*/

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

------------CREAR TABLA SETS JUEGO----------------------


CREATE TABLE SetsJuego (
    ID_Set VARCHAR(100),
    nombre_Set VARCHAR2(500),
    Detalles_Juego VARCHAR2(500),
    Precio NUMBER,
    CONSTRAINT pk_Set PRIMARY KEY (ID_Set));
    
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



CREATE TABLE Cliente (
    ID_Cliente VARCHAR2(10),
    Nombre VARCHAR2(50),
    PrimerApellido VARCHAR2(50),
    SegundoApellido VARCHAR2(50),
    Direccion VARCHAR2(100),
    Telefono VARCHAR2(100),
    Correo VARCHAR2(100),
    CONSTRAINT pk_cliente PRIMARY KEY (ID_Cliente));
    


CREATE TABLE Encabezado_Factura (
    ID_Factura VARCHAR2(10),
    ID_Cliente VARCHAR2(10),
    ID_Set VARCHAR2(100),
    Total_Pago NUMBER,
    FechaCompra DATE,
    CONSTRAINT pk_encabezado_factura PRIMARY KEY (ID_Factura),
    CONSTRAINT fk_encabezado_factura_cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    CONSTRAINT fk_encabezado_factura_Set FOREIGN KEY (ID_Set) REFERENCES SetsJuego(ID_Set));
    

CREATE TABLE Detalle_Factura (
    ID_DetalleFactura VARCHAR2(10),
    CantidadProducto NUMBER,
    Descuento NUMBER,
    Estado_Des VARCHAR2(10),
    CONSTRAINT pk_detalle_factura PRIMARY KEY (ID_DetalleFactura));
    
CREATE TABLE Entrega (
    ID_Cliente VARCHAR2(10),
    ID_Factura VARCHAR2(10),
    Direccion_Entrega VARCHAR2(100),
    CONSTRAINT fk_entrega_cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    CONSTRAINT fk_entrega_factura FOREIGN KEY (ID_Factura) REFERENCES Encabezado_Factura(ID_Factura));
    

------------------ROLES---------------------------
-----------PROCEDIMIENTOS DE ROLES----------------------------------
 
 CREATE TABLE ROLE_S(
    ID_ROL INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ROL VARCHAR2(50)
    CONSTRAINT rol_unico UNIQUE (ID_ROL) /*Le agregué un constraint porque a la hora de querer insertar los datos, 
    deja que hayan más administradores, clientes o cajeros pero como no hay nada que lo diferencie, pues se ven todos repetidos. -Fernanda
    */
);

INSERT INTO ROLE_S (ROL) VALUES ('Administrador');
INSERT INTO ROLE_S (ROL) VALUES ('Cliente');
INSERT INTO ROLE_S (ROL) VALUES ('Cajero');

--------------INSERTAR ROL--------------
CREATE OR REPLACE PROCEDURE INSERTAR_ROL(p_ROL VARCHAR2) AS
BEGIN
    INSERT INTO ROLE_S(ROL)
    VALUES (p_ROL);
    DBMS_OUTPUT.PUT_LINE('Rol insertado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al insertar rol: ' || SQLERRM);
        RAISE;
END;


-------------VER ROL------------------

CREATE OR REPLACE PROCEDURE VER_ROLES AS 
    VISTA_ROL SYS_REFCURSOR;
    ID_ROL ROLE_S.ID_ROL%TYPE;
    ROL    ROLE_S.ROL%TYPE;
BEGIN
    OPEN VISTA_ROL FOR SELECT ID_ROL, ROL FROM ROLE_S;
    DBMS_OUTPUT.PUT_LINE('ID_ROL | ROL');
    DBMS_OUTPUT.PUT_LINE('-----ID ROL-----|--------ROL---------');
    LOOP
        FETCH VISTA_ROL INTO ID_ROL, ROL;
        EXIT WHEN VISTA_ROL%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(ID_ROL || ' | ' || ROL);
    END LOOP;
    CLOSE VISTA_ROL;
END;

------------------VER ROL AC---------------------
/*No entiendo cuál es la diferencia entre Rol AC y Rol normal, Este muestra solo un rol específico basado en el ID_ROL? -Fernanda
Consideraría Eliminar el de Ver Rol normal y dejarlo solo por ID*/

CREATE OR REPLACE PROCEDURE VER_ROLAC (TRAER INT) AS 
    VISTA_ROLAC SYS_REFCURSOR;
    ID_ROL ROLE_S.ID_ROL%TYPE;
    ROL    ROLE_S.ROL%TYPE;
BEGIN
    OPEN VISTA_ROLAC FOR SELECT ID_ROL, ROL FROM ROLE_S WHERE ID_ROL = TRAER;
    DBMS_OUTPUT.PUT_LINE('ID_ROL | ROL');
    DBMS_OUTPUT.PUT_LINE('-----ID ROL-------|--------ROL---------');
    LOOP
        FETCH VISTA_ROLAC INTO ID_ROL, ROL;
        EXIT WHEN VISTA_ROLAC%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(ID_ROL || ' | ' || ROL);
    END LOOP;
    CLOSE VISTA_ROLAC;
END;

----------------------ELIMINAR ROL---------------------------------------

CREATE OR REPLACE PROCEDURE ELIMINAR_ROL(ELIMINAR INT) AS
BEGIN
    DELETE FROM ROLE_S WHERE ID_ROL = ELIMINAR;
    DBMS_OUTPUT.PUT_LINE('Rol eliminado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al eliminar rol: ' || SQLERRM);
        RAISE;
END;


 ---------------CLIENTE PACKAGE -----------------------------
 

CREATE OR REPLACE PACKAGE Cliente_Package AS --Crea el Paquete
  PROCEDURE Obtener_Info_Cliente( --Toma los parámetros de la tabla Cliente
    p_ID_Cliente IN VARCHAR2,
    o_Nombre OUT VARCHAR2,
    o_Direccion OUT VARCHAR2,
    o_Telefono OUT VARCHAR2,
    o_Correo OUT VARCHAR2
  ); 
END Cliente_Package; --Cierra la especificación del paquete
/

CREATE OR REPLACE PACKAGE BODY Cliente_Package AS --Crea el cuerpo del paquete, su "Relleno" pues
  PROCEDURE Obtener_Info_Cliente( --Define la implementación del procedimiento Obtener_Info_Cliente, básicamente dice "Este procedimiento hará:..."
    p_ID_Cliente IN VARCHAR2,
    o_Nombre OUT VARCHAR2,
    o_Direccion OUT VARCHAR2,
    o_Telefono OUT VARCHAR2,
    o_Correo OUT VARCHAR2
  ) AS
  BEGIN --Inicia el procedimiento 
    SELECT Nombre, Direccion, Telefono, Correo --Seleciona los datos de la tabla Cliente y los asigna a las variables que se crearon anteriormente
    INTO o_Nombre, o_Direccion, o_Telefono, o_Correo --Los almacena en las variables
    FROM Cliente --De la tabla cliente
    WHERE ID_Cliente = p_ID_Cliente; --Lo almacena en la variable por el ID
  END Obtener_Info_Cliente; --Cierra el procedimiento
END Cliente_Package; --Cierra el paquete

/ --Esto lo vi en varios videos, básicamente era como una forma o práctica de código para cerrar los procedimientos o variables PLSQL -Fernanda
-------SETS JUEGO PACKAGE -----------------------------
CREATE OR REPLACE PACKAGE SetsJuego_Package AS 
  PROCEDURE Obtener_Info_Set(
    p_ID_Set IN VARCHAR2,
    o_nombre_Set OUT VARCHAR2,
    o_Precio OUT NUMBER,
    o_Detalles_Juego OUT VARCHAR2
  ); 
END SetsJuego_Package;
/

CREATE OR REPLACE PACKAGE BODY SetsJuego_Package AS
  PROCEDURE Obtener_Info_Set(
    p_ID_Set IN VARCHAR2,
    o_nombre_Set OUT VARCHAR2,
    o_Precio OUT NUMBER,
    o_Detalles_Juego OUT VARCHAR2
  ) AS
  BEGIN
    SELECT nombre_Set, Precio, Detalles_Juego
    INTO o_nombre_Set, o_Precio, o_Detalles_Juego
    FROM SetsJuego
    WHERE ID_Set = p_ID_Set;
  END Obtener_Info_Set;
END SetsJuego_Package;
/
_-------------EMPRESA PACKAGE--------------

/*Sería bueno que revisen este porque a mí el error que me da es básicamente que no se encuentra o no se conecta con los datos 
de usuario que había creado para el proyecto pero el procedimiento sería el mismo que el de los otros dos por lo que debería estar correcto.
-Fernanda*/

CREATE OR REPLACE PACKAGE EMPRESA_PACKAGE AS 
  PROCEDURE Obtener_Info_Local_Por_ID(
    p_ID_Local IN VARCHAR2,
    o_Direccion OUT VARCHAR2,
    o_Telefono OUT VARCHAR2,
    o_Correo OUT VARCHAR2,
    o_Productos_Venta OUT VARCHAR2
  ); 
END EMPRESA_PACKAGE;
/
CREATE OR REPLACE PACKAGE BODY EMPRESA_PACKAGE AS
  PROCEDURE Obtener_Info_Local_Por_ID(
    p_ID_Local IN VARCHAR2,
    o_Direccion OUT VARCHAR2,
    o_Telefono OUT VARCHAR2,
    o_Correo OUT VARCHAR2,
    o_Productos_Venta OUT VARCHAR2
  ) AS
  BEGIN
    SELECT Direccion, Telefono, Correo, Productos_Venta
    INTO o_Direccion, o_Telefono, o_Correo, o_Productos_Venta
    FROM Locales
    WHERE ID_Local = p_ID_Local;
  END Obtener_Info_Local_Por_ID;
END EMPRESA_PACKAGE;
/

------------------------------------
------------PROCEDIMIENTOS----------

-----INSERTAR PRODUCTO---------

/*Este me decía que tenía muchos datos o se insertaban muchos datos. Revisando en las tablas, en SetsJuego no existe el de "Cantidad" 
y me pasó con muchos de los procedimientos que siguen entonces solo quité ese atributo y ya funcionaron bien. -Fernanda*/
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE insertar_producto (
    p_nombre_producto   VARCHAR2,
    p_rango_edad        NUMBER,
    p_detalles_juego    VARCHAR2,
    p_precio            NUMBER,
) AS
BEGIN
    INSERT INTO SetsJuego (
        ID_Set,
        nombre_Set,
        Detalles_Juego,
        Precio
    ) VALUES (
        seq_producto.NEXTVAL,
        p_nombre_producto,
        p_detalles_juego,
        p_precio
    );
 
    dbms_output.put_line('Producto insertado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error al insertar producto: ' || sqlerrm);
        RAISE;
END;

CREATE SEQUENCE seq_producto;

----------VER PRODUCTOS POR ID-------------
/*Eliminé el otro Ver Productos porque lo sentía repetitivo, lo dejé solo 
por ID ya que este es la llave primaria. Este trae los datos de la tabla SetsJuego por su ID -Fernanda*/
 
CREATE OR REPLACE PROCEDURE ver_producto_por_id (
    vista_producto   OUT SYS_REFCURSOR,
    traer            VARCHAR2
) AS
BEGIN
    OPEN vista_producto FOR SELECT
                                ID_Set AS id_producto,
                                nombre_Set AS nombre_producto,
                                Detalles_Juego,
                                Precio,
                                NULL AS cantidad
                            FROM
                                SetsJuego
                            WHERE
                                ID_Set = traer;
 
END;
 
----------------ELIMINAR PRODUCTOS-------------------------
 
CREATE OR REPLACE PROCEDURE eliminar_producto (
    eliminar VARCHAR2
) AS
BEGIN
    DELETE FROM SetsJuego
    WHERE
        ID_Set = eliminar;
 
    dbms_output.put_line('Producto eliminado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error al eliminar producto: ' || sqlerrm);
        RAISE;
END;
 
------------ACTUALIZAR PRODUCTOS---------

 
CREATE OR REPLACE PROCEDURE actualizar_producto (
    p_id_producto       VARCHAR2,
    p_nombre_producto   VARCHAR2,
    p_detalles_juego    VARCHAR2,
    p_precio            NUMBER
) AS
BEGIN
    UPDATE SetsJuego
    SET
        nombre_Set = p_nombre_producto,
        Detalles_Juego = p_detalles_juego,
        Precio = p_precio
    WHERE
        ID_Set = p_id_producto;
 
    dbms_output.put_line('Producto actualizado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error al actualizar producto: ' || sqlerrm);
        RAISE;
END;

------------INSERTAR INVENTARIO---------------------------------


 CREATE OR REPLACE PROCEDURE insertar_inventario (
    p_cantidad   INT,
    p_nombre_Set   VARCHAR2
) AS
    v_set_id VARCHAR2(10);
BEGIN
    SELECT
        ID_Set
    INTO v_set_id
    FROM
        SetsJuego
    WHERE
        nombre_Set = p_nombre_Set;
 
    INSERT INTO Inventario (
        ID_Set,
        nombre_Set,
        Precio,
        Descripcion
        ) VALUES (
        v_set_id,
        p_nombre_Set,
        (SELECT Precio FROM SetsJuego WHERE nombre_Set = p_nombre_Set), -- Precio obtenido del SetJuego
        (SELECT Detalles_Juego FROM SetsJuego WHERE nombre_Set = p_nombre_Set) -- Descripcion obtenida del SetJuego
    );
 
    dbms_output.put_line('Inventario insertado exitosamente.');
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Error: Set de juego no encontrado.');
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Error al insertar Inventario: ' || sqlerrm);
        RAISE;
END;

----------------------------VER PRODUCTOS-------------------------------------------------


CREATE OR REPLACE PROCEDURE VER_INVENTARIOSAC (
    vista_inventarioac   OUT SYS_REFCURSOR,
    traer                VARCHAR2
) AS
BEGIN
    OPEN vista_inventarioac FOR SELECT
                                    ID_Set,
                                    nombre_Set,
                                    Precio,
                                    Descripcion
                                FROM
                                    Inventario
                                WHERE
                                    ID_Set = traer;
END VER_INVENTARIOSAC;



---------------------ELIMINAR INVENTARIO---------------------------------------------

CREATE OR REPLACE PROCEDURE eliminar_inventario (
    eliminar VARCHAR2
) AS
BEGIN
    DELETE FROM Inventario
    WHERE
        ID_Set = eliminar;
 
    dbms_output.put_line('Inventario eliminado exitosamente.');
END;

----------------------ACTUALIZAR INVENTARIO----------------------------------------------

/*En este no quité cantidad porque la variable fue seteada con descripción entonces no hay problema con este. -Fernanda */
CREATE OR REPLACE PROCEDURE ACTUALIZAR_INVENTARIO (
    p_ID_Set      VARCHAR2,
    p_cantidad    NUMBER
) AS
BEGIN
    UPDATE Inventario
    SET
        Descripcion = p_cantidad
    WHERE
        ID_Set = p_ID_Set;

    dbms_output.put_line('Inventario actualizado exitosamente.');
EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Error: Set de juego no encontrado.');
        RAISE;
    WHEN OTHERS THEN
        dbms_output.put_line('Error al actualizar Inventario: ' || sqlerrm);
        RAISE;
END ACTUALIZAR_INVENTARIO;


--------------------------------INSERTAR FACTURA-------------------------------------------

CREATE OR REPLACE PROCEDURE insertar_factura (
    p_subtotal            NUMBER,
    p_impuestos           NUMBER,
    p_total               NUMBER,
    p_id_factura          VARCHAR2,
    p_id_cliente          VARCHAR2,
    p_ID_Set              VARCHAR2,
    p_total_pago          NUMBER,
    p_fecha_compra        DATE,
    p_direccion_entrega   VARCHAR2
) AS
BEGIN
    INSERT INTO Encabezado_Factura (
        ID_Factura,
        ID_Cliente,
        ID_Set,
        Total_Pago,
        FechaCompra
    ) VALUES (
        p_id_factura,
        p_id_cliente,
        p_ID_Set, 
        p_total_pago,
        p_fecha_compra
    );
 
    INSERT INTO Detalle_Factura (
        ID_DetalleFactura,
        Estado_Des
    ) VALUES (
        p_id_factura,
        'Activo'
    );
 
    INSERT INTO Entrega (
        ID_Cliente,
        ID_Factura,
        Direccion_Entrega
    ) VALUES (
        p_id_cliente,
        p_id_factura,
        p_direccion_entrega
    );
 
    dbms_output.put_line('Factura insertada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error al insertar factura: ' || sqlerrm);
        RAISE;
END;
 

--------------------------------VER FACTURA-------------------------------------------
 
CREATE OR REPLACE PROCEDURE ver_facturas (
    vista_factura OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN vista_factura FOR SELECT
                               ef.ID_Factura,
                               ef.FechaCompra,
                               ef.Total_Pago,
                               ef.ID_Cliente,
                               ef.ID_Set, 
                               e.Direccion_Entrega
                           FROM
                               Encabezado_Factura ef
                           JOIN
                               Entrega e ON ef.ID_Factura = e.ID_Factura;
 
END;
 

--------------------------------ELIMINAR FACTURA-------------------------------------------
 
CREATE OR REPLACE PROCEDURE eliminar_factura (
    p_id_factura VARCHAR2
) AS
BEGIN
    DELETE FROM Entrega
    WHERE
        ID_Factura = p_id_factura;
 
    DELETE FROM Detalle_Factura
    WHERE
        ID_DetalleFactura = p_id_factura;
 
    DELETE FROM Encabezado_Factura
    WHERE
        ID_Factura = p_id_factura;
 
    dbms_output.put_line('Factura eliminada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error al eliminar factura: ' || sqlerrm);
        RAISE;
END;
 

--------------------------------ACTUALIZAR FACTURA-------------------------------------------
CREATE OR REPLACE PROCEDURE actualizar_factura (
    p_id_factura          VARCHAR2,
    p_total_pago          NUMBER,
    p_fecha_compra        DATE,
    p_direccion_entrega   VARCHAR2
) AS
BEGIN
    UPDATE Encabezado_Factura
    SET
        Total_Pago = p_total_pago,
        FechaCompra = p_fecha_compra
    WHERE
        ID_Factura = p_id_factura;
 
    UPDATE Entrega
    SET
        Direccion_Entrega = p_direccion_entrega
    WHERE
        ID_Factura = p_id_factura;
 
    dbms_output.put_line('Factura actualizada exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error al actualizar factura: ' || sqlerrm);
        RAISE;
END;


 

/*Llamado a los prodedimientos*/

/*Este no lo pude arreglar porque es basado en los datos de SetsJuego para verlos pero los ID del CLI001 por ejemplo, son erroneos por lo 
que deberían de abrir las tablas de Sets juego con el comando SELECT * FROM SETSJUEGO y buscar los datos ya escritos, también los de las 
vistas de Ver_facturas, Eliminar_factura y esos. Hay que agregarle los datos a esos procedimientos. Ya están arreglados 
y eliminé algunos que consideré redundantes. -Fernanda */

 SELECT * FROM SETSJUEGO
DECLARE
    vista_factura SYS_REFCURSOR;
BEGIN
    insertar_factura(100, 15, 115, '76995', 'CLI001', 'PROD001', 115, SYSDATE, 'Dirección de entrega');
 
    ver_facturas(vista_factura);
    eliminar_factura('76995');
    actualizar_factura('76995', 120, SYSDATE, 'Nueva dirección de entrega');
END;

