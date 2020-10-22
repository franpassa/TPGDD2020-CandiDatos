-- CREACION DE BASE DE DATOS --

USE master
IF EXISTS(select * from sys.databases where name='TPGDD2C2020')
DROP DATABASE TPGDD2C2020

GO
CREATE DATABASE TPGDD2C2020
GO

USE TPGDD2C2020 

-- CREACION DE TABLAS --



CREATE TABLE Automovil
( 
	c_automovil          decimal(18,0) IDENTITY ( 1,1 ) ,
	d_patente            nvarchar(50)  NULL ,
	f_alta               datetime2(3)  NULL ,
	n_kilometraje        decimal(18,0)  NULL ,
	d_chasis             nvarchar(50)  NULL ,
	n_precio             decimal(18,0)  NULL ,
	c_modelo             decimal(18,0)  NULL ,
	n_motor              nvarchar(50)  NULL ,
	d_fabricante_automovil nvarchar(255)  NULL 
)
go



ALTER TABLE Automovil
	ADD CONSTRAINT XPKAutomovil PRIMARY KEY  CLUSTERED (c_automovil ASC)
go



CREATE TABLE Autoparte
( 
	c_autoparte          decimal(18,0)  NOT NULL ,
	d_fabricante_autoparte nvarchar(255)  NULL ,
	n_precio             decimal(18,2)  NULL ,
	c_rubro              decimal(18,0)  NULL ,
	d_ciudad_origen      nvarchar(255)  NULL ,
	c_modelo             decimal(18,0)  NULL ,
	d_autoparte          nvarchar(255)  NULL 
)
go



ALTER TABLE Autoparte
	ADD CONSTRAINT XPKAutoparte PRIMARY KEY  CLUSTERED (c_autoparte ASC)
go



CREATE TABLE Categoría_Rubro
( 
	c_rubro              decimal(18,0) IDENTITY ( 1,1 ) ,
	d_rubro              nvarchar(255)  NULL 
)
go



ALTER TABLE Categoría_Rubro
	ADD CONSTRAINT XPKCategoría_Rubro PRIMARY KEY  CLUSTERED (c_rubro ASC)
go



CREATE TABLE Cliente
( 
	c_cliente            decimal(18,0) IDENTITY ( 1,1 ) ,
	d_apellido           nvarchar(255)  NULL ,
	d_nombre             nvarchar(255)  NULL ,
	n_dni                decimal(18,0)  NULL ,
	f_nacimiento         datetime2(3)  NULL ,
	d_mail               nvarchar(255)  NULL ,
	d_direccion          nvarchar(255)  NULL 
)
go



ALTER TABLE Cliente
	ADD CONSTRAINT XPKCliente PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE Factura_Venta
( 
	n_importe_total      decimal(18,2)  NULL ,
	c_venta              decimal(18,0)  NOT NULL ,
	f_fecha_fact         datetime2(3)  NULL ,
	c_cliente            decimal(18,0)  NULL ,
	c_sucursal           decimal(18,0)  NULL ,
	d_cliente_apellido   nvarchar(255)  NULL ,
	d_cliente_nombre     nvarchar(255)  NULL ,
	f_cliente_fecha_nac  datetime2(3)  NULL ,
	n_cliente_dni        decimal(18,0)  NULL ,
	d_cliente_mail       nvarchar(255)  NULL ,
	d_sucursal_direccion nvarchar(255)  NULL ,
	d_sucursal_mail      nvarchar(255)  NULL ,
	n_sucursal_telefono  decimal(18,0)  NULL ,
	d_sucursal_ciudad    nvarchar(255)  NULL ,
	d_cliente_direccion  nvarchar(255)  NULL 
)
go



ALTER TABLE Factura_Venta
	ADD CONSTRAINT XPKFactura_Venta PRIMARY KEY  CLUSTERED (c_venta ASC)
go



