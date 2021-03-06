--...................................DROPS POR SI EXISTEN LAS TABLAS.....................................-- 

USE GD2C2020 

IF EXISTS (SELECT * 
           FROM   sys.schemas 
           WHERE  NAME = 'CANDI_DATOS') 
  BEGIN 
      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Item_Automovil_Venta' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Item_Automovil_Venta 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Item_Automovil_Compra' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Item_Automovil_Compra 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Item_Autoparte_Venta' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Item_Autoparte_Venta 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Item_Autoparte_Compra' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Item_Autoparte_Compra 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Factura_Venta' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Factura_Venta 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Orden_Compra' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Orden_Compra 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Cliente' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Cliente 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Stock_Sucursal' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Stock_Sucursal 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Sucursal' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Sucursal 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Automovil' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Automovil 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Autoparte' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Autoparte 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Proveedor' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Proveedor 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Modelo' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Modelo 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Categor�a_Rubro' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Categor�a_Rubro 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Tipo_caja' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Tipo_caja 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Tipo_transmision' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Tipo_transmision 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Tipo_motor' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Tipo_motor 

      IF EXISTS(SELECT * 
                FROM   sys.tables 
                WHERE  object_name(object_id) = 'Tipo_carroceria' 
                       AND schema_name(schema_id) = 'CANDI_DATOS') 
        DROP TABLE CANDI_DATOS.Tipo_carroceria 
  END 
ELSE 
  BEGIN 
      EXEC('create schema CANDI_DATOS') 

      PRINT 'Esquema CANDI_DATOS creado' 
  END 

GO 

--...................................PROCEDIMIENTOS.....................................-- 

-- PROCEDIMIENTO PARA CREAR TABLAS -- 

