use TPGDD2C2020


CREATE TABLE Automovil
( 
	c_automovil          decimal(18,0) IDENTITY ( 1,1 ) ,
	d_patente            nvarchar(50)  NULL ,
	f_alta               datetime2(3)  NULL ,
	n_kilometraje        decimal(18,0)  NULL ,
	d_chasis             nvarchar(50)  NULL ,
	n_precio             decimal(18,0)  NULL ,
	c_modelo             decimal(18,0)  NULL ,
	n_motor              nvarchar(50)  NULL 
)
go



ALTER TABLE Automovil
	ADD CONSTRAINT XPKAutomovil PRIMARY KEY  CLUSTERED (c_automovil ASC)
go



CREATE TABLE Autoparte
( 
	c_autoparte          decimal(18,0)  NOT NULL ,
	d_fabricante         nvarchar(255)  NULL ,
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
	n_Importe_total      decimal(18,2)  NULL ,
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
	d_sucursal_ciudad    nvarchar(255)  NULL 
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
	c_autoparte          decimal(18,0)  NULL 
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
	n_cantidad           decimal(18,0)  NULL ,
	c_automovil          decimal(18,0)  NULL 
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
	n_importe            decimal(18,0)  NULL ,
	c_cliente            decimal(18,0)  NULL ,
	c_sucursal           decimal(18,0)  NULL ,
	n_numero             decimal(18,0)  NULL 
)
go



ALTER TABLE Orden_compra
	ADD CONSTRAINT XPKOrden_compra PRIMARY KEY  CLUSTERED (c_compra ASC)
go



CREATE TABLE Stock_Sucursal
( 
	c_sucursal           decimal(18,0) IDENTITY ( 1,1 ) ,
	n_cantidad           decimal(18,0)  NULL ,
	item_automovil       decimal(18,0)  NULL ,
	item_autoparte       decimal(18,0)  NULL 
)
go



ALTER TABLE Stock_Sucursal
	ADD CONSTRAINT XPKStock_Sucursal PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE Sucursal
( 
	d_sucursal           nvarchar(255)  NULL ,
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
	ADD CONSTRAINT R_59 FOREIGN KEY (c_compra) REFERENCES Orden_compra(c_compra)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_automovil_compra
	ADD CONSTRAINT R_64 FOREIGN KEY (c_autoparte) REFERENCES Autoparte(c_autoparte)
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
	ADD CONSTRAINT R_58 FOREIGN KEY (c_compra) REFERENCES Orden_compra(c_compra)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Item_autoparte_compra
	ADD CONSTRAINT R_62 FOREIGN KEY (c_automovil) REFERENCES Automovil(c_automovil)
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
	ADD CONSTRAINT R_39 FOREIGN KEY (item_automovil) REFERENCES Automovil(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Stock_Sucursal
	ADD CONSTRAINT R_42 FOREIGN KEY (item_autoparte) REFERENCES Autoparte(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


GO
CREATE PROCEDURE Ins_Automovil
AS 
BEGIN
INSERT INTO Automovil (d_patente, f_alta, n_kilometraje, d_chasis, n_motor)
SELECT AUTO_PATENTE, AUTO_FECHA_ALTA, AUTO_CANT_KMS, AUTO_NRO_CHASIS, AUTO_NRO_MOTOR
FROM GD2C2020.gd_esquema.Maestra
where (AUTO_PATENTE IS NOT NULL) AND (AUTO_FECHA_ALTA IS NOT NULL) AND (AUTO_CANT_KMS IS NOT NULL) AND  (AUTO_NRO_CHASIS IS NOT NULL) AND (AUTO_NRO_MOTOR IS NOT NULL)
END
GO

GO
CREATE PROCEDURE Ins_Autoparte
AS 
BEGIN
INSERT INTO Autoparte (c_autoparte, d_autoparte)
SELECT DISTINCT AUTO_PARTE_CODIGO, AUTO_PARTE_DESCRIPCION
FROM GD2C2020.gd_esquema.Maestra
where (AUTO_PARTE_CODIGO IS NOT NULL) AND (AUTO_PARTE_DESCRIPCION IS NOT NULL) 
group by AUTO_PARTE_CODIGO, AUTO_PARTE_DESCRIPCION
END
GO

---  RUBRO NO ESTA EN LA TABLA MAESTRA --

GO
CREATE PROCEDURE Ins_Cliente
AS 
BEGIN
INSERT INTO Cliente(d_apellido, d_nombre, n_dni, f_nacimiento, d_mail, d_direccion)
SELECT CLIENTE_APELLIDO, CLIENTE_NOMBRE, CLIENTE_DNI, CLIENTE_FECHA_NAC, CLIENTE_MAIL, CLIENTE_DIRECCION
FROM GD2C2020.gd_esquema.Maestra
where (CLIENTE_APELLIDO IS NOT NULL) AND (CLIENTE_NOMBRE IS NOT NULL) AND (CLIENTE_DNI IS NOT NULL)
 AND (CLIENTE_FECHA_NAC IS NOT NULL) AND (CLIENTE_MAIL IS NOT NULL) AND (CLIENTE_DIRECCION IS NOT NULL)
END
GO



SELECT * FROM Automovil

select * from GD2C2020.gd_esquema.Maestra


SELECT * FROM Autoparte
order by c_autoparte

SELECT * FROM Cliente

EXEC Ins_Automovil

EXEC Ins_Autoparte

EXEC Ins_Cliente