CREATE TABLE Item_automovil_compra
( 
	c_item_automovil_compra decimal(18,0) IDENTITY ( 1,1 ) ,
	c_compra             decimal(18,0)  NOT NULL ,
	n_importe            decimal(18,2)  NULL ,
	c_automovil          decimal(18,0)  NULL 
)
go



ALTER TABLE Item_automovil_compra
	ADD CONSTRAINT XPKItem_automovil_compra PRIMARY KEY  CLUSTERED (c_item_automovil_compra ASC,c_compra ASC)
go



CREATE TABLE Item_automovil_venta
( 
	n_importe            decimal(18,2)  NULL ,
	c_item_automovil_venta decimal(18,0) IDENTITY ( 1,1 ) ,
	c_automovil          decimal(18,0)  NULL ,
	c_venta              decimal(18,0)  NOT NULL 
)
go



ALTER TABLE Item_automovil_venta
	ADD CONSTRAINT XPKItem_automovil_venta PRIMARY KEY  CLUSTERED (c_item_automovil_venta ASC,c_venta ASC)
go



CREATE TABLE Item_autoparte_compra
( 
	c_item_autoparte_compra decimal(18,0) IDENTITY ( 1,1 ) ,
	c_compra             decimal(18,0)  NOT NULL ,
	n_importe            decimal(18,2)  NULL ,
	c_autoparte          decimal(18,0)  NULL ,
	n_cantidad           decimal(18,0)  NULL 
)
go



ALTER TABLE Item_autoparte_compra
	ADD CONSTRAINT XPKItem_autoparte_compra PRIMARY KEY  CLUSTERED (c_item_autoparte_compra ASC,c_compra ASC)
go



CREATE TABLE Item_autoparte_venta
( 
	n_importe            decimal(18,2)  NULL ,
	c_item_autoparte_venta decimal(18,0) IDENTITY ( 1,1 ) ,
	n_cantidad           decimal(18,0)  NULL ,
	c_autoparte          decimal(18,0)  NULL ,
	c_venta              decimal(18,0)  NOT NULL 
)
go



ALTER TABLE Item_autoparte_venta
	ADD CONSTRAINT XPKItem_autoparte_venta PRIMARY KEY  CLUSTERED (c_item_autoparte_venta ASC,c_venta ASC)
go



CREATE TABLE Modelo
( 
	c_modelo             decimal(18,0)  NOT NULL ,
	d_nombre             nvarchar(255)  NULL ,
	n_potencia           decimal(18,0)  NULL ,
	c_transmision        decimal(18,0)  NULL ,
	c_carroceria         decimal(18,0)  NULL ,
	c_motor              decimal(18,0)  NULL ,
	c_caja               decimal(18,0)  NULL 
)
go



ALTER TABLE Modelo
	ADD CONSTRAINT XPKModelo PRIMARY KEY  CLUSTERED (c_modelo ASC)
go



CREATE TABLE Orden_compra
( 
	c_compra             decimal(18,0)  NOT NULL ,
	f_compra             datetime2(3)  NULL ,
	n_importe_total      decimal(18,2)  NULL ,
	c_cliente            decimal(18,0)  NULL ,
	c_sucursal           decimal(18,0)  NULL 
)
go



ALTER TABLE Orden_compra
	ADD CONSTRAINT XPKOrden_compra PRIMARY KEY  CLUSTERED (c_compra ASC)
go



CREATE TABLE Stock_Sucursal
(       
    c_stock_sucursal		decimal(18,0) IDENTITY ( 1,1 ), 
	c_sucursal				decimal(18,0)  NULL ,
	n_cantidad_autopartes   decimal(18,0)  NULL ,
	c_automovil				decimal(18,0)  NULL ,
	c_autoparte				decimal(18,0)  NULL 
	
)
go


ALTER TABLE Stock_Sucursal
	ADD CONSTRAINT XPKStock_Sucursal PRIMARY KEY  CLUSTERED (c_stock_sucursal ASC)
go



