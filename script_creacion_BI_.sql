USE GD2C2020 

IF EXISTS (SELECT * 
           FROM   sys.schemas 
           WHERE  NAME = 'CANDI_DATOS') 
	BEGIN
		IF EXISTS(SELECT * 
				FROM   sys.tables 
				WHERE  object_name(object_id) = 'BI_hechos_compra_automovil' 
						AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_hechos_compra_automovil 
		IF EXISTS(SELECT * 
				FROM   sys.tables 
				WHERE  object_name(object_id) = 'BI_hechos_compra_autoparte' 
						AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_hechos_compra_autoparte
		 IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_automovil_compra' 
						   AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_automovil_compra  
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_autoparte_compra' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_autoparte_compra  
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_sucursal_compra_automovil' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal_compra_automovil
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_sucursal_compra_autoparte' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal_compra_autoparte
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo_compra_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo_compra_automovil
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo_compra_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo_compra_autoparte
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_cliente_compra_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_cliente_compra_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_cliente_compra_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_cliente_compra_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_auto_compra' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_auto_compra 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_transmision_compra' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_transmision_compra 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_potencia_compra_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_potencia_compra_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_potencia_compra_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_potencia_compra_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_fabricante_compra_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_fabricante_compra_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_fabricante_compra_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_fabricante_compra_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_modelo_compra_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_modelo_compra_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_modelo_compra_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_modelo_compra_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_motor_compra' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_motor_compra 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_caja_compra' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_caja_compra 
		--
				IF EXISTS(SELECT * 
				FROM   sys.tables 
				WHERE  object_name(object_id) = 'BI_hechos_venta_automovil' 
						AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_hechos_venta_automovil 
		IF EXISTS(SELECT * 
				FROM   sys.tables 
				WHERE  object_name(object_id) = 'BI_hechos_venta_autoparte' 
						AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_hechos_venta_autoparte
		 IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_automovil_venta' 
						   AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_automovil_venta  
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_autoparte_venta' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_autoparte_venta  
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_sucursal_venta_automovil' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal_venta_automovil
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_sucursal_venta_autoparte' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal_venta_autoparte
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo_venta_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo_venta_automovil
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo_venta_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo_venta_autoparte
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_cliente_venta_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_cliente_venta_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_cliente_venta_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_cliente_venta_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_auto_venta' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_auto_venta 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_transmision_venta' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_transmision_venta 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_potencia_venta_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_potencia_venta_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_potencia_venta_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_potencia_venta_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_fabricante_venta_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_fabricante_venta_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_fabricante_venta_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_fabricante_venta_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_modelo_venta_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_modelo_venta_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_modelo_venta_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_modelo_venta_autoparte 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_motor_venta' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_motor_venta 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tipo_caja_venta' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tipo_caja_venta 
END



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_automovil_compra
( 
	c_automovil          decimal(18,0)  NOT NULL ,
	d_patente            nvarchar(50)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_automovil_compra
	ADD CONSTRAINT XPKBI_dim_automovil_compra PRIMARY KEY  CLUSTERED (c_automovil ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_autoparte_compra
( 
	c_autoparte          decimal(18,0)  NOT NULL ,
	d_autoparte          nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_autoparte_compra
	ADD CONSTRAINT XPKBI_dim_autoparte_compra PRIMARY KEY  CLUSTERED (c_autoparte ASC)
go


CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_compra_automovil
( 
	c_cliente            decimal(18,0)  NOT NULL ,
	edad                 char(18)  NOT NULL ,
	sexo                 char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_compra_automovil
	ADD CONSTRAINT XPKBI_dim_cliente_compra_automovil PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_compra_autoparte
( 
	c_cliente            decimal(18,0)  NOT NULL ,
	edad                 char(18)  NOT NULL ,
	sexo                 char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_compra_autoparte
	ADD CONSTRAINT XPKBI_dim_cliente_compra_autoparte PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_compra_automovil
( 
	c_fabricante         int IDENTITY ( 1,1 ) ,
	d_fabricante         nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_compra_automovil
	ADD CONSTRAINT XPKBI_dim_fabricante_compra_automovil PRIMARY KEY  CLUSTERED (c_fabricante ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_compra_autoparte
( 
	c_fabricante         int IDENTITY ( 1,1 ) ,
	d_fabricante         nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_compra_autoparte
	ADD CONSTRAINT XPKBI_dim_fabricante_compra_autoparte PRIMARY KEY  CLUSTERED (c_fabricante ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_compra_automovil
( 
	c_modelo             decimal(18,0)  NOT NULL ,
	d_nombre             nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_compra_automovil
	ADD CONSTRAINT XPKBI_dim_modelo_compra_automovil PRIMARY KEY  CLUSTERED (c_modelo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_compra_autoparte
( 
	c_modelo             decimal(18,0)  NOT NULL ,
	d_nombre             nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_compra_autoparte
	ADD CONSTRAINT XPKBI_dim_modelo_compra_autoparte PRIMARY KEY  CLUSTERED (c_modelo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_compra_automovil
( 
	c_potencia           int IDENTITY ( 1,1 ) ,
	--d_potencia           char(18)  NULL,
	n_potencia			 decimal(18,0)
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_compra_automovil
	ADD CONSTRAINT XPKBI_dim_potencia_compra_automovil PRIMARY KEY  CLUSTERED (c_potencia ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_compra_autoparte
( 
	c_potencia           int IDENTITY ( 1,1 ) ,
	--d_potencia           char(18)  NULL,
	n_potencia			 decimal(18,0)
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_compra_autoparte
	ADD CONSTRAINT XPKBI_dim_potencia_compra_autoparte PRIMARY KEY  CLUSTERED (c_potencia ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_compra_automovil
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_compra_automovil
	ADD CONSTRAINT XPKBI_dim_sucursal_compra_automovil PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_compra_autoparte
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_compra_autoparte
	ADD CONSTRAINT XPKBI_dim_sucursal_compra_autoparte PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_compra_automovil
( 
	c_tiempo             decimal(18,0) IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_compra_automovil
	ADD CONSTRAINT XPKBI_dim_tiempo_compra_automovil PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_compra_autoparte
( 
	c_tiempo             decimal(18,0) IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_compra_autoparte
	ADD CONSTRAINT XPKBI_dim_tiempo_compra_autoparte PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_auto_compra
( 
	c_tipo_auto          decimal(18,0)  NOT NULL ,
	d_tipo_auto          nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_auto_compra
	ADD CONSTRAINT XPKBI_dim_tipo_auto_compra PRIMARY KEY  CLUSTERED (c_tipo_auto ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_caja_compra
( 
	c_caja               decimal(18,0)  NOT NULL ,
	d_caja               nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_caja_compra
	ADD CONSTRAINT XPKBI_dim_tipo_caja_compra PRIMARY KEY  CLUSTERED (c_caja ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_motor_compra
( 
	c_motor              decimal(18,0)  NOT NULL ,
	d_motor              nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_motor_compra
	ADD CONSTRAINT XPKBI_dim_tipo_motor_compra PRIMARY KEY  CLUSTERED (c_motor ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_transmision_compra
( 
	c_transmision        decimal(18,0)  NOT NULL ,
	d_transmision        nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_transmision_compra
	ADD CONSTRAINT XPKBI_dim_tipo_transmision_compra PRIMARY KEY  CLUSTERED (c_transmision ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
( 
	n_importe            decimal(18,2)  NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL ,
	c_tiempo             decimal(18,0)  NOT NULL ,
	c_caja               decimal(18,0)  NOT NULL ,
	c_tipo_auto          decimal(18,0)  NOT NULL ,
	c_transmision        decimal(18,0)  NOT NULL ,
	c_motor              decimal(18,0)  NOT NULL ,
	c_potencia           int NOT NULL ,
	c_fabricante         int  NOT NULL ,
	c_automovil          decimal(18,0)  NOT NULL ,
	c_modelo             decimal(18,0)  NOT NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT XPKBI_hechos_compra_automovil PRIMARY KEY  CLUSTERED (c_cliente ASC,c_sucursal ASC,c_tiempo ASC,c_caja ASC,c_tipo_auto ASC,c_transmision ASC,c_motor ASC,c_potencia ASC,c_fabricante ASC,c_automovil ASC,c_modelo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
( 
	n_importe            decimal(18,2)  NULL ,
	cantidad             decimal(18,2)  NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	c_modelo             decimal(18,0)  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL ,
	c_tiempo             decimal(18,0)  NOT NULL ,
	c_fabricante         int NOT NULL ,
	c_autoparte          decimal(18,0)  NOT NULL ,
	c_potencia           int NOT NULL   
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT XPKBI_hechos_compra_autoparte PRIMARY KEY  CLUSTERED (c_cliente ASC,c_modelo ASC,c_sucursal ASC,c_tiempo ASC,c_fabricante ASC,c_autoparte ASC,c_potencia ASC)
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_5 FOREIGN KEY (c_cliente) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_cliente_compra_automovil(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_8 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_compra_automovil(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_9 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_compra_automovil(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_24 FOREIGN KEY (c_caja) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_caja_compra(c_caja)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_25 FOREIGN KEY (c_tipo_auto) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_auto_compra(c_tipo_auto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_26 FOREIGN KEY (c_transmision) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_transmision_compra(c_transmision)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_27 FOREIGN KEY (c_motor) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_motor_compra(c_motor)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_28 FOREIGN KEY (c_potencia) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_potencia_compra_automovil(c_potencia)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_30 FOREIGN KEY (c_fabricante) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_compra_automovil(c_fabricante)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_31 FOREIGN KEY (c_automovil) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_automovil_compra(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_automovil
	ADD CONSTRAINT R_32 FOREIGN KEY (c_modelo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_modelo_compra_automovil(c_modelo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_78 FOREIGN KEY (c_cliente) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_cliente_compra_autoparte(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_80 FOREIGN KEY (c_modelo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_modelo_compra_autoparte(c_modelo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_81 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_compra_autoparte(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_82 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_compra_autoparte(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_83 FOREIGN KEY (c_fabricante) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_compra_autoparte(c_fabricante)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_86 FOREIGN KEY (c_autoparte) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_autoparte_compra(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_autoparte
	ADD CONSTRAINT R_87 FOREIGN KEY (c_potencia) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_potencia_compra_autoparte(c_potencia)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_automovil_venta
( 
	c_automovil          decimal(18,0)  NOT NULL ,
	d_patente            nvarchar(50)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_automovil_venta
	ADD CONSTRAINT XPKBI_dim_automovil_venta PRIMARY KEY  CLUSTERED (c_automovil ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_autoparte_venta
( 
	c_autoparte          decimal(18,0)  NOT NULL ,
	d_autoparte          nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_autoparte_venta
	ADD CONSTRAINT XPKBI_dim_autoparte_venta PRIMARY KEY  CLUSTERED (c_autoparte ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_venta_automovil
( 
	c_cliente            decimal(18,0)  NOT NULL ,
	edad                 char(18)  NOT NULL ,
	sexo                 char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_venta_automovil
	ADD CONSTRAINT XPKBI_dim_cliente_venta_automovil PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_venta_autoparte
( 
	c_cliente            decimal(18,0)  NOT NULL ,
	edad                 char(18)  NOT NULL ,
	sexo                 char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_venta_autoparte
	ADD CONSTRAINT XPKBI_dim_cliente_venta_autoparte PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_venta_automovil
( 
	c_fabricante         int IDENTITY ( 1,1 ) ,
	d_fabricante         nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_venta_automovil
	ADD CONSTRAINT XPKBI_dim_fabricante_venta_automovil PRIMARY KEY  CLUSTERED (c_fabricante ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_venta_autoparte
( 
	c_fabricante         int IDENTITY ( 1,1 ) ,
	d_fabricante         nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_venta_autoparte
	ADD CONSTRAINT XPKBI_dim_fabricante_venta_autoparte PRIMARY KEY  CLUSTERED (c_fabricante ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_venta_automovil
( 
	c_modelo             decimal(18,0)  NOT NULL ,
	d_nombre             nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_venta_automovil
	ADD CONSTRAINT XPKBI_dim_modelo_venta_automovil PRIMARY KEY  CLUSTERED (c_modelo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_venta_autoparte
( 
	c_modelo             decimal(18,0)  NOT NULL ,
	d_nombre             nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_modelo_venta_autoparte
	ADD CONSTRAINT XPKBI_dim_modelo_venta_autoparte PRIMARY KEY  CLUSTERED (c_modelo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_venta_automovil
( 
	c_potencia           int IDENTITY ( 1,1 ) ,
	n_potencia           decimal(18,0)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_venta_automovil
	ADD CONSTRAINT XPKBI_dim_potencia_venta_automovil PRIMARY KEY  CLUSTERED (c_potencia ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_venta_autoparte
( 
	c_potencia           int IDENTITY ( 1,1 ) ,
	n_potencia           decimal(18,0)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_potencia_venta_autoparte
	ADD CONSTRAINT XPKBI_dim_potencia_venta_autoparte PRIMARY KEY  CLUSTERED (c_potencia ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_venta_automovil
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_venta_automovil
	ADD CONSTRAINT XPKBI_dim_sucursal_venta_automovil PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_venta_autoparte
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_venta_autoparte
	ADD CONSTRAINT XPKBI_dim_sucursal_venta_autoparte PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_venta_automovil
( 
	c_tiempo             decimal(18,0) IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_venta_automovil
	ADD CONSTRAINT XPKBI_dim_tiempo_venta_automovil PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_venta_autoparte
( 
	c_tiempo             decimal(18,0) IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_venta_autoparte
	ADD CONSTRAINT XPKBI_dim_tiempo_venta_autoparte PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_auto_venta
( 
	c_tipo_auto          decimal(18,0)  NOT NULL ,
	d_tipo_auto          nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_auto_venta
	ADD CONSTRAINT XPKBI_dim_tipo_auto_venta PRIMARY KEY  CLUSTERED (c_tipo_auto ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_caja_venta
( 
	c_caja               decimal(18,0)  NOT NULL ,
	d_caja               nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_caja_venta
	ADD CONSTRAINT XPKBI_dim_tipo_caja_venta PRIMARY KEY  CLUSTERED (c_caja ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_motor_venta
( 
	c_motor              decimal(18,0)  NOT NULL ,
	d_motor              nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_motor_venta
	ADD CONSTRAINT XPKBI_dim_tipo_motor_venta PRIMARY KEY  CLUSTERED (c_motor ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_transmision_venta
( 
	c_transmision        decimal(18,0)  NOT NULL ,
	d_transmision        nvarchar(255)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tipo_transmision_venta
	ADD CONSTRAINT XPKBI_dim_tipo_transmision_venta PRIMARY KEY  CLUSTERED (c_transmision ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
( 
	n_importe            decimal(18,2)  NULL ,
	c_modelo             decimal(18,0)  NOT NULL ,
	c_potencia           int  NOT NULL ,
	c_transmision        decimal(18,0)  NOT NULL ,
	c_caja               decimal(18,0)  NOT NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	c_tiempo             decimal(18,0)  NOT NULL ,
	c_automovil          decimal(18,0)  NOT NULL ,
	c_fabricante         int  NOT NULL ,
	c_tipo_auto          decimal(18,0)  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL ,
	c_motor              decimal(18,0)  NOT NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT XPKBI_hechos_venta_automovil PRIMARY KEY CLUSTERED (c_modelo ASC,c_potencia ASC,c_transmision ASC,c_caja ASC,c_cliente ASC,c_tiempo ASC,c_automovil ASC,c_fabricante ASC,c_tipo_auto ASC,c_sucursal ASC,c_motor ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
( 
	n_importe            decimal(18,2)  NULL ,
	cantidad             decimal(18,2)  NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	c_potencia           int  NOT NULL ,
	c_modelo             decimal(18,0)  NOT NULL ,
	c_fabricante         int  NOT NULL ,
	c_autoparte          decimal(18,0)  NOT NULL ,
	c_tiempo             decimal(18,0)  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT XPKBI_hechos_venta_autoparte PRIMARY KEY  CLUSTERED (c_cliente ASC,c_potencia ASC,c_modelo ASC,c_fabricante ASC,c_autoparte ASC,c_tiempo ASC,c_sucursal ASC)
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_88 FOREIGN KEY (c_modelo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_modelo_venta_automovil(c_modelo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_89 FOREIGN KEY (c_potencia) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_potencia_venta_automovil(c_potencia)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_90 FOREIGN KEY (c_transmision) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_transmision_venta(c_transmision)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_91 FOREIGN KEY (c_caja) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_caja_venta(c_caja)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_92 FOREIGN KEY (c_cliente) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_cliente_venta_automovil(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_94 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_venta_automovil(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_95 FOREIGN KEY (c_automovil) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_automovil_venta(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_96 FOREIGN KEY (c_fabricante) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_venta_automovil(c_fabricante)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_97 FOREIGN KEY (c_tipo_auto) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_auto_venta(c_tipo_auto)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_98 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_venta_automovil(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_automovil
	ADD CONSTRAINT R_99 FOREIGN KEY (c_motor) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tipo_motor_venta(c_motor)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_100 FOREIGN KEY (c_cliente) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_cliente_venta_autoparte(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_102 FOREIGN KEY (c_potencia) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_potencia_venta_autoparte(c_potencia)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_103 FOREIGN KEY (c_modelo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_modelo_venta_autoparte(c_modelo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_104 FOREIGN KEY (c_fabricante) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_fabricante_venta_autoparte(c_fabricante)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_105 FOREIGN KEY (c_autoparte) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_autoparte_venta(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_106 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_venta_autoparte(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_venta_autoparte
	ADD CONSTRAINT R_107 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_venta_autoparte(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_cliente_automovil_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_cliente_automovil_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_cliente_automovil_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_cliente_compra_automovil(c_cliente, edad)
	SELECT CANDI_DATOS.Cliente.c_cliente , CASE WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 18 AND 30 THEN '18-30 años'
												WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 31 AND 50 THEN '31-50 años'
												WHEN (2020 - YEAR(f_nacimiento)) > 50 THEN '> 50 años'
											    END
	FROM CANDI_DATOS.Cliente
	WHERE CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Orden_compra.c_cliente FROM CANDI_DATOS.Orden_compra  
	JOIN CANDI_DATOS.Item_automovil_compra ON CANDI_DATOS.Orden_compra.c_compra = CANDI_DATOS.Item_automovil_compra.c_compra
	JOIN CANDI_DATOS.Automovil ON Automovil.c_automovil = CANDI_DATOS.Item_automovil_compra.c_automovil)

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_cliente_autoparte_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_cliente_autoparte_compra

GO 

CREATE PROCEDURE CANDI_DATOS.bi_cliente_autoparte_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.bi_dim_cliente_compra_autoparte(c_cliente, edad)
	SELECT CANDI_DATOS.Cliente.c_cliente, CASE WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 18 AND 30 THEN '18-30 años'
											   WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 31 AND 50 THEN '31-50 años'
											   WHEN (2020 - YEAR(f_nacimiento)) > 50 THEN '> 50 años'
											   END
	FROM CANDI_DATOS.Cliente
	WHERE CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Orden_compra.c_cliente FROM CANDI_DATOS.Orden_compra  
	JOIN CANDI_DATOS.Item_autoparte_compra ON CANDI_DATOS.Orden_compra.c_compra = CANDI_DATOS.Item_autoparte_compra.c_compra
	JOIN CANDI_DATOS.Autoparte ON Autoparte.c_autoparte = CANDI_DATOS.Item_autoparte_compra.c_autoparte)
	
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_compra_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_compra_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_compra_autoparte
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_autoparte_compra(c_autoparte, d_autoparte)
	SELECT A.c_autoparte, A.d_autoparte
	FROM GD2C2020.CANDI_DATOS.Autoparte A
	JOIN GD2C2020.CANDI_DATOS.Item_autoparte_compra I ON I.c_autoparte = A.c_autoparte
	GROUP BY A.c_autoparte, A.d_autoparte
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_compra_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_compra_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_compra_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_automovil_compra(c_automovil, d_patente)
	SELECT A.c_automovil, A.d_patente
		 FROM GD2C2020.CANDI_DATOS.Automovil A
		 JOIN GD2C2020.CANDI_DATOS.Item_automovil_compra I ON I.c_automovil = A.c_automovil
		 
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_sucursal_automovil_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_sucursal_automovil_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_sucursal_automovil_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_sucursal_compra_automovil(c_sucursal, d_direccion)
	SELECT S.c_sucursal, S.d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal S 
END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_sucursal_autoparte_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_sucursal_autoparte_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_sucursal_autoparte_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.bi_dim_sucursal_compra_autoparte(c_sucursal, d_direccion)
	SELECT c_sucursal, d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal 

END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_tiempo_automovil_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_tiempo_automovil_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_tiempo_automovil_compra 
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo_compra_automovil(anio, mes)
	SELECT YEAR(f_compra), MONTH(f_compra) FROM GD2C2020.CANDI_DATOS.Orden_compra
	JOIN CANDI_DATOS.Item_automovil_compra i2 ON i2.c_compra = CANDI_DATOS.Orden_compra.c_compra
	GROUP BY YEAR(f_compra), MONTH(f_compra)
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_tiempo_autoparte_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_tiempo_autoparte_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_tiempo_autoparte_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo_compra_autoparte(anio, mes)
	SELECT YEAR(f_compra), MONTH(f_compra) FROM GD2C2020.CANDI_DATOS.Orden_compra
	JOIN CANDI_DATOS.Item_autoparte_compra i2 ON i2.c_compra = CANDI_DATOS.Orden_compra.c_compra
	GROUP BY YEAR(f_compra), MONTH(f_compra)

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_modelo_automovil_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_modelo_automovil_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_modelo_automovil_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_modelo_compra_automovil(c_modelo, d_nombre)
	SELECT M.c_modelo, M.d_nombre FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Automovil A ON A.c_modelo = M.c_modelo
	JOIN CANDI_DATOS.Item_automovil_compra i2 ON i2.c_automovil = A.c_automovil
	GROUP BY M.c_modelo, M.d_nombre
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_modelo_autoparte_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_modelo_autoparte_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_modelo_autoparte_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_modelo_compra_autoparte(c_modelo, d_nombre)
	SELECT M.c_modelo, M.d_nombre FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Autoparte A ON A.c_modelo = M.c_modelo
	JOIN CANDI_DATOS.Item_autoparte_compra i2 ON i2.c_autoparte = A.c_autoparte
	GROUP BY M.c_modelo, M.d_nombre
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_fabricante_autoparte_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_fabricante_autoparte_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_fabricante_autoparte_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_fabricante_compra_autoparte(d_fabricante)
	SELECT A.d_fabricante_autoparte FROM GD2C2020.CANDI_DATOS.Autoparte A
	JOIN CANDI_DATOS.Item_autoparte_compra i2 ON i2.c_autoparte = A.c_autoparte
	group by A.d_fabricante_autoparte
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_fabricante_automovil_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_fabricante_automovil_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_fabricante_automovil_compra
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_fabricante_compra_automovil(d_fabricante)
	SELECT A.d_fabricante_automovil FROM GD2C2020.CANDI_DATOS.Automovil A
	JOIN CANDI_DATOS.Item_automovil_compra i2 ON i2.c_automovil = A.c_automovil
	group by A.d_fabricante_automovil
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_compra_tipo_auto' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_compra_tipo_auto 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_compra_tipo_auto
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_auto_compra(c_tipo_auto, d_tipo_auto)
	SELECT A.c_carroceria, A.d_carroceria 
		FROM GD2C2020.CANDI_DATOS.Tipo_carroceria A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_compra_tipo_caja' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_compra_tipo_caja 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_compra_tipo_caja
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_caja_compra(c_caja, d_caja)
	SELECT A.c_caja, A.d_caja 
		FROM GD2C2020.CANDI_DATOS.Tipo_caja A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_compra_tipo_motor' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_compra_tipo_motor 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_compra_tipo_motor
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_motor_compra(c_motor, d_motor)
	SELECT A.c_motor, A.d_motor 
		FROM GD2C2020.CANDI_DATOS.Tipo_motor A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_compra_tipo_transmision' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_compra_tipo_transmision 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_compra_tipo_transmision
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_transmision_compra(c_transmision, d_transmision)
	SELECT A.c_transmision, A.d_transmision 
		FROM GD2C2020.CANDI_DATOS.Tipo_transmision A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_compra_potencia_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_compra_potencia_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_compra_potencia_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_potencia_compra_automovil(n_potencia)
	SELECT M.n_potencia
	FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Automovil A ON A.c_modelo = M.c_modelo
	group by  M.n_potencia

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_compra_potencia_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_compra_potencia_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_compra_potencia_autoparte 
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_potencia_compra_autoparte(n_potencia)
	SELECT M.n_potencia
		FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Autoparte A ON A.c_modelo = M.c_modelo
	group by  M.n_potencia
END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_hechos_automovil_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_hechos_automovil_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_hechos_automovil_compra
AS
BEGIN
	
	INSERT INTO CANDI_DATOS.BI_hechos_compra_automovil(c_automovil, c_cliente, c_sucursal, c_tiempo, n_importe, c_fabricante, c_tipo_auto, c_motor,
																c_caja, c_transmision, c_potencia, c_modelo)
	SELECT Item_automovil_compra.c_automovil, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo, CANDI_DATOS.Item_automovil_compra.n_importe,
			  F.c_fabricante, M.c_carroceria, M.c_motor, M.c_caja, M.c_transmision, CASE
			WHEN P.n_potencia <= 150 THEN 1
			WHEN P.n_potencia <= 300 THEN 2
			ELSE 3
		END, M.c_modelo
	FROM CANDI_DATOS.Orden_compra 
	JOIN CANDI_DATOS.Item_automovil_compra ON CANDI_DATOS.Item_automovil_compra.c_compra = CANDI_DATOS.Orden_compra.c_compra
	JOIN CANDI_DATOS.Automovil A ON A.c_automovil = Item_automovil_compra.c_automovil
	JOIN CANDI_DATOS.BI_dim_cliente_compra_automovil ON CANDI_DATOS.BI_dim_cliente_compra_automovil.c_cliente = CANDI_DATOS.Orden_compra.c_cliente 
	JOIN CANDI_DATOS.BI_dim_tiempo_compra_automovil ON YEAR(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_compra_automovil.anio AND MONTH(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_compra_automovil.mes
	JOIN CANDI_DATOS.Modelo M ON M.c_modelo = A.c_modelo
	JOIN CANDI_DATOS.BI_dim_potencia_compra_automovil P ON P.n_potencia = M.n_potencia
	JOIN CANDI_DATOS.BI_dim_fabricante_compra_automovil F ON F.d_fabricante = A.d_fabricante_automovil 
END

GO

-- AUTOMOVIL COMRPA
/*SELECT * FROM CANDI_DATOS.BI_dim_automovil_compra
SELECT * FROM CANDI_DATOS.BI_dim_cliente_compra_automovil
SELECT * FROM CANDI_DATOS.BI_dim_fabricante_compra_automovil
SELECT * FROM CANDI_DATOS.BI_dim_modelo_compra_automovil
SELECT * FROM CANDI_DATOS.BI_dim_potencia_compra_automovil
SELECT * FROM CANDI_DATOS.BI_dim_sucursal_compra_automovil
SELECT * FROM CANDI_DATOS.BI_dim_tiempo_compra_automovil
SELECT * FROM CANDI_DATOS.BI_dim_tipo_auto_compra
SELECT * FROM CANDI_DATOS.BI_dim_tipo_caja_compra
SELECT * FROM CANDI_DATOS.BI_dim_tipo_motor_compra
SELECT * FROM CANDI_DATOS.BI_dim_tipo_transmision_compra
SELECT * FROM CANDI_DATOS.BI_hechos_compra_automovil*/


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_hechos_autoparte_compra' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_hechos_autoparte_compra 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_hechos_autoparte_compra
AS
BEGIN

	INSERT INTO CANDI_DATOS.BI_hechos_compra_autoparte(c_autoparte, c_cliente, c_sucursal, c_tiempo, cantidad, n_importe, c_modelo, c_potencia, c_fabricante)
	SELECT DISTINCT Item_autoparte_compra.c_autoparte, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo, SUM(CANDI_DATOS.Item_autoparte_compra.n_cantidad), 
	CANDI_DATOS.Item_autoparte_compra.n_importe, M.c_modelo, CASE
			WHEN P.n_potencia <= 150 THEN 1
			WHEN P.n_potencia <= 300 THEN 2
			ELSE 3 
			END, F.c_fabricante
	FROM CANDI_DATOS.Orden_compra 
	JOIN CANDI_DATOS.Item_autoparte_compra ON CANDI_DATOS.Item_autoparte_compra.c_compra = CANDI_DATOS.Orden_compra.c_compra
	JOIN CANDI_DATOS.Autoparte A ON A.c_autoparte = Item_autoparte_compra.c_autoparte
	JOIN CANDI_DATOS.BI_dim_tiempo_compra_autoparte ON YEAR(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_compra_autoparte.anio AND MONTH(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_compra_autoparte.mes
	JOIN CANDI_DATOS.BI_dim_cliente_compra_autoparte ON CANDI_DATOS.BI_dim_cliente_compra_autoparte.c_cliente = CANDI_DATOS.Orden_compra.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal_compra_autoparte ON CANDI_DATOS.BI_dim_sucursal_compra_autoparte.c_sucursal = CANDI_DATOS.Orden_compra.c_sucursal
	JOIN CANDI_DATOS.Modelo M ON M.c_modelo = A.c_modelo
	JOIN CANDI_DATOS.BI_dim_fabricante_compra_autoparte F ON F.d_fabricante = A.d_fabricante_autoparte
	JOIN CANDI_DATOS.BI_dim_potencia_compra_autoparte P ON P.n_potencia = M.n_potencia

	GROUP BY Item_autoparte_compra.c_autoparte, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo, CANDI_DATOS.Item_autoparte_compra.n_importe, M.c_modelo, P.n_potencia, F.c_fabricante  
	
END

GO

-- AUTOPARTE COMPRA
/*SELECT * FROM CANDI_DATOS.BI_dim_autoparte_compra
SELECT * FROM CANDI_DATOS.BI_dim_cliente_compra_autoparte
SELECT * FROM CANDI_DATOS.BI_dim_fabricante_compra_autoparte
SELECT * FROM CANDI_DATOS.BI_dim_modelo_compra_autoparte
SELECT * FROM CANDI_DATOS.BI_dim_potencia_compra_autoparte
SELECT * FROM CANDI_DATOS.BI_dim_sucursal_compra_autoparte
SELECT * FROM CANDI_DATOS.BI_hechos_compra_autoparte
*/

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_cliente_automovil_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_cliente_automovil_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_cliente_automovil_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_cliente_venta_automovil(c_cliente, edad)
	SELECT CANDI_DATOS.Cliente.c_cliente , CASE WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 18 AND 30 THEN '18-30 años'
												WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 31 AND 50 THEN '31-50 años'
												WHEN (2020 - YEAR(f_nacimiento)) > 50 THEN '> 50 años'
											    END
	FROM CANDI_DATOS.Cliente
	WHERE CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Factura_Venta.c_cliente FROM CANDI_DATOS.Factura_Venta  
	JOIN CANDI_DATOS.Item_automovil_venta ON CANDI_DATOS.Factura_Venta.c_venta = CANDI_DATOS.Item_automovil_venta.c_venta
	JOIN CANDI_DATOS.Automovil ON Automovil.c_automovil = CANDI_DATOS.Item_automovil_venta.c_automovil)

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_cliente_autoparte_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_cliente_autoparte_venta

GO 

CREATE PROCEDURE CANDI_DATOS.bi_cliente_autoparte_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_cliente_venta_autoparte(c_cliente, edad)
	SELECT CANDI_DATOS.Cliente.c_cliente, CASE WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 18 AND 30 THEN '18-30 años'
											   WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 31 AND 50 THEN '31-50 años'
											   WHEN (2020 - YEAR(f_nacimiento)) > 50 THEN '> 50 años'
											   END
	FROM CANDI_DATOS.Cliente
	WHERE CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Factura_Venta.c_cliente FROM CANDI_DATOS.Factura_Venta  
	JOIN CANDI_DATOS.Item_autoparte_venta ON CANDI_DATOS.Factura_Venta.c_venta = CANDI_DATOS.Item_autoparte_venta.c_venta
	JOIN CANDI_DATOS.Autoparte ON Autoparte.c_autoparte = CANDI_DATOS.Item_autoparte_venta.c_autoparte)
	
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_venta_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_venta_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_venta_autoparte
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_autoparte_venta(c_autoparte, d_autoparte)
	SELECT A.c_autoparte, A.d_autoparte
	FROM GD2C2020.CANDI_DATOS.Autoparte A
	JOIN GD2C2020.CANDI_DATOS.Item_autoparte_venta I ON I.c_autoparte = A.c_autoparte
	GROUP BY A.c_autoparte, A.d_autoparte
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_venta_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_venta_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_venta_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_automovil_venta(c_automovil, d_patente)
	SELECT A.c_automovil, A.d_patente
		 FROM GD2C2020.CANDI_DATOS.Automovil A
		 JOIN GD2C2020.CANDI_DATOS.Item_automovil_venta I ON I.c_automovil = A.c_automovil
		 
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_sucursal_automovil_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_sucursal_automovil_venta

GO 

CREATE PROCEDURE CANDI_DATOS.BI_sucursal_automovil_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_sucursal_venta_automovil(c_sucursal, d_direccion)
	SELECT S.c_sucursal, S.d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal S 
END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_sucursal_autoparte_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_sucursal_autoparte_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_sucursal_autoparte_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.bi_dim_sucursal_venta_autoparte(c_sucursal, d_direccion)
	SELECT c_sucursal, d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal 

END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_tiempo_automovil_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_tiempo_automovil_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_tiempo_automovil_venta 
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo_venta_automovil(anio, mes)
	SELECT YEAR(f_fecha_fact), MONTH(f_fecha_fact) FROM GD2C2020.CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_automovil_venta i2 ON i2.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	GROUP BY YEAR(f_fecha_fact), MONTH(f_fecha_fact)
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_tiempo_autoparte_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_tiempo_autoparte_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_tiempo_autoparte_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo_venta_autoparte(anio, mes)
	SELECT YEAR(f_fecha_fact), MONTH(f_fecha_fact) FROM GD2C2020.CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_autoparte_venta i2 ON i2.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	GROUP BY YEAR(f_fecha_fact), MONTH(f_fecha_fact)

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_modelo_automovil_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_modelo_automovil_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_modelo_automovil_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_modelo_venta_automovil(c_modelo, d_nombre)
	SELECT M.c_modelo, M.d_nombre FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Automovil A ON A.c_modelo = M.c_modelo
	JOIN CANDI_DATOS.Item_automovil_venta i2 ON i2.c_automovil = A.c_automovil
	GROUP BY M.c_modelo, M.d_nombre
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_modelo_autoparte_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_modelo_autoparte_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_modelo_autoparte_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_modelo_venta_autoparte(c_modelo, d_nombre)
	SELECT M.c_modelo, M.d_nombre FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Autoparte A ON A.c_modelo = M.c_modelo
	JOIN CANDI_DATOS.Item_autoparte_venta i2 ON i2.c_autoparte = A.c_autoparte
	GROUP BY M.c_modelo, M.d_nombre
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_fabricante_autoparte_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_fabricante_autoparte_venta

GO 

CREATE PROCEDURE CANDI_DATOS.BI_fabricante_autoparte_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_fabricante_venta_autoparte(d_fabricante)
	SELECT A.d_fabricante_autoparte FROM GD2C2020.CANDI_DATOS.Autoparte A
	JOIN CANDI_DATOS.Item_autoparte_venta i2 ON i2.c_autoparte = A.c_autoparte
	group by A.d_fabricante_autoparte
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_fabricante_automovil_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_fabricante_automovil_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_fabricante_automovil_venta
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_fabricante_venta_automovil(d_fabricante)
	SELECT A.d_fabricante_automovil FROM GD2C2020.CANDI_DATOS.Automovil A
	JOIN CANDI_DATOS.Item_automovil_venta i2 ON i2.c_automovil = A.c_automovil
	group by A.d_fabricante_automovil
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_venta_tipo_auto' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_venta_tipo_auto 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_venta_tipo_auto
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_auto_venta(c_tipo_auto, d_tipo_auto)
	SELECT A.c_carroceria, A.d_carroceria 
		FROM GD2C2020.CANDI_DATOS.Tipo_carroceria A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_venta_tipo_caja' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_venta_tipo_caja 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_venta_tipo_caja
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_caja_venta(c_caja, d_caja)
	SELECT A.c_caja, A.d_caja 
		FROM GD2C2020.CANDI_DATOS.Tipo_caja A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_venta_tipo_motor' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_venta_tipo_motor 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_venta_tipo_motor
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_motor_venta(c_motor, d_motor)
	SELECT A.c_motor, A.d_motor 
		FROM GD2C2020.CANDI_DATOS.Tipo_motor A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_venta_tipo_transmision' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_venta_tipo_transmision 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_venta_tipo_transmision
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tipo_transmision_venta(c_transmision, d_transmision)
	SELECT A.c_transmision, A.d_transmision 
		FROM GD2C2020.CANDI_DATOS.Tipo_transmision A
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_venta_potencia_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_venta_potencia_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_venta_potencia_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_potencia_venta_automovil(n_potencia)
	SELECT M.n_potencia
	FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Automovil A ON A.c_modelo = M.c_modelo
	group by M.n_potencia

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_venta_potencia_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_venta_potencia_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_venta_potencia_autoparte 
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_potencia_venta_autoparte(n_potencia)
	SELECT M.n_potencia
		FROM GD2C2020.CANDI_DATOS.Modelo M
	JOIN CANDI_DATOS.Autoparte A ON A.c_modelo = M.c_modelo
	group by  M.n_potencia
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_hechos_automovil_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_hechos_automovil_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_hechos_automovil_venta
AS
BEGIN
	
	INSERT INTO CANDI_DATOS.BI_hechos_venta_automovil(c_automovil, c_cliente, c_sucursal, c_tiempo, n_importe, c_fabricante, c_tipo_auto, c_motor,
																c_caja, c_transmision, c_potencia, c_modelo)
	SELECT Item_automovil_venta.c_automovil, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, CANDI_DATOS.Item_automovil_venta.n_importe,
			  F.c_fabricante, M.c_carroceria, M.c_motor, M.c_caja, M.c_transmision, CASE
			WHEN P.n_potencia <= 150 THEN 1
			WHEN P.n_potencia <= 300 THEN 2
			ELSE 3
		END, M.c_modelo
	FROM CANDI_DATOS.Factura_Venta 
	JOIN CANDI_DATOS.Item_automovil_venta ON CANDI_DATOS.Item_automovil_venta.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	JOIN CANDI_DATOS.Automovil A ON A.c_automovil = Item_automovil_venta.c_automovil
	JOIN CANDI_DATOS.BI_dim_cliente_venta_automovil ON CANDI_DATOS.BI_dim_cliente_venta_automovil.c_cliente = CANDI_DATOS.Factura_Venta.c_cliente 
	JOIN CANDI_DATOS.BI_dim_tiempo_venta_automovil ON YEAR(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_venta_automovil.anio AND MONTH(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_venta_automovil.mes
	JOIN CANDI_DATOS.Modelo M ON M.c_modelo = A.c_modelo
	JOIN CANDI_DATOS.BI_dim_potencia_venta_automovil P ON P.n_potencia = M.n_potencia
	JOIN CANDI_DATOS.BI_dim_fabricante_venta_automovil F ON F.d_fabricante = A.d_fabricante_automovil 
END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_hechos_autoparte_venta' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_hechos_autoparte_venta 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_hechos_autoparte_venta
AS
BEGIN

	INSERT INTO CANDI_DATOS.BI_hechos_venta_autoparte(c_autoparte, c_cliente, c_sucursal, c_tiempo, cantidad, n_importe, c_modelo, c_potencia, c_fabricante)
	SELECT DISTINCT Item_autoparte_venta.c_autoparte, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, SUM(CANDI_DATOS.Item_autoparte_venta.n_cantidad), 
	CANDI_DATOS.Item_autoparte_venta.n_importe, M.c_modelo, CASE
			WHEN P.n_potencia <= 150 THEN 1
			WHEN P.n_potencia <= 300 THEN 2
			ELSE 3 
			END, F.c_fabricante
	FROM CANDI_DATOS.Factura_Venta 
	JOIN CANDI_DATOS.Item_autoparte_venta ON CANDI_DATOS.Item_autoparte_venta.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	JOIN CANDI_DATOS.Autoparte A ON A.c_autoparte = Item_autoparte_venta.c_autoparte
	JOIN CANDI_DATOS.BI_dim_tiempo_venta_autoparte ON YEAR(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_venta_autoparte.anio AND MONTH(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_venta_autoparte.mes
	JOIN CANDI_DATOS.BI_dim_cliente_venta_autoparte ON CANDI_DATOS.BI_dim_cliente_venta_autoparte.c_cliente = CANDI_DATOS.Factura_Venta.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal_venta_autoparte ON CANDI_DATOS.BI_dim_sucursal_venta_autoparte.c_sucursal = CANDI_DATOS.Factura_Venta.c_sucursal
	JOIN CANDI_DATOS.Modelo M ON M.c_modelo = A.c_modelo
	JOIN CANDI_DATOS.BI_dim_fabricante_venta_autoparte F ON F.d_fabricante = A.d_fabricante_autoparte
	JOIN CANDI_DATOS.BI_dim_potencia_venta_autoparte P ON P.n_potencia = M.n_potencia

	GROUP BY Item_autoparte_venta.c_autoparte, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, CANDI_DATOS.Item_autoparte_venta.n_importe, M.c_modelo, P.n_potencia, F.c_fabricante  
	
END

GO

-- COMPRA AUTOMOVIL
EXEC CANDI_DATOS.bi_cliente_automovil_compra
EXEC CANDI_DATOS.BI_compra_automovil
EXEC CANDI_DATOS.BI_tiempo_automovil_compra
EXEC CANDI_DATOS.BI_sucursal_automovil_compra 
EXEC CANDI_DATOS.BI_modelo_automovil_compra
EXEC CANDI_DATOS.BI_fabricante_automovil_compra
EXEC CANDI_DATOS.BI_compra_tipo_auto
EXEC CANDI_DATOS.BI_compra_tipo_caja
EXEC CANDI_DATOS.BI_compra_tipo_motor
EXEC CANDI_DATOS.BI_compra_tipo_transmision
EXEC CANDI_DATOS.BI_compra_potencia_automovil
EXEC CANDI_DATOS.bi_hechos_automovil_compra

-- VENTA AUTOMOVIL
EXEC CANDI_DATOS.bi_cliente_automovil_venta
EXEC CANDI_DATOS.BI_venta_automovil
EXEC CANDI_DATOS.BI_tiempo_automovil_venta
EXEC CANDI_DATOS.BI_sucursal_automovil_venta
EXEC CANDI_DATOS.BI_modelo_automovil_venta
EXEC CANDI_DATOS.BI_fabricante_automovil_venta
EXEC CANDI_DATOS.BI_venta_tipo_auto
EXEC CANDI_DATOS.BI_venta_tipo_caja
EXEC CANDI_DATOS.BI_venta_tipo_motor
EXEC CANDI_DATOS.BI_venta_tipo_transmision
EXEC CANDI_DATOS.BI_venta_potencia_automovil
EXEC CANDI_DATOS.bi_hechos_automovil_venta

-- COMPRA AUTOPARTE
EXEC CANDI_DATOS.bi_cliente_autoparte_compra
EXEC CANDI_DATOS.BI_compra_autoparte
EXEC CANDI_DATOS.BI_tiempo_autoparte_compra
EXEC CANDI_DATOS.BI_sucursal_autoparte_compra 
EXEC CANDI_DATOS.BI_modelo_autoparte_compra
EXEC CANDI_DATOS.BI_fabricante_autoparte_compra
EXEC CANDI_DATOS.BI_compra_potencia_autoparte
EXEC CANDI_DATOS.bi_hechos_autoparte_compra

-- VENTA AUTOPARTE
EXEC CANDI_DATOS.bi_cliente_autoparte_venta
EXEC CANDI_DATOS.BI_venta_autoparte
EXEC CANDI_DATOS.BI_tiempo_autoparte_venta
EXEC CANDI_DATOS.BI_sucursal_autoparte_venta
EXEC CANDI_DATOS.BI_modelo_autoparte_venta
EXEC CANDI_DATOS.BI_fabricante_autoparte_venta
EXEC CANDI_DATOS.BI_venta_potencia_autoparte
EXEC CANDI_DATOS.bi_hechos_autoparte_venta




IF EXISTS(select * 
			FROM sys.views 
			where name = 'CANT_AUTOS_VENDIDOS_Y_COMPRADOS_POR_SUCURSAL_Y_MES')
	DROP VIEW CANDI_DATOS.CANT_AUTOS_VENDIDOS_Y_COMPRADOS_POR_SUCURSAL_Y_MES
GO

CREATE VIEW CANDI_DATOS.CANT_AUTOS_VENDIDOS_Y_COMPRADOS_POR_SUCURSAL_Y_MES
AS
SELECT T.SUCURSAL, T.MES, SUM([CANTIDAD DE AUTOS VENDIDOS Y COMPRADOS ] ) AS 'CANTIDAD DE AUTOS VENDIDOS Y COMPRADOS X SUCURSAL X MES' 
FROM (SELECT C.c_sucursal 'SUCURSAL', BI_dim_tiempo_compra_automovil.mes AS 'MES',
COUNT(C.c_automovil)    AS 'CANTIDAD DE AUTOS VENDIDOS Y COMPRADOS ' 
FROM CANDI_DATOS.BI_hechos_compra_automovil C
JOIN CANDI_DATOS.BI_dim_tiempo_compra_automovil ON BI_dim_tiempo_compra_automovil.c_tiempo = C.c_tiempo
GROUP BY C.c_sucursal, BI_dim_tiempo_compra_automovil.mes
UNION
SELECT V.c_sucursal, BI_dim_tiempo_venta_automovil.mes, count(V.c_automovil) AS 'CANTIDAD DE AUTOS VENDIDOS Y COMPRADOS ' 
FROM CANDI_DATOS.BI_hechos_venta_automovil V
JOIN CANDI_DATOS.BI_dim_tiempo_venta_automovil ON BI_dim_tiempo_venta_automovil.c_tiempo = V.c_tiempo
GROUP BY V.c_sucursal, BI_dim_tiempo_venta_automovil.mes) T
GROUP BY T.SUCURSAL, T.MES

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'PRECIO_PROMEDIO_DE_AUTOS_VENDIDOS_Y_COMPRADOS')
	DROP VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_AUTOS_VENDIDOS_Y_COMPRADOS

GO

CREATE VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_AUTOS_VENDIDOS_Y_COMPRADOS
AS

SELECT T.AUTOMOVIL , FLOOR(AVG(T.[PRECIO DE AUTOMOVIL COMPRADO O VENDIDO])) AS 'PRECIO PROMEDIO DE AUTOS VENDIDOS Y COMPRADOS'
FROM (SELECT C.c_automovil AS 'AUTOMOVIL', C.n_importe AS 'PRECIO DE AUTOMOVIL COMPRADO O VENDIDO' 
FROM CANDI_DATOS.BI_hechos_compra_automovil C
GROUP BY C.c_automovil, C.n_importe
UNION
SELECT V.c_automovil AS 'AUTOMOVIL', V.n_importe AS 'PRECIO DE AUTOMOVIL COMPRADO O VENDIDO' 
FROM CANDI_DATOS.BI_hechos_venta_automovil V
GROUP BY V.c_automovil, V.n_importe) T
GROUP BY T.AUTOMOVIL

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'GANANCIAS_AUTOMOVILES_X_SUCURSAL_X_MES')
	DROP VIEW CANDI_DATOS.GANANCIAS_AUTOMOVILES_X_SUCURSAL_X_MES

GO

CREATE VIEW CANDI_DATOS.GANANCIAS_AUTOMOVILES_X_SUCURSAL_X_MES
AS
SELECT b1.c_sucursal 'SUCURSAL', b2.mes 'MES' , SUM(b1.n_importe) - (SELECT SUM(n_importe)
FROM CANDI_DATOS.BI_hechos_compra_automovil
JOIN CANDI_DATOS.BI_dim_tiempo_compra_automovil ON BI_dim_tiempo_compra_automovil.c_tiempo = BI_hechos_compra_automovil.c_tiempo
WHERE b2.mes = mes AND b1.c_sucursal = c_sucursal
GROUP BY BI_hechos_compra_automovil.c_sucursal, BI_dim_tiempo_compra_automovil.mes ) AS 'GANANCIAS X SUCURSAL X MES'
FROM CANDI_DATOS.BI_hechos_venta_automovil b1
JOIN CANDI_DATOS.BI_dim_tiempo_venta_automovil b2 ON b2.c_tiempo = b1.c_tiempo 
GROUP BY b1.c_sucursal, b2.mes 

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'PROMEDIO_DE_TIEMPO_EN_STOCK')
	DROP VIEW CANDI_DATOS.PROMEDIO_DE_TIEMPO_EN_STOCK

GO

CREATE VIEW CANDI_DATOS.PROMEDIO_DE_TIEMPO_EN_STOCK
AS
SELECT COMPRAS_AUTOMOVILES.c_modelo MODELO, AVG(DATEDIFF(MONTH,COMPRAS_AUTOMOVILES.FECHA_COMPRA,VENTAS_AUTOMOVILES.FECHA_VENTA)) AS 'PROMEDIO DE TIEMPO (MESES) EN STOCK'
FROM
(SELECT DATEFROMPARTS(C.anio, C.mes,1) AS FECHA_COMPRA, A.c_automovil, B.c_modelo
FROM CANDI_DATOS.BI_hechos_compra_automovil A
JOIN CANDI_DATOS.BI_dim_modelo_compra_automovil B ON B.c_modelo = A.c_modelo
JOIN CANDI_DATOS.BI_dim_tiempo_compra_automovil C ON C.c_tiempo = A.c_tiempo) AS COMPRAS_AUTOMOVILES
JOIN (SELECT DATEFROMPARTS(D.anio, D.mes,1) AS FECHA_VENTA, G.c_automovil, A2.c_modelo 
FROM CANDI_DATOS.BI_hechos_venta_automovil G
JOIN CANDI_DATOS.BI_dim_modelo_venta_automovil A2 ON A2.c_modelo = G.c_modelo
JOIN CANDI_DATOS.BI_dim_tiempo_venta_automovil D ON D.c_tiempo = G.c_tiempo)
AS VENTAS_AUTOMOVILES 
	ON COMPRAS_AUTOMOVILES.c_automovil = VENTAS_AUTOMOVILES.c_automovil
GROUP BY COMPRAS_AUTOMOVILES.c_modelo

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'PRECIO_PROMEDIO_DE_CADA_AUTOPARTE_VENDIDA_Y_COMPRADA')
	DROP VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_CADA_AUTOPARTE_VENDIDA_Y_COMPRADA

GO

CREATE VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_CADA_AUTOPARTE_VENDIDA_Y_COMPRADA
AS
SELECT T.AUTOPARTE, FLOOR(AVG(T.[PRECIO PROMEDIO DE CADA AUTOPARTE VENDIDA O COMPRADA])) AS 'PRECIO PROMEDIO DE CADA AUTOPARTE VENDIDA Y COMPRADA'
FROM (SELECT c_autoparte AS 'AUTOPARTE', n_importe AS 'PRECIO PROMEDIO DE CADA AUTOPARTE VENDIDA O COMPRADA'
FROM CANDI_DATOS.BI_hechos_compra_autoparte C
GROUP BY C.c_autoparte, C.n_importe
UNION
SELECT c_autoparte AS 'AUTOPARTE', n_importe AS 'PRECIO PROMEDIO DE CADA AUTOPARTE VENDIDA O COMPRADA'
FROM CANDI_DATOS.BI_hechos_venta_autoparte V
GROUP BY V.c_autoparte, V.n_importe) T
GROUP BY T.AUTOPARTE

GO


IF EXISTS(select * 
			FROM sys.views 
			where name = 'GANANCIAS_AUTOPARTES_X_SUCURSAL_X_MES')
	DROP VIEW CANDI_DATOS.GANANCIAS_AUTOPARTES_X_SUCURSAL_X_MES

GO

CREATE VIEW CANDI_DATOS.GANANCIAS_AUTOPARTES_X_SUCURSAL_X_MES
AS
SELECT b1.c_sucursal 'SUCURSAL' , b2.mes 'MES' , SUM(b1.n_importe) - (SELECT SUM(n_importe)
FROM CANDI_DATOS.BI_hechos_compra_autoparte
JOIN CANDI_DATOS.BI_dim_tiempo_compra_autoparte ON BI_dim_tiempo_compra_autoparte.c_tiempo = BI_dim_tiempo_compra_autoparte.c_tiempo
WHERE b2.mes = mes AND b1.c_sucursal = c_sucursal
GROUP BY BI_hechos_compra_autoparte.c_sucursal, BI_dim_tiempo_compra_autoparte.mes ) AS 'GANANCIAS'
FROM CANDI_DATOS.BI_hechos_venta_autoparte b1
JOIN CANDI_DATOS.BI_dim_tiempo_venta_autoparte b2 ON b2.c_tiempo = b1.c_tiempo
GROUP BY b1.c_sucursal, b2.mes 

GO


IF EXISTS(select * 
			FROM sys.views 
			where name = 'MAX_CANT_STOC_X_SUCURSAL_X_ANIO')
	DROP VIEW CANDI_DATOS.MAX_CANT_STOC_X_SUCURSAL_X_ANIO

GO

CREATE VIEW CANDI_DATOS.MAX_CANT_STOC_X_SUCURSAL_X_ANIO 
AS
SELECT SUCURSAL, ANIO, MAX(CANTIDAD_DE_AUTOPARTES) AS MAXIMA_CANT_STOCK
FROM (SELECT c_sucursal AS SUCURSAL, count(c_autoparte) AS CANTIDAD_DE_AUTOPARTES, anio AS ANIO, mes AS MES 
FROM CANDI_DATOS.BI_hechos_compra_autoparte
JOIN CANDI_DATOS.BI_dim_tiempo_compra_autoparte ON BI_dim_tiempo_compra_autoparte.c_tiempo = BI_dim_tiempo_compra_autoparte.c_tiempo
GROUP BY c_sucursal, anio, mes) T
GROUP BY SUCURSAL, ANIO

GO