IF EXISTS (SELECT * 
           FROM   sysobjects 
           WHERE  NAME = 'Creacion_de_tablas' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.Creacion_de_tablas

GO 

CREATE PROCEDURE CANDI_DATOS.Creacion_de_tablas
AS 
	BEGIN
		CREATE TABLE [GD2C2020].[CANDI_DATOS].Automovil 
		  ( 
			 c_automovil            decimal(18, 0) IDENTITY ( 1, 1 ), 
			 d_patente              nvarchar(50) NULL, 
			 f_alta                 datetime2(3) NULL, 
			 n_kilometraje          decimal(18, 0) NULL, 
			 d_chasis               nvarchar(50) NULL, 
			 n_precio               decimal(18, 0) NULL, 
			 c_modelo               decimal(18, 0) NULL, 
			 n_motor                nvarchar(50) NULL, 
			 d_fabricante_automovil nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Automovil 
		  ADD CONSTRAINT XPKAutomovil PRIMARY KEY CLUSTERED (c_automovil ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Autoparte 
		  ( 
			 c_autoparte            decimal(18, 0) NOT NULL, 
			 d_fabricante_autoparte nvarchar(255) NULL, 
			 n_precio               decimal(18, 2) NULL, 
			 c_rubro                decimal(18, 0) NULL, 
			 d_ciudad_origen        nvarchar(255) NULL, 
			 c_modelo               decimal(18, 0) NULL, 
			 d_autoparte            nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Autoparte 
		  ADD CONSTRAINT XPKAutoparte PRIMARY KEY CLUSTERED (c_autoparte ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Categor�a_Rubro 
		  ( 
			 c_rubro decimal(18, 0) IDENTITY ( 1, 1 ), 
			 d_rubro nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Categor�a_Rubro 
		  ADD CONSTRAINT XPKCategor�a_Rubro PRIMARY KEY CLUSTERED (c_rubro ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Cliente 
		  ( 
			 c_cliente    decimal(18, 0) IDENTITY ( 1, 1 ), 
			 d_apellido   nvarchar(255) NULL, 
			 d_nombre     nvarchar(255) NULL, 
			 n_dni        decimal(18, 0) NULL, 
			 f_nacimiento datetime2(3) NULL, 
			 d_mail       nvarchar(255) NULL, 
			 d_direccion  nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Cliente 
		  ADD CONSTRAINT XPKCliente PRIMARY KEY CLUSTERED (c_cliente ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Factura_Venta 
		  ( 
			 n_importe_total      decimal(18, 2) NULL, 
			 c_venta              decimal(18, 0) NOT NULL, 
			 f_fecha_fact         datetime2(3) NULL, 
			 c_cliente            decimal(18, 0) NULL, 
			 c_sucursal           decimal(18, 0) NULL, 
			 d_cliente_apellido   nvarchar(255) NULL, 
			 d_cliente_nombre     nvarchar(255) NULL, 
			 f_cliente_fecha_nac  datetime2(3) NULL, 
			 n_cliente_dni        decimal(18, 0) NULL, 
			 d_cliente_mail       nvarchar(255) NULL, 
			 d_sucursal_direccion nvarchar(255) NULL, 
			 d_sucursal_mail      nvarchar(255) NULL, 
			 n_sucursal_telefono  decimal(18, 0) NULL, 
			 d_sucursal_ciudad    nvarchar(255) NULL, 
			 d_cliente_direccion  nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Factura_Venta 
		  ADD CONSTRAINT XPKFactura_Venta PRIMARY KEY CLUSTERED (c_venta ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_compra 
		  ( 
			 c_item_automovil_compra decimal(18, 0) IDENTITY ( 1, 1 ), 
			 c_compra                decimal(18, 0) NOT NULL, 
			 n_importe               decimal(18, 2) NULL, 
			 c_automovil             decimal(18, 0) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_compra 
		  ADD CONSTRAINT XPKItem_automovil_compra PRIMARY KEY CLUSTERED ( 
		  c_item_automovil_compra ASC, c_compra ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_venta 
		  ( 
			 n_importe              decimal(18, 2) NULL, 
			 c_item_automovil_venta decimal(18, 0) IDENTITY ( 1, 1 ), 
			 c_automovil            decimal(18, 0) NULL, 
			 c_venta                decimal(18, 0) NOT NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_venta 
		  ADD CONSTRAINT XPKItem_automovil_venta PRIMARY KEY CLUSTERED ( 
		  c_item_automovil_venta ASC, c_venta ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_compra 
		  ( 
			 c_item_autoparte_compra decimal(18, 0) IDENTITY ( 1, 1 ), 
			 c_compra                decimal(18, 0) NOT NULL, 
			 n_importe               decimal(18, 2) NULL, 
			 c_autoparte             decimal(18, 0) NULL, 
			 n_cantidad              decimal(18, 0) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_compra 
		  ADD CONSTRAINT XPKItem_autoparte_compra PRIMARY KEY CLUSTERED ( 
		  c_item_autoparte_compra ASC, c_compra ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_venta 
		  ( 
			 n_importe              decimal(18, 2) NULL, 
			 c_item_autoparte_venta decimal(18, 0) IDENTITY ( 1, 1 ), 
			 n_cantidad             decimal(18, 0) NULL, 
			 c_autoparte            decimal(18, 0) NULL, 
			 c_venta                decimal(18, 0) NOT NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_venta 
		  ADD CONSTRAINT XPKItem_autoparte_venta PRIMARY KEY CLUSTERED ( 
		  c_item_autoparte_venta ASC, c_venta ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Modelo 
		  ( 
			 c_modelo      decimal(18, 0) NOT NULL, 
			 d_nombre      nvarchar(255) NULL, 
			 n_potencia    decimal(18, 0) NULL, 
			 c_transmision decimal(18, 0) NULL, 
			 c_carroceria  decimal(18, 0) NULL, 
			 c_motor       decimal(18, 0) NULL, 
			 c_caja        decimal(18, 0) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Modelo 
		  ADD CONSTRAINT XPKModelo PRIMARY KEY CLUSTERED (c_modelo ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Orden_compra 
		  ( 
			 c_compra        decimal(18, 0) NOT NULL, 
			 f_compra        datetime2(3) NULL, 
			 n_importe_total decimal(18, 2) NULL, 
			 c_cliente       decimal(18, 0) NULL, 
			 c_sucursal      decimal(18, 0) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Orden_compra 
		  ADD CONSTRAINT XPKOrden_compra PRIMARY KEY CLUSTERED (c_compra ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Stock_Sucursal 
		  ( 
			 c_stock_sucursal      decimal(18, 0) IDENTITY ( 1, 1 ), 
			 c_sucursal            decimal(18, 0) NULL, 
			 n_cantidad_autopartes decimal(18, 0) NULL, 
			 c_automovil           decimal(18, 0) NULL, 
			 c_autoparte           decimal(18, 0) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Stock_Sucursal 
		  ADD CONSTRAINT XPKStock_Sucursal PRIMARY KEY CLUSTERED (c_stock_sucursal ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Sucursal 
		  ( 
			 c_sucursal  decimal(18, 0) IDENTITY ( 1, 1 ), 
			 d_direccion nvarchar(255) NULL, 
			 d_mail      nvarchar(255) NULL, 
			 n_telefono  decimal(18, 0) NULL, 
			 d_ciudad    nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Sucursal 
		  ADD CONSTRAINT XPKSucursal PRIMARY KEY CLUSTERED (c_sucursal ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Tipo_caja 
		  ( 
			 c_caja decimal(18, 0) NOT NULL, 
			 d_caja nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Tipo_caja 
		  ADD CONSTRAINT XPKTipo_caja PRIMARY KEY CLUSTERED (c_caja ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Tipo_carroceria 
		  ( 
			 c_carroceria decimal(18, 0) NOT NULL, 
			 d_carroceria nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Tipo_carroceria 
		  ADD CONSTRAINT XPKTipo_carroceria PRIMARY KEY CLUSTERED (c_carroceria ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Tipo_motor 
		  ( 
			 c_motor decimal(18, 0) NOT NULL, 
			 d_motor nvarchar(255) NULL 
		  ) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Tipo_motor 
		  ADD CONSTRAINT XPKTipo_motor PRIMARY KEY CLUSTERED (c_motor ASC) 

		CREATE TABLE [GD2C2020].[CANDI_DATOS].Tipo_transmision 
		  ( 
			 c_transmision decimal(18, 0) NOT NULL, 
			 d_transmision nvarchar(255) NULL 
		  ) 


		ALTER TABLE [GD2C2020].[CANDI_DATOS].Tipo_transmision 
		  ADD CONSTRAINT XPKTipo_transmision PRIMARY KEY CLUSTERED (c_transmision ASC) 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Automovil 
		  ADD CONSTRAINT R_47 FOREIGN KEY (c_modelo) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Modelo(c_modelo) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Autoparte 
		  ADD CONSTRAINT R_37 FOREIGN KEY (c_rubro) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Categor�a_Rubro(c_rubro) ON DELETE NO ACTION ON 
		  UPDATE NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Autoparte 
		  ADD CONSTRAINT R_48 FOREIGN KEY (c_modelo) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Modelo(c_modelo) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Factura_Venta 
		  ADD CONSTRAINT R_50 FOREIGN KEY (c_cliente) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Cliente(c_cliente) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Factura_Venta 
		  ADD CONSTRAINT R_52 FOREIGN KEY (c_sucursal) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Sucursal(c_sucursal) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_compra 
		  ADD CONSTRAINT R_58 FOREIGN KEY (c_compra) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Orden_compra(c_compra) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_compra 
		  ADD CONSTRAINT R_62 FOREIGN KEY (c_automovil) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Automovil(c_automovil) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_venta 
		  ADD CONSTRAINT R_40 FOREIGN KEY (c_automovil) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Automovil(c_automovil) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_automovil_venta 
		  ADD CONSTRAINT R_45 FOREIGN KEY (c_venta) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Factura_Venta(c_venta) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_compra 
		  ADD CONSTRAINT R_59 FOREIGN KEY (c_compra) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Orden_compra(c_compra) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_compra 
		  ADD CONSTRAINT R_64 FOREIGN KEY (c_autoparte) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Autoparte(c_autoparte) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_venta 
		  ADD CONSTRAINT R_41 FOREIGN KEY (c_autoparte) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Autoparte(c_autoparte) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Item_autoparte_venta 
		  ADD CONSTRAINT R_46 FOREIGN KEY (c_venta) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Factura_Venta(c_venta) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Modelo 
		  ADD CONSTRAINT R_61 FOREIGN KEY (c_transmision) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Tipo_transmision(c_transmision) ON DELETE NO ACTION 
		  ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Modelo 
		  ADD CONSTRAINT R_65 FOREIGN KEY (c_carroceria) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Tipo_carroceria(c_carroceria) ON DELETE NO ACTION ON 
		  UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Modelo 
		  ADD CONSTRAINT R_66 FOREIGN KEY (c_motor) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Tipo_motor(c_motor) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Modelo 
		  ADD CONSTRAINT R_67 FOREIGN KEY (c_caja) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Tipo_caja(c_caja) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Orden_compra 
		  ADD CONSTRAINT R_51 FOREIGN KEY (c_cliente) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Cliente(c_cliente) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Orden_compra 
		  ADD CONSTRAINT R_54 FOREIGN KEY (c_sucursal) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Sucursal(c_sucursal) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION  

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Stock_Sucursal 
		  ADD CONSTRAINT R_34 FOREIGN KEY (c_sucursal) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Sucursal(c_sucursal) ON DELETE NO ACTION ON UPDATE NO 
		  ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Stock_Sucursal 
		  ADD CONSTRAINT R_39 FOREIGN KEY (c_automovil) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Automovil(c_automovil) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

		ALTER TABLE [GD2C2020].[CANDI_DATOS].Stock_Sucursal 
		  ADD CONSTRAINT R_42 FOREIGN KEY (c_autoparte) REFERENCES 
		  [GD2C2020].[CANDI_DATOS].Autoparte(c_autoparte) ON DELETE NO ACTION ON UPDATE 
		  NO ACTION 

	END
GO

-- PROCEDIMIENTO PARA INSERTAR DATOS DESDE GD2C2020.gd_esquema.Maestra A LAS TABLAS DE GD2C2020.CANDI_DATOS --

IF EXISTS (SELECT * 
           FROM   sysobjects 
           WHERE  NAME = 'Realizar_Migracion' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.Realizar_Migracion 

GO 

CREATE PROCEDURE CANDI_DATOS.Realizar_Migracion 
AS 

-- Insertar datos desde la Tabla Maestra a la Tabla Tipo_Caja

  BEGIN 
      INSERT INTO Tipo_caja 
                  (c_caja, 
                   d_caja) 
      SELECT TIPO_CAJA_CODIGO, 
             TIPO_CAJA_DESC 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( TIPO_CAJA_CODIGO IS NOT NULL ) 
             AND ( TIPO_CAJA_DESC IS NOT NULL ) 
      GROUP  BY TIPO_CAJA_CODIGO, 
                TIPO_CAJA_DESC 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Tipo_Carroceria

  BEGIN 
      INSERT INTO Tipo_carroceria 
                  (c_carroceria, 
                   d_carroceria) 
      SELECT TIPO_AUTO_CODIGO, 
             TIPO_AUTO_DESC 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( TIPO_AUTO_CODIGO IS NOT NULL ) 
             AND ( TIPO_AUTO_DESC IS NOT NULL ) 
      GROUP  BY TIPO_AUTO_CODIGO, 
                TIPO_AUTO_DESC 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Tipo_Motor

  BEGIN 
      INSERT INTO Tipo_motor 
                  (c_motor) 
      SELECT TIPO_MOTOR_CODIGO 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( TIPO_MOTOR_CODIGO IS NOT NULL ) 
      GROUP  BY TIPO_MOTOR_CODIGO 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Tipo_Transmision

  BEGIN 
      INSERT INTO Tipo_transmision 
                  (c_transmision, 
                   d_transmision) 
      SELECT TIPO_TRANSMISION_CODIGO, 
             TIPO_TRANSMISION_DESC 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( TIPO_TRANSMISION_CODIGO IS NOT NULL ) 
             AND ( TIPO_TRANSMISION_DESC IS NOT NULL ) 
      GROUP  BY TIPO_TRANSMISION_CODIGO, 
                TIPO_TRANSMISION_DESC 
  END 

  -- Insertar datos desde la Tabla Maestra a la Tabla Modelo

  BEGIN 
      INSERT INTO Modelo 
                  (c_modelo, 
                   d_nombre, 
                   n_potencia, 
                   c_caja, 
                   c_carroceria, 
                   c_motor, 
                   c_transmision) 
      SELECT DISTINCT MODELO_CODIGO, 
                      MODELO_NOMBRE, 
                      MODELO_POTENCIA, 
                      (SELECT c_caja 
                       FROM   Tipo_caja 
                       WHERE  TIPO_CAJA_CODIGO = c_caja), 
                      (SELECT c_carroceria 
                       FROM   Tipo_carroceria 
                       WHERE  TIPO_AUTO_CODIGO = c_carroceria), 
                      (SELECT c_motor 
                       FROM   Tipo_motor 
                       WHERE  TIPO_MOTOR_CODIGO = c_motor), 
                      (SELECT c_transmision 
                       FROM   Tipo_transmision 
                       WHERE  TIPO_TRANSMISION_CODIGO = c_transmision) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( MODELO_CODIGO IS NOT NULL ) 
             AND ( MODELO_NOMBRE IS NOT NULL ) 
             AND ( MODELO_POTENCIA IS NOT NULL ) 
             AND ( TIPO_CAJA_CODIGO IS NOT NULL ) 
             AND ( TIPO_MOTOR_CODIGO IS NOT NULL ) 
             AND ( TIPO_AUTO_CODIGO IS NOT NULL ) 
             AND ( TIPO_TRANSMISION_CODIGO IS NOT NULL ) 
      GROUP  BY MODELO_CODIGO, 
                MODELO_NOMBRE, 
                MODELO_POTENCIA, 
                TIPO_AUTO_CODIGO, 
                TIPO_CAJA_CODIGO, 
                TIPO_MOTOR_CODIGO, 
                TIPO_TRANSMISION_CODIGO 
  END 

  -- Insertar datos desde la Tabla Maestra a la Tabla Sucursal

  BEGIN 
      INSERT INTO Sucursal 
                  (d_mail, 
                   d_direccion, 
                   n_telefono, 
                   d_ciudad) 
      SELECT SUCURSAL_MAIL, 
             SUCURSAL_DIRECCION, 
             SUCURSAL_TELEFONO, 
             SUCURSAL_CIUDAD 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( SUCURSAL_MAIL IS NOT NULL ) 
             AND ( SUCURSAL_DIRECCION IS NOT NULL ) 
             AND ( SUCURSAL_TELEFONO IS NOT NULL ) 
             AND ( SUCURSAL_CIUDAD IS NOT NULL ) 
      GROUP  BY SUCURSAL_MAIL, 
                SUCURSAL_DIRECCION, 
                SUCURSAL_TELEFONO, 
                SUCURSAL_CIUDAD 
  END 

  -- Insertar datos desde la Tabla Maestra a la Tabla Cliente

  BEGIN 
      INSERT INTO Cliente 
                  (d_apellido, 
                   d_nombre, 
                   n_dni, 
                   f_nacimiento, 
                   d_mail, 
                   d_direccion) 
      SELECT DISTINCT CLIENTE_APELLIDO, 
                      CLIENTE_NOMBRE, 
                      CLIENTE_DNI, 
                      CLIENTE_FECHA_NAC, 
                      CLIENTE_MAIL, 
                      CLIENTE_DIRECCION 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( CLIENTE_APELLIDO IS NOT NULL ) 
             AND ( CLIENTE_NOMBRE IS NOT NULL ) 
             AND ( CLIENTE_DNI IS NOT NULL ) 
             AND ( CLIENTE_FECHA_NAC IS NOT NULL ) 
             AND ( CLIENTE_MAIL IS NOT NULL ) 
             AND ( CLIENTE_DIRECCION IS NOT NULL ) 
      GROUP  BY CLIENTE_APELLIDO, 
                CLIENTE_NOMBRE, 
                CLIENTE_DNI, 
                CLIENTE_FECHA_NAC, 
                CLIENTE_MAIL, 
                CLIENTE_DIRECCION 

      INSERT INTO Cliente 
                  (d_apellido, 
                   d_nombre, 
                   n_dni, 
                   f_nacimiento, 
                   d_mail, 
                   d_direccion) 
      SELECT DISTINCT FAC_CLIENTE_APELLIDO, 
                      FAC_CLIENTE_NOMBRE, 
                      FAC_CLIENTE_DNI, 
                      FAC_CLIENTE_FECHA_NAC, 
                      FAC_CLIENTE_MAIL, 
                      FAC_CLIENTE_DIRECCION 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( FAC_CLIENTE_APELLIDO IS NOT NULL ) 
             AND ( FAC_CLIENTE_NOMBRE IS NOT NULL ) 
             AND ( FAC_CLIENTE_DNI IS NOT NULL ) 
             AND ( FAC_CLIENTE_FECHA_NAC IS NOT NULL ) 
             AND ( FAC_CLIENTE_MAIL IS NOT NULL ) 
             AND ( FAC_CLIENTE_DIRECCION IS NOT NULL ) 
      GROUP  BY FAC_CLIENTE_APELLIDO, 
                FAC_CLIENTE_NOMBRE, 
                FAC_CLIENTE_DNI, 
                FAC_CLIENTE_FECHA_NAC, 
                FAC_CLIENTE_MAIL, 
                FAC_CLIENTE_DIRECCION 
  END 

  -- Insertar datos desde la Tabla Maesta a la Tabla Automovil

  BEGIN 
      INSERT INTO Automovil 
                  (d_patente, 
                   f_alta, 
                   n_kilometraje, 
                   d_chasis, 
                   n_motor, 
                   c_modelo, 
                   d_fabricante_automovil, 
                   n_precio) 
      SELECT DISTINCT AUTO_PATENTE, 
                      AUTO_FECHA_ALTA, 
                      AUTO_CANT_KMS, 
                      AUTO_NRO_CHASIS, 
                      AUTO_NRO_MOTOR, 
                      (SELECT c_modelo 
                       FROM   Modelo 
                       WHERE  c_modelo = MODELO_CODIGO), 
                      FABRICANTE_NOMBRE, 
                      COMPRA_PRECIO 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( AUTO_PATENTE IS NOT NULL ) 
             AND ( AUTO_FECHA_ALTA IS NOT NULL ) 
             AND ( AUTO_CANT_KMS IS NOT NULL ) 
             AND ( AUTO_NRO_CHASIS IS NOT NULL ) 
             AND ( AUTO_NRO_MOTOR IS NOT NULL ) 
             AND ( COMPRA_PRECIO IS NOT NULL ) 
      GROUP  BY AUTO_PATENTE, 
                AUTO_FECHA_ALTA, 
                AUTO_CANT_KMS, 
                AUTO_NRO_CHASIS, 
                AUTO_NRO_MOTOR, 
                MODELO_CODIGO, 
                FABRICANTE_NOMBRE, 
                COMPRA_PRECIO 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Autoparte

  BEGIN 
      INSERT INTO Autoparte 
                  (c_autoparte, 
                   d_autoparte, 
                   c_modelo, 
                   d_fabricante_autoparte, 
                   n_precio) 
      SELECT DISTINCT AUTO_PARTE_CODIGO, 
                      AUTO_PARTE_DESCRIPCION, 
                      (SELECT c_modelo 
                       FROM   Modelo 
                       WHERE  c_modelo = MODELO_CODIGO), 
                      FABRICANTE_NOMBRE, 
                      COMPRA_PRECIO 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( AUTO_PARTE_CODIGO IS NOT NULL ) 
             AND ( AUTO_PARTE_DESCRIPCION IS NOT NULL ) 
             AND ( FABRICANTE_NOMBRE IS NOT NULL ) 
             AND ( COMPRA_PRECIO IS NOT NULL ) 
      GROUP  BY AUTO_PARTE_CODIGO, 
                AUTO_PARTE_DESCRIPCION, 
                MODELO_CODIGO, 
                FABRICANTE_NOMBRE, 
                COMPRA_PRECIO 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Factura_Venta

  BEGIN 
      INSERT INTO Factura_Venta 
                  (c_venta, 
                   f_fecha_fact, 
                   d_cliente_apellido, 
                   d_cliente_nombre, 
                   d_cliente_direccion, 
                   n_cliente_dni, 
                   f_cliente_fecha_nac, 
                   d_cliente_mail, 
                   d_sucursal_direccion, 
                   n_sucursal_telefono, 
                   d_sucursal_ciudad, 
                   d_sucursal_mail, 
                   c_cliente, 
                   c_sucursal) 
      SELECT DISTINCT FACTURA_NRO, 
                      FACTURA_FECHA, 
                      FAC_CLIENTE_APELLIDO, 
                      FAC_CLIENTE_NOMBRE, 
                      FAC_CLIENTE_DIRECCION, 
                      FAC_CLIENTE_DNI, 
                      FAC_CLIENTE_FECHA_NAC, 
                      FAC_CLIENTE_MAIL, 
                      FAC_SUCURSAL_DIRECCION, 
                      FAC_SUCURSAL_TELEFONO, 
                      FAC_SUCURSAL_CIUDAD, 
                      FAC_SUCURSAL_MAIL, 
                      (SELECT TOP 1 Cliente.c_cliente 
                       FROM   Cliente 
                       WHERE  Cliente.n_dni = FAC_CLIENTE_DNI), 
                      (SELECT c_sucursal 
                       FROM   Sucursal 
                       WHERE  d_direccion = FAC_SUCURSAL_DIRECCION) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( FACTURA_FECHA IS NOT NULL ) 
             AND ( FACTURA_NRO IS NOT NULL ) 
             AND ( FAC_CLIENTE_APELLIDO IS NOT NULL ) 
             AND ( FAC_CLIENTE_NOMBRE IS NOT NULL ) 
             AND ( FAC_CLIENTE_DIRECCION IS NOT NULL ) 
             AND ( FAC_CLIENTE_DNI IS NOT NULL ) 
             AND ( FAC_CLIENTE_FECHA_NAC IS NOT NULL ) 
             AND ( FAC_CLIENTE_MAIL IS NOT NULL ) 
             AND ( FAC_SUCURSAL_DIRECCION IS NOT NULL ) 
             AND ( FAC_SUCURSAL_MAIL IS NOT NULL ) 
             AND ( FAC_SUCURSAL_TELEFONO IS NOT NULL ) 
             AND ( FAC_SUCURSAL_CIUDAD IS NOT NULL ) 
      GROUP  BY FACTURA_NRO, 
                FACTURA_FECHA, 
                FAC_CLIENTE_APELLIDO, 
                FAC_CLIENTE_NOMBRE, 
                FAC_CLIENTE_DIRECCION, 
                FAC_CLIENTE_DNI, 
                FAC_CLIENTE_FECHA_NAC, 
                FAC_CLIENTE_MAIL, 
                FAC_SUCURSAL_DIRECCION, 
                FAC_SUCURSAL_TELEFONO, 
                FAC_SUCURSAL_CIUDAD, 
                FAC_SUCURSAL_MAIL 
  END 

  -- Insertar datos desde la Tabla Maestra a la Tabla Item_Automovil_Venta

  BEGIN 
      INSERT INTO Item_automovil_venta 
                  (n_importe, 
                   c_venta, 
                   c_automovil) 
      SELECT PRECIO_FACTURADO, 
             (SELECT FACTURA_VENTA.C_VENTA 
              FROM   FACTURA_VENTA 
              WHERE  FACTURA_NRO = FACTURA_VENTA.C_VENTA), 
             (SELECT c_automovil 
              FROM   Automovil 
              WHERE  AUTO_PATENTE = d_patente) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  PRECIO_FACTURADO IS NOT NULL 
             AND (SELECT FACTURA_VENTA.C_VENTA 
                  FROM   FACTURA_VENTA 
                  WHERE  FACTURA_NRO = FACTURA_VENTA.C_VENTA) IS NOT NULL 
             AND CANT_FACTURADA IS NULL 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Item_Autoparte_Venta

  BEGIN 
      INSERT INTO Item_autoparte_venta 
                  (n_importe, 
                   n_cantidad, 
                   c_venta, 
                   c_autoparte) 
      SELECT PRECIO_FACTURADO, 
             CANT_FACTURADA, 
             (SELECT FACTURA_VENTA.C_VENTA 
              FROM   FACTURA_VENTA 
              WHERE  FACTURA_NRO = FACTURA_VENTA.C_VENTA), 
             (SELECT Autoparte.c_autoparte 
              FROM   Autoparte 
              WHERE  AUTO_PARTE_CODIGO = Autoparte.c_autoparte) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  PRECIO_FACTURADO IS NOT NULL 
             AND (SELECT FACTURA_VENTA.C_VENTA 
                  FROM   FACTURA_VENTA 
                  WHERE  FACTURA_NRO = FACTURA_VENTA.C_VENTA) IS NOT NULL 
             AND ( CANT_FACTURADA IS NOT NULL ) 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Orden_Compra
 
  BEGIN 
      INSERT INTO Orden_compra 
                  (c_compra, 
                   f_compra, 
                   c_sucursal, 
                   c_cliente) 
      SELECT DISTINCT COMPRA_NRO, 
                      COMPRA_FECHA, 
                      (SELECT c_sucursal 
                       FROM   Sucursal 
                       WHERE  d_direccion = SUCURSAL_DIRECCION), 
                      (SELECT TOP 1 c_cliente 
                       FROM   Cliente 
                       WHERE  n_dni = CLIENTE_DNI) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( COMPRA_PRECIO IS NOT NULL ) 
             AND ( COMPRA_FECHA IS NOT NULL ) 
             AND ( COMPRA_NRO IS NOT NULL ) 
             AND ( SUCURSAL_DIRECCION IS NOT NULL ) 
             AND ( CLIENTE_DNI IS NOT NULL ) 
      GROUP  BY COMPRA_NRO, 
                COMPRA_PRECIO, 
                COMPRA_FECHA, 
                SUCURSAL_DIRECCION, 
                CLIENTE_DNI 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Item_Autoparte_Compra

  BEGIN 
      INSERT INTO Item_autoparte_compra 
                  (n_importe, 
                   n_cantidad, 
                   c_compra, 
                   c_autoparte) 
      SELECT COMPRA_PRECIO, 
             COMPRA_CANT, 
             (SELECT c_compra 
              FROM   Orden_compra 
              WHERE  COMPRA_NRO = c_compra), 
             (SELECT c_autoparte 
              FROM   Autoparte 
              WHERE  AUTO_PARTE_CODIGO = c_autoparte) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( COMPRA_PRECIO IS NOT NULL ) 
             AND ( COMPRA_CANT IS NOT NULL ) 
             AND (SELECT c_compra 
                  FROM   Orden_compra 
                  WHERE  COMPRA_NRO = c_compra) IS NOT NULL 
             AND FACTURA_NRO IS NULL 
  END 

-- Insertar datos desde la Tabla Maestra a la Tabla Item_Automovil_Compra

  BEGIN 
      INSERT INTO Item_automovil_compra 
                  (n_importe, 
                   c_compra, 
                   c_automovil) 
      SELECT COMPRA_PRECIO, 
             (SELECT c_compra 
              FROM   Orden_compra 
              WHERE  c_compra = COMPRA_NRO), 
             (SELECT c_automovil 
              FROM   Automovil 
              WHERE  AUTO_PATENTE = d_patente) 
      FROM   GD2C2020.gd_esquema.Maestra 
      WHERE  ( COMPRA_PRECIO IS NOT NULL ) 
             AND ( COMPRA_CANT IS NULL ) 
             AND (SELECT Orden_compra.c_compra 
                  FROM   Orden_compra 
                  WHERE  GD2C2020.gd_esquema.Maestra.COMPRA_NRO = 
                         Orden_compra.c_compra) IS 
                 NOT NULL 
             AND ( FACTURA_NRO IS NULL ) 
  END 

-- Calcular e insertar el importe total de las ventas de las facturas 

  BEGIN 
      UPDATE Factura_Venta 
      SET    n_importe_total = (SELECT SUM(n_cantidad * n_importe) 
                                FROM   Item_autoparte_venta 
                                WHERE  c_venta = Factura_Venta.c_venta 
                                GROUP  BY c_venta) 

      UPDATE Factura_Venta 
      SET    n_importe_total = (SELECT n_importe * 1.2 
                                FROM   Item_automovil_venta 
                                WHERE  c_venta = Factura_Venta.c_venta) 
      WHERE  Factura_Venta.c_venta IN (SELECT c_venta 
                                       FROM   Item_automovil_venta) 
  END 

-- Calcular e insertar el importe total de las compras de las ordenes de compra 

  BEGIN 
      UPDATE Orden_compra 
      SET    n_importe_total = (SELECT SUM(n_cantidad * n_importe) 
                                FROM   Item_autoparte_compra 
                                WHERE  c_compra = Orden_compra.c_compra 
                                GROUP  BY c_compra) 

      UPDATE Orden_compra 
      SET    n_importe_total = (SELECT n_importe 
                                FROM   Item_automovil_compra 
                                WHERE  c_compra = Orden_compra.c_compra) 
      WHERE  Orden_compra.c_compra IN (SELECT c_compra 
                                       FROM   Item_automovil_compra) 
  END 

GO 

-- EJECUCION DE PROCEDURES -- 

EXEC CANDI_DATOS.Creacion_de_tablas

EXEC CANDI_DATOS.Realizar_Migracion