CREATE TABLE Sucursal
( 
	c_sucursal           decimal(18,0) IDENTITY ( 1,1 ) ,
	d_direccion          nvarchar(255)  NULL ,
	d_mail               nvarchar(255)  NULL ,
	n_telefono           decimal(18,0)  NULL ,
	d_ciudad             nvarchar(255)  NULL 
)
go



ALTER TABLE Sucursal
	ADD CONSTRAINT XPKSucursal PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE Tipo_caja
( 
	c_caja               decimal(18,0)  NOT NULL ,
	d_caja               nvarchar(255)  NULL 
)
go



ALTER TABLE Tipo_caja
	ADD CONSTRAINT XPKTipo_caja PRIMARY KEY  CLUSTERED (c_caja ASC)
go



CREATE TABLE Tipo_carroceria
( 
	c_carroceria         decimal(18,0)  NOT NULL ,
	d_carroceria         nvarchar(255)  NULL 
)
go



ALTER TABLE Tipo_carroceria
	ADD CONSTRAINT XPKTipo_carroceria PRIMARY KEY  CLUSTERED (c_carroceria ASC)
go



CREATE TABLE Tipo_motor
( 
	c_motor              decimal(18,0)  NOT NULL ,
	d_motor              nvarchar(255)  NULL 
)
go



ALTER TABLE Tipo_motor
	ADD CONSTRAINT XPKTipo_motor PRIMARY KEY  CLUSTERED (c_motor ASC)
go



CREATE TABLE Tipo_transmision
( 
	c_transmision        decimal(18,0)  NOT NULL ,
	d_transmision        nvarchar(255)  NULL 
)
go



ALTER TABLE Tipo_transmision
	ADD CONSTRAINT XPKTipo_transmision PRIMARY KEY  CLUSTERED (c_transmision ASC)
go




ALTER TABLE Automovil
	ADD CONSTRAINT R_47 FOREIGN KEY (c_modelo) REFERENCES Modelo(c_modelo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Autoparte
	ADD CONSTRAINT R_37 FOREIGN KEY (c_rubro) REFERENCES Categoría_Rubro(c_rubro)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Autoparte
	ADD CONSTRAINT R_48 FOREIGN KEY (c_modelo) REFERENCES Modelo(c_modelo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Factura_Venta
	ADD CONSTRAINT R_50 FOREIGN KEY (c_cliente) REFERENCES Cliente(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Factura_Venta
	ADD CONSTRAINT R_52 FOREIGN KEY (c_sucursal) REFERENCES Sucursal(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_automovil_compra
	ADD CONSTRAINT R_58 FOREIGN KEY (c_compra) REFERENCES Orden_compra(c_compra)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_automovil_compra
	ADD CONSTRAINT R_62 FOREIGN KEY (c_automovil) REFERENCES Automovil(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_automovil_venta
	ADD CONSTRAINT R_40 FOREIGN KEY (c_automovil) REFERENCES Automovil(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_automovil_venta
	ADD CONSTRAINT R_45 FOREIGN KEY (c_venta) REFERENCES Factura_Venta(c_venta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_autoparte_compra
	ADD CONSTRAINT R_59 FOREIGN KEY (c_compra) REFERENCES Orden_compra(c_compra)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_autoparte_compra
	ADD CONSTRAINT R_64 FOREIGN KEY (c_autoparte) REFERENCES Autoparte(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_autoparte_venta
	ADD CONSTRAINT R_41 FOREIGN KEY (c_autoparte) REFERENCES Autoparte(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_autoparte_venta
	ADD CONSTRAINT R_46 FOREIGN KEY (c_venta) REFERENCES Factura_Venta(c_venta)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Modelo
	ADD CONSTRAINT R_61 FOREIGN KEY (c_transmision) REFERENCES Tipo_transmision(c_transmision)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Modelo
	ADD CONSTRAINT R_65 FOREIGN KEY (c_carroceria) REFERENCES Tipo_carroceria(c_carroceria)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Modelo
	ADD CONSTRAINT R_66 FOREIGN KEY (c_motor) REFERENCES Tipo_motor(c_motor)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Modelo
	ADD CONSTRAINT R_67 FOREIGN KEY (c_caja) REFERENCES Tipo_caja(c_caja)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Orden_compra
	ADD CONSTRAINT R_51 FOREIGN KEY (c_cliente) REFERENCES Cliente(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Orden_compra
	ADD CONSTRAINT R_54 FOREIGN KEY (c_sucursal) REFERENCES Sucursal(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Stock_Sucursal
	ADD CONSTRAINT R_34 FOREIGN KEY (c_sucursal) REFERENCES Sucursal(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Stock_Sucursal
	ADD CONSTRAINT R_39 FOREIGN KEY (c_automovil) REFERENCES Automovil(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Stock_Sucursal
	ADD CONSTRAINT R_42 FOREIGN KEY (c_autoparte) REFERENCES Autoparte(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



-- PROCEDURES MIGRACION DE TABLAS --

GO
CREATE PROCEDURE Ins_Automovil
AS 
BEGIN
INSERT INTO Automovil (d_patente, f_alta, n_kilometraje, d_chasis, n_motor, c_modelo, d_fabricante_automovil, n_precio)
SELECT DISTINCT AUTO_PATENTE, AUTO_FECHA_ALTA, AUTO_CANT_KMS, AUTO_NRO_CHASIS, AUTO_NRO_MOTOR, (SELECT c_modelo FROM Modelo WHERE 
c_modelo = MODELO_CODIGO ), FABRICANTE_NOMBRE, COMPRA_PRECIO
FROM GD2C2020.gd_esquema.Maestra
where (AUTO_PATENTE IS NOT NULL) AND (AUTO_FECHA_ALTA IS NOT NULL) AND (AUTO_CANT_KMS IS NOT NULL) AND (AUTO_NRO_CHASIS IS NOT NULL) AND (AUTO_NRO_MOTOR IS NOT NULL)
AND (COMPRA_PRECIO IS NOT NULL)
GROUP BY AUTO_PATENTE, AUTO_FECHA_ALTA, AUTO_CANT_KMS, AUTO_NRO_CHASIS, AUTO_NRO_MOTOR, MODELO_CODIGO, FABRICANTE_NOMBRE, COMPRA_PRECIO
END
GO

GO
CREATE PROCEDURE Ins_Autoparte
AS 
BEGIN
INSERT INTO Autoparte (c_autoparte, d_autoparte, c_modelo, d_fabricante_autoparte, n_precio)
SELECT DISTINCT AUTO_PARTE_CODIGO, AUTO_PARTE_DESCRIPCION, (SELECT c_modelo FROM Modelo WHERE 
c_modelo = MODELO_CODIGO), FABRICANTE_NOMBRE, COMPRA_PRECIO
FROM GD2C2020.gd_esquema.Maestra
where (AUTO_PARTE_CODIGO IS NOT NULL) AND (AUTO_PARTE_DESCRIPCION IS NOT NULL) AND (FABRICANTE_NOMBRE IS NOT NULL ) AND (COMPRA_PRECIO IS NOT NULL )
group by AUTO_PARTE_CODIGO, AUTO_PARTE_DESCRIPCION, MODELO_CODIGO, FABRICANTE_NOMBRE, COMPRA_PRECIO
END
GO

GO
CREATE PROCEDURE Ins_Cliente
AS 
BEGIN
INSERT INTO Cliente(d_apellido, d_nombre, n_dni, f_nacimiento, d_mail, d_direccion)
SELECT DISTINCT CLIENTE_APELLIDO, CLIENTE_NOMBRE, CLIENTE_DNI, CLIENTE_FECHA_NAC, CLIENTE_MAIL, CLIENTE_DIRECCION
FROM GD2C2020.gd_esquema.Maestra
where (CLIENTE_APELLIDO IS NOT NULL) AND (CLIENTE_NOMBRE IS NOT NULL) AND (CLIENTE_DNI IS NOT NULL)
AND (CLIENTE_FECHA_NAC IS NOT NULL) AND (CLIENTE_MAIL IS NOT NULL) AND (CLIENTE_DIRECCION IS NOT NULL)
group by CLIENTE_APELLIDO, CLIENTE_NOMBRE, CLIENTE_DNI, CLIENTE_FECHA_NAC, CLIENTE_MAIL, CLIENTE_DIRECCION

INSERT INTO Cliente(d_apellido, d_nombre, n_dni, f_nacimiento, d_mail, d_direccion)
SELECT DISTINCT FAC_CLIENTE_APELLIDO, FAC_CLIENTE_NOMBRE, FAC_CLIENTE_DNI, FAC_CLIENTE_FECHA_NAC, FAC_CLIENTE_MAIL, FAC_CLIENTE_DIRECCION
FROM GD2C2020.gd_esquema.Maestra
where (FAC_CLIENTE_APELLIDO IS NOT NULL) AND (FAC_CLIENTE_NOMBRE IS NOT NULL) AND (FAC_CLIENTE_DNI IS NOT NULL)
AND (FAC_CLIENTE_FECHA_NAC IS NOT NULL) AND (FAC_CLIENTE_MAIL IS NOT NULL) AND (FAC_CLIENTE_DIRECCION IS NOT NULL)
group by FAC_CLIENTE_APELLIDO, FAC_CLIENTE_NOMBRE, FAC_CLIENTE_DNI, FAC_CLIENTE_FECHA_NAC, FAC_CLIENTE_MAIL, FAC_CLIENTE_DIRECCION

END
GO


GO
CREATE PROCEDURE Ins_Factura_Venta
AS 
BEGIN
INSERT INTO Factura_Venta(c_venta, f_fecha_fact, d_cliente_apellido, d_cliente_nombre, d_cliente_direccion,
n_cliente_dni, f_cliente_fecha_nac, d_cliente_mail, d_sucursal_direccion, n_sucursal_telefono, d_sucursal_ciudad, d_sucursal_mail, c_cliente, c_sucursal)
SELECT DISTINCT FACTURA_NRO, FACTURA_FECHA, FAC_CLIENTE_APELLIDO, FAC_CLIENTE_NOMBRE, FAC_CLIENTE_DIRECCION,
FAC_CLIENTE_DNI, FAC_CLIENTE_FECHA_NAC, FAC_CLIENTE_MAIL, FAC_SUCURSAL_DIRECCION, FAC_SUCURSAL_TELEFONO, FAC_SUCURSAL_CIUDAD,
FAC_SUCURSAL_MAIL, (select TOP 1 Cliente.c_cliente from Cliente where Cliente.n_dni = FAC_CLIENTE_DNI), (select c_sucursal from Sucursal where d_direccion = FAC_SUCURSAL_DIRECCION)
FROM GD2C2020.gd_esquema.Maestra
where (FACTURA_FECHA IS NOT NULL) AND (FACTURA_NRO IS NOT NULL) AND (FAC_CLIENTE_APELLIDO IS NOT NULL)
AND (FAC_CLIENTE_NOMBRE IS NOT NULL) AND (FAC_CLIENTE_DIRECCION IS NOT NULL) AND (FAC_CLIENTE_DNI IS NOT NULL)
AND (FAC_CLIENTE_FECHA_NAC IS NOT NULL) AND (FAC_CLIENTE_MAIL IS NOT NULL) AND (FAC_SUCURSAL_DIRECCION IS NOT NULL)
AND (FAC_SUCURSAL_MAIL IS NOT NULL) AND (FAC_SUCURSAL_TELEFONO IS NOT NULL) AND (FAC_SUCURSAL_CIUDAD IS NOT NULL)
group by FACTURA_NRO, FACTURA_FECHA, FAC_CLIENTE_APELLIDO, FAC_CLIENTE_NOMBRE, FAC_CLIENTE_DIRECCION,
FAC_CLIENTE_DNI, FAC_CLIENTE_FECHA_NAC, FAC_CLIENTE_MAIL, FAC_SUCURSAL_DIRECCION, FAC_SUCURSAL_TELEFONO, FAC_SUCURSAL_CIUDAD,
FAC_SUCURSAL_MAIL
END
GO

GO
CREATE PROCEDURE Ins_Orden_Compra
AS 
BEGIN
INSERT INTO Orden_compra(c_compra, f_compra, c_sucursal, c_cliente)
SELECT DISTINCT COMPRA_NRO, COMPRA_FECHA, (select c_sucursal from Sucursal where d_direccion = SUCURSAL_DIRECCION), 
(select TOP 1 c_cliente from Cliente where n_dni = CLIENTE_DNI)
FROM GD2C2020.gd_esquema.Maestra 
where (COMPRA_PRECIO IS NOT NULL) AND (COMPRA_FECHA IS NOT NULL) AND (COMPRA_NRO IS NOT NULL) AND (SUCURSAL_DIRECCION IS NOT NULL)
AND (CLIENTE_DNI IS NOT NULL)
GROUP BY COMPRA_NRO, COMPRA_PRECIO, COMPRA_FECHA, SUCURSAL_DIRECCION, CLIENTE_DNI
END
GO

GO
CREATE PROCEDURE Ins_Item_Autoparte_Compra
AS 
BEGIN
INSERT INTO Item_autoparte_compra (n_importe, n_cantidad, c_compra, c_autoparte)
SELECT COMPRA_PRECIO, COMPRA_CANT, (SELECT c_compra FROM Orden_compra WHERE 
COMPRA_NRO = c_compra), (SELECT c_autoparte FROM Autoparte WHERE 
AUTO_PARTE_CODIGO = c_autoparte)
FROM GD2C2020.gd_esquema.Maestra 
WHERE (COMPRA_PRECIO IS NOT NULL) AND (COMPRA_CANT IS NOT NULL)  AND (SELECT c_compra FROM Orden_compra WHERE 
COMPRA_NRO = c_compra) IS NOT NULL AND FACTURA_NRO IS NULL
END
GO

GO
CREATE PROCEDURE Ins_Item_Automovil_Compra
AS 
BEGIN
INSERT INTO Item_automovil_compra(n_importe, c_compra, c_automovil)
SELECT COMPRA_PRECIO, (SELECT c_compra FROM Orden_compra WHERE 
c_compra = COMPRA_NRO ), (SELECT c_automovil FROM Automovil WHERE 
AUTO_PATENTE = d_patente)
FROM GD2C2020.gd_esquema.Maestra
where (COMPRA_PRECIO IS NOT NULL) AND (COMPRA_CANT IS NULL) AND (SELECT Orden_compra.c_compra FROM Orden_compra WHERE 
GD2C2020.gd_esquema.Maestra.COMPRA_NRO = Orden_compra.c_compra) IS NOT NULL AND  (FACTURA_NRO IS NULL)
END
GO

GO
CREATE PROCEDURE Ins_Modelo
AS 
BEGIN
INSERT INTO Modelo(c_modelo, d_nombre, n_potencia, c_caja, c_carroceria, c_motor,c_transmision)
SELECT DISTINCT MODELO_CODIGO, MODELO_NOMBRE, MODELO_POTENCIA, (SELECT c_caja FROM Tipo_caja WHERE 
TIPO_CAJA_CODIGO = c_caja), (SELECT c_carroceria FROM Tipo_carroceria WHERE 
TIPO_AUTO_CODIGO = c_carroceria), (SELECT c_motor FROM Tipo_motor WHERE 
TIPO_MOTOR_CODIGO = c_motor), (SELECT c_transmision FROM Tipo_transmision WHERE 
TIPO_TRANSMISION_CODIGO = c_transmision)
FROM GD2C2020.gd_esquema.Maestra 
where (MODELO_CODIGO IS NOT NULL) AND (MODELO_NOMBRE IS NOT NULL) AND (MODELO_POTENCIA IS NOT NULL) AND 
(TIPO_CAJA_CODIGO IS NOT NULL) AND (TIPO_MOTOR_CODIGO IS NOT NULL) AND  (TIPO_AUTO_CODIGO IS NOT NULL) AND  
(TIPO_TRANSMISION_CODIGO IS NOT NULL)
GROUP BY MODELO_CODIGO, MODELO_NOMBRE, MODELO_POTENCIA, TIPO_AUTO_CODIGO, TIPO_CAJA_CODIGO, TIPO_MOTOR_CODIGO, TIPO_TRANSMISION_CODIGO
END
GO 

GO
CREATE PROCEDURE Ins_Item_Automovil_Venta
AS 
BEGIN
INSERT INTO Item_automovil_venta(n_importe, c_venta, c_automovil)
SELECT PRECIO_FACTURADO, (SELECT FACTURA_VENTA.C_VENTA FROM FACTURA_VENTA WHERE 
FACTURA_NRO = FACTURA_VENTA.C_VENTA),  (SELECT c_automovil FROM Automovil WHERE 
AUTO_PATENTE = d_patente)
FROM GD2C2020.gd_esquema.Maestra
WHERE PRECIO_FACTURADO IS NOT NULL AND (SELECT FACTURA_VENTA.C_VENTA FROM FACTURA_VENTA WHERE FACTURA_NRO = FACTURA_VENTA.C_VENTA) IS NOT NULL 
AND CANT_FACTURADA IS NULL 
END
GO

GO
CREATE PROCEDURE Ins_Item_Autoparte_Venta
AS 
BEGIN
INSERT INTO Item_autoparte_venta(n_importe, n_cantidad, c_venta, c_autoparte)
SELECT PRECIO_FACTURADO, CANT_FACTURADA, (SELECT FACTURA_VENTA.C_VENTA FROM FACTURA_VENTA WHERE 
FACTURA_NRO = FACTURA_VENTA.C_VENTA), (SELECT Autoparte.c_autoparte FROM Autoparte WHERE 
AUTO_PARTE_CODIGO = Autoparte.c_autoparte)
FROM GD2C2020.gd_esquema.Maestra
WHERE PRECIO_FACTURADO IS NOT NULL AND (SELECT FACTURA_VENTA.C_VENTA FROM FACTURA_VENTA WHERE FACTURA_NRO = FACTURA_VENTA.C_VENTA) IS NOT NULL 
AND (CANT_FACTURADA IS NOT NULL) 
END
GO

GO
CREATE PROCEDURE Ins_Sucursal
AS 
BEGIN
INSERT INTO Sucursal(d_mail, d_direccion, n_telefono, d_ciudad)
SELECT SUCURSAL_MAIL, SUCURSAL_DIRECCION, SUCURSAL_TELEFONO, SUCURSAL_CIUDAD
FROM GD2C2020.gd_esquema.Maestra
WHERE (SUCURSAL_MAIL IS NOT NULL) AND (SUCURSAL_DIRECCION IS NOT NULL) AND (SUCURSAL_TELEFONO IS NOT NULL) AND (SUCURSAL_CIUDAD IS NOT NULL) 
GROUP BY SUCURSAL_MAIL, SUCURSAL_DIRECCION, SUCURSAL_TELEFONO, SUCURSAL_CIUDAD
END
GO


GO
CREATE PROCEDURE Ins_Tipo_Caja
AS 
BEGIN
INSERT INTO Tipo_caja(c_caja,d_caja)
SELECT TIPO_CAJA_CODIGO, TIPO_CAJA_DESC
FROM GD2C2020.gd_esquema.Maestra
WHERE (TIPO_CAJA_CODIGO IS NOT NULL) AND (TIPO_CAJA_DESC IS NOT NULL) 
GROUP BY TIPO_CAJA_CODIGO, TIPO_CAJA_DESC
END
GO

GO
CREATE PROCEDURE Ins_Tipo_Carroceria
AS 
BEGIN
INSERT INTO Tipo_carroceria(c_carroceria,d_carroceria)
SELECT TIPO_AUTO_CODIGO, TIPO_AUTO_DESC
FROM GD2C2020.gd_esquema.Maestra
WHERE (TIPO_AUTO_CODIGO IS NOT NULL) AND (TIPO_AUTO_DESC IS NOT NULL) 
GROUP BY TIPO_AUTO_CODIGO, TIPO_AUTO_DESC
END
GO

GO
CREATE PROCEDURE Ins_Tipo_Motor
AS 
BEGIN
INSERT INTO Tipo_motor(c_motor)
SELECT TIPO_MOTOR_CODIGO
FROM GD2C2020.gd_esquema.Maestra
WHERE (TIPO_MOTOR_CODIGO IS NOT NULL) 
GROUP BY TIPO_MOTOR_CODIGO
END
GO

GO
CREATE PROCEDURE Ins_Tipo_Transmision
AS 
BEGIN
INSERT INTO Tipo_transmision(c_transmision,d_transmision)
SELECT TIPO_TRANSMISION_CODIGO, TIPO_TRANSMISION_DESC
FROM GD2C2020.gd_esquema.Maestra
WHERE (TIPO_TRANSMISION_CODIGO IS NOT NULL) AND (TIPO_TRANSMISION_DESC IS NOT NULL) 
GROUP BY TIPO_TRANSMISION_CODIGO, TIPO_TRANSMISION_DESC
END
GO

GO
CREATE PROCEDURE Ins_Importe_Total_Factura_Venta
AS
BEGIN
UPDATE Factura_Venta SET n_importe_total = 
(SELECT SUM(n_cantidad*n_importe) FROM Item_autoparte_venta
WHERE c_venta = Factura_Venta.c_venta 
GROUP BY c_venta)
UPDATE Factura_Venta SET n_importe_total = 
(SELECT n_importe*1.2 FROM Item_automovil_venta
WHERE c_venta = Factura_Venta.c_venta)
WHERE Factura_Venta.c_venta IN (SELECT c_venta FROM Item_automovil_venta)
END
GO

GO
CREATE PROCEDURE Ins_Importe_Total_Orden_Compra
AS
BEGIN
UPDATE Orden_compra SET n_importe_total = 
(SELECT SUM(n_cantidad*n_importe) FROM Item_autoparte_compra
WHERE c_compra = Orden_compra.c_compra
GROUP BY c_compra)
UPDATE Orden_compra SET n_importe_total = 
(SELECT n_importe FROM Item_automovil_compra
WHERE c_compra = Orden_compra.c_compra)
WHERE Orden_compra.c_compra IN (SELECT c_compra FROM Item_automovil_compra)
END
GO

GO
CREATE PROCEDURE Ins_Stock_Sucursal
AS
BEGIN
INSERT INTO Stock_Sucursal(c_sucursal,c_automovil)
SELECT c_sucursal FROM Sucursal

SELECT * FROM Stock_Sucursal

-- EJECUCION DE PROCEDURES --

EXEC Ins_Tipo_Caja

EXEC Ins_Tipo_Carroceria

EXEC Ins_Tipo_Motor

EXEC Ins_Tipo_Transmision

EXEC Ins_Modelo

EXEC Ins_Sucursal

EXEC Ins_Cliente

EXEC Ins_Automovil

EXEC Ins_Autoparte

EXEC Ins_Factura_Venta

EXEC Ins_Item_Automovil_Venta

EXEC Ins_Item_Autoparte_Venta

EXEC Ins_Orden_Compra

EXEC Ins_Item_Automovil_Compra

EXEC Ins_Item_Autoparte_Compra

EXEC Ins_Importe_Total_Factura_Venta

EXEC Ins_Importe_Total_Orden_Compra

