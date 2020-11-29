USE GD2C2020 

IF EXISTS (SELECT * 
           FROM   sys.schemas 
           WHERE  NAME = 'CANDI_DATOS') 
	BEGIN
		IF EXISTS(SELECT * 
				FROM   sys.tables 
				WHERE  object_name(object_id) = 'BI_hechos_compra_venta_automovil' 
						AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_hechos_compra_venta_automovil 
		IF EXISTS(SELECT * 
				FROM   sys.tables 
				WHERE  object_name(object_id) = 'BI_hechos_compra_venta_autoparte' 
						AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_hechos_compra_venta_autoparte
		 IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_automovil' 
						   AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_automovil  
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_autoparte  
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_sucursal_automovil' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal_automovil
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_sucursal_autoparte' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal_autoparte
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo_automovil
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo_autoparte
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_cliente_automovil' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_cliente_automovil 
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_cliente_autoparte' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_cliente_autoparte 
END


CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_automovil
( 
	c_automovil          decimal(18,0)  NOT NULL ,
	c_modelo             decimal(18,0)  NOT NULL ,
	c_caja               decimal(18,0)  NOT NULL ,
	c_carroceria         decimal(18,0)  NULL ,
	c_motor              decimal(18,0)  NULL ,
	c_transmision        decimal(18,0)  NULL ,
	n_potencia           char(18)  NULL,
	fabricante_nombre	 nvarchar(255)	NULL
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_automovil
	ADD CONSTRAINT XPKBI_dim_automovil PRIMARY KEY  CLUSTERED (c_automovil ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_autoparte
( 
	c_autoparte          decimal(18,0)  NOT NULL ,
	c_modelo             decimal(18,0)  NOT NULL ,
	c_caja               decimal(18,0)  NULL ,
	c_carroceria         decimal(18,0)  NULL ,
	c_motor              decimal(18,0)  NULL ,
	c_transmision        decimal(18,0)  NULL ,
	n_potencia           char(18)		NULL,
	fabricante_nombre	 nvarchar(255)	NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_autoparte
	ADD CONSTRAINT XPKBI_dim_autoparte PRIMARY KEY  CLUSTERED (c_autoparte ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_automovil
( 
	c_cliente            decimal(18,0)  NOT NULL ,
	edad                 char(18)  NOT NULL ,
	sexo                 char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_automovil
	ADD CONSTRAINT XPKBI_dim_cliente_automovil PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_autoparte
( 
	c_cliente            decimal(18,0)  NOT NULL ,
	edad                 char(18)  NOT NULL ,
	sexo                 char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_cliente_autoparte
	ADD CONSTRAINT XPKBI_dim_cliente_autoparte PRIMARY KEY  CLUSTERED (c_cliente ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_automovil
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_automovil
	ADD CONSTRAINT XPKBI_dim_sucursal_automovil PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_autoparte
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_autoparte
	ADD CONSTRAINT XPKBI_dim_sucursal_autoparte PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_automovil
( 
	c_tiempo             integer IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_automovil
	ADD CONSTRAINT XPKBI_dim_tiempo_automovil PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_autoparte
( 
	c_tiempo             integer IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_autoparte
	ADD CONSTRAINT XPKBI_dim_tiempo_autoparte PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
( 
	n_importe            decimal(18,2)  NULL ,
	n_importe_total      decimal(18,2)  NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	c_automovil          decimal(18,0)  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL ,
	c_tiempo             integer  NOT NULL ,
	tipo_operacion       char(18)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
	ADD CONSTRAINT XPKBI_hechos_compra_venta_automovil PRIMARY KEY  CLUSTERED (c_cliente ASC,c_sucursal ASC,c_tiempo ASC,c_automovil ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
( 
	n_cantidad           decimal(18,0)  NULL ,
	n_importe            decimal(18,2)  NULL ,
	n_importe_total      decimal(18,2)  NULL ,
	c_autoparte          decimal(18,0)  NOT NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	tipo_operacion       char(18)  NULL ,
	c_sucursal           decimal(18,0)  NOT NULL ,
	c_tiempo             integer  NOT NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT XPKBI_hechos_compra_venta_autoparte PRIMARY KEY  CLUSTERED (c_autoparte ASC,c_cliente ASC,c_sucursal ASC,c_tiempo ASC)
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
	ADD CONSTRAINT R_5 FOREIGN KEY (c_cliente) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_cliente_automovil(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
	ADD CONSTRAINT R_7 FOREIGN KEY (c_automovil) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_automovil(c_automovil)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
	ADD CONSTRAINT R_8 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_automovil(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
	ADD CONSTRAINT R_9 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_automovil(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT R_15 FOREIGN KEY (c_autoparte) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_autoparte(c_autoparte)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT R_18 FOREIGN KEY (c_cliente) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_cliente_autoparte(c_cliente)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT R_21 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal_autoparte(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT R_23 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo_autoparte(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_cliente_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_cliente_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_cliente_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_cliente_automovil(c_cliente, edad)
	SELECT CANDI_DATOS.Cliente.c_cliente , CASE WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 18 AND 30 THEN '18-30 años'
												WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 31 AND 50 THEN '31-50 años'
												WHEN (2020 - YEAR(f_nacimiento)) > 50 THEN '> 50 años'
											    END
	FROM CANDI_DATOS.Cliente
	WHERE CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Orden_compra.c_cliente FROM CANDI_DATOS.Orden_compra  
	JOIN CANDI_DATOS.Item_automovil_compra ON CANDI_DATOS.Orden_compra.c_compra = CANDI_DATOS.Item_automovil_compra.c_compra
	JOIN CANDI_DATOS.Automovil ON Automovil.c_automovil = CANDI_DATOS.Item_automovil_compra.c_automovil)
	OR CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Factura_Venta.c_cliente FROM CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_automovil_venta ON CANDI_DATOS.Factura_Venta.c_venta = CANDI_DATOS.Item_automovil_venta.c_venta
	JOIN CANDI_DATOS.Automovil ON Automovil.c_automovil = CANDI_DATOS.Item_automovil_venta.c_automovil)
	

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_cliente_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_cliente_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_cliente_autoparte
AS
BEGIN
	INSERT INTO CANDI_DATOS.bi_dim_cliente_autoparte(c_cliente, edad)
	SELECT CANDI_DATOS.Cliente.c_cliente, CASE WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 18 AND 30 THEN '18-30 años'
											   WHEN (2020 - YEAR(f_nacimiento)) BETWEEN 31 AND 50 THEN '31-50 años'
											   WHEN (2020 - YEAR(f_nacimiento)) > 50 THEN '> 50 años'
											   END
	FROM CANDI_DATOS.Cliente
	WHERE CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Orden_compra.c_cliente FROM CANDI_DATOS.Orden_compra  
	JOIN CANDI_DATOS.Item_autoparte_compra ON CANDI_DATOS.Orden_compra.c_compra = CANDI_DATOS.Item_autoparte_compra.c_compra
	JOIN CANDI_DATOS.Autoparte ON Autoparte.c_autoparte = CANDI_DATOS.Item_autoparte_compra.c_autoparte)
	OR CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Factura_Venta.c_cliente FROM CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_autoparte_venta ON CANDI_DATOS.Factura_Venta.c_venta = CANDI_DATOS.Item_autoparte_venta.c_venta
	JOIN CANDI_DATOS.Autoparte ON Autoparte.c_autoparte= CANDI_DATOS.Item_autoparte_venta.c_autoparte)
	
END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_autoparte
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_autoparte(c_autoparte, c_modelo, c_caja, c_carroceria, c_motor, c_transmision, n_potencia, fabricante_nombre)
	SELECT A.c_autoparte, M.c_modelo, M.c_caja, M.c_carroceria, M.c_motor, M.c_transmision, 
	CASE WHEN M.n_potencia BETWEEN 50 AND 150 THEN '50-150cv' 
		 WHEN M.n_potencia BETWEEN 151 AND 300 THEN '151-300cv' 
		 WHEN M.n_potencia >300 THEN '> 300cv' 
		 END, A.d_fabricante_autoparte
	FROM GD2C2020.CANDI_DATOS.Autoparte A
		JOIN GD2C2020.CANDI_DATOS.Modelo M ON A.c_modelo = M.c_modelo

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_automovil(c_automovil, c_modelo, c_caja, c_carroceria, c_motor, c_transmision, n_potencia, fabricante_nombre)
	SELECT A.c_automovil, M.c_modelo, M.c_caja, M.c_carroceria, M.c_motor, M.c_transmision, 
		CASE WHEN M.n_potencia BETWEEN 50 AND 150 THEN '50-150cv' 
		 WHEN M.n_potencia BETWEEN 151 AND 300 THEN '151-300cv' 
		 WHEN M.n_potencia > 300 THEN '> 300cv' 
		 END, A.d_fabricante_automovil
		 FROM GD2C2020.CANDI_DATOS.Automovil A
		JOIN GD2C2020.CANDI_DATOS.Modelo M ON A.c_modelo = M.c_modelo

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_sucursal_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_sucursal_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_sucursal_automovil
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_sucursal_automovil(c_sucursal, d_direccion)
	SELECT S.c_sucursal, S.d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal S 

END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_sucursal_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_sucursal_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_sucursal_autoparte
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_sucursal_autoparte(c_sucursal, d_direccion)
	SELECT c_sucursal, d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal 

END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_tiempo_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_tiempo_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_tiempo_automovil 
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo_automovil(anio, mes)
	SELECT YEAR(f_fecha_fact), MONTH(f_fecha_fact) FROM GD2C2020.CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_automovil_venta i1 ON i1.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	UNION
	SELECT YEAR(f_compra), MONTH(f_compra) FROM GD2C2020.CANDI_DATOS.Orden_compra
	JOIN CANDI_DATOS.Item_automovil_compra i2 ON i2.c_compra = CANDI_DATOS.Orden_compra.c_compra
	GROUP BY YEAR(f_compra), MONTH(f_compra)

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'BI_tiempo_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.BI_tiempo_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.BI_tiempo_autoparte
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo_autoparte(anio, mes)
	SELECT YEAR(f_fecha_fact), MONTH(f_fecha_fact) FROM GD2C2020.CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_autoparte_venta i1 ON i1.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	UNION
	SELECT YEAR(f_compra), MONTH(f_compra) FROM GD2C2020.CANDI_DATOS.Orden_compra
	JOIN CANDI_DATOS.Item_autoparte_compra i2 ON i2.c_compra = CANDI_DATOS.Orden_compra.c_compra
	GROUP BY YEAR(f_compra), MONTH(f_compra)

END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_hechos_automovil' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_hechos_automovil 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_hechos_automovil
AS
BEGIN
	
	INSERT INTO CANDI_DATOS.BI_hechos_compra_venta_automovil(c_automovil, c_cliente, c_sucursal, c_tiempo, n_importe, n_importe_total)
	SELECT Item_automovil_compra.c_automovil, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo, CANDI_DATOS.Item_automovil_compra.n_importe, Orden_compra.n_importe_total  
	FROM CANDI_DATOS.Orden_compra 
	JOIN CANDI_DATOS.Item_automovil_compra ON CANDI_DATOS.Item_automovil_compra.c_compra = CANDI_DATOS.Orden_compra.c_compra
	JOIN CANDI_DATOS.BI_dim_automovil ON CANDI_DATOS.BI_dim_automovil.c_automovil = CANDI_DATOS.Item_automovil_compra.c_automovil
	JOIN CANDI_DATOS.BI_dim_tiempo_automovil ON YEAR(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_automovil.anio AND MONTH(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_automovil.mes
	JOIN CANDI_DATOS.BI_dim_cliente_automovil ON CANDI_DATOS.BI_dim_cliente_automovil.c_cliente = CANDI_DATOS.Orden_compra.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal_automovil ON CANDI_DATOS.BI_dim_sucursal_automovil.c_sucursal = CANDI_DATOS.Orden_compra.c_sucursal

	UPDATE CANDI_DATOS.BI_hechos_compra_venta_automovil SET tipo_operacion = 'COMPRA'

	INSERT INTO CANDI_DATOS.BI_hechos_compra_venta_automovil(c_automovil, c_cliente, c_sucursal, c_tiempo, n_importe, n_importe_total)
	SELECT Item_automovil_venta.c_automovil, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, CANDI_DATOS.Item_automovil_venta.n_importe, Factura_Venta.n_importe_total  
	FROM CANDI_DATOS.Factura_Venta 
	JOIN CANDI_DATOS.Item_automovil_venta ON CANDI_DATOS.Item_automovil_venta.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	JOIN CANDI_DATOS.BI_dim_automovil ON CANDI_DATOS.BI_dim_automovil.c_automovil = CANDI_DATOS.Item_automovil_venta.c_automovil
	JOIN CANDI_DATOS.BI_dim_tiempo_automovil ON YEAR(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_automovil.anio AND MONTH(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_automovil.mes
	JOIN CANDI_DATOS.BI_dim_cliente_automovil ON CANDI_DATOS.BI_dim_cliente_automovil.c_cliente = CANDI_DATOS.Factura_Venta.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal_automovil ON CANDI_DATOS.BI_dim_sucursal_automovil.c_sucursal = CANDI_DATOS.Factura_Venta.c_sucursal

	UPDATE CANDI_DATOS.BI_hechos_compra_venta_automovil SET tipo_operacion = 'VENTA' WHERE tipo_operacion IS NULL

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_hechos_autoparte' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_hechos_autoparte 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_hechos_autoparte
AS
BEGIN

	INSERT INTO CANDI_DATOS.BI_hechos_compra_venta_autoparte(c_autoparte, c_cliente, c_sucursal, c_tiempo, n_cantidad, n_importe, n_importe_total)
	SELECT DISTINCT Item_autoparte_compra.c_autoparte, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo,SUM(CANDI_DATOS.Item_autoparte_compra.n_cantidad), CANDI_DATOS.Item_autoparte_compra.n_importe, Orden_compra.n_importe_total  
	FROM CANDI_DATOS.Orden_compra 
	JOIN CANDI_DATOS.Item_autoparte_compra ON CANDI_DATOS.Item_autoparte_compra.c_compra = CANDI_DATOS.Orden_compra.c_compra
	JOIN CANDI_DATOS.BI_dim_autoparte ON CANDI_DATOS.BI_dim_autoparte.c_autoparte = CANDI_DATOS.Item_autoparte_compra.c_autoparte
	JOIN CANDI_DATOS.BI_dim_tiempo_autoparte ON YEAR(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_autoparte.anio AND MONTH(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo_autoparte.mes
	JOIN CANDI_DATOS.BI_dim_cliente_autoparte ON CANDI_DATOS.BI_dim_cliente_autoparte.c_cliente = CANDI_DATOS.Orden_compra.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal_autoparte ON CANDI_DATOS.BI_dim_sucursal_autoparte.c_sucursal = CANDI_DATOS.Orden_compra.c_sucursal
	GROUP BY Item_autoparte_compra.c_autoparte, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo, CANDI_DATOS.Item_autoparte_compra.n_importe, Orden_compra.n_importe_total  
	
	UPDATE CANDI_DATOS.BI_hechos_compra_venta_autoparte SET tipo_operacion = 'COMPRA'

	INSERT INTO CANDI_DATOS.BI_hechos_compra_venta_autoparte(c_autoparte, c_cliente, c_sucursal, c_tiempo, n_cantidad, n_importe, n_importe_total)
	SELECT DISTINCT Item_autoparte_venta.c_autoparte, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, BI_dim_tiempo_autoparte.c_tiempo, SUM(CANDI_DATOS.Item_autoparte_venta.n_cantidad), CANDI_DATOS.Item_autoparte_venta.n_importe, Factura_Venta.n_importe_total  
	FROM CANDI_DATOS.Factura_Venta 
	JOIN CANDI_DATOS.Item_autoparte_venta ON CANDI_DATOS.Item_autoparte_venta.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	JOIN CANDI_DATOS.BI_dim_autoparte ON CANDI_DATOS.BI_dim_autoparte.c_autoparte = CANDI_DATOS.Item_autoparte_venta.c_autoparte
	JOIN CANDI_DATOS.BI_dim_tiempo_autoparte ON YEAR(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_autoparte.anio AND MONTH(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo_autoparte.mes
	JOIN CANDI_DATOS.BI_dim_cliente_autoparte ON CANDI_DATOS.BI_dim_cliente_autoparte.c_cliente = CANDI_DATOS.Factura_Venta.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal_autoparte ON CANDI_DATOS.BI_dim_sucursal_autoparte.c_sucursal = CANDI_DATOS.Factura_Venta.c_sucursal
	GROUP BY  Item_autoparte_venta.c_autoparte, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, CANDI_DATOS.Item_autoparte_venta.n_importe, Factura_Venta.n_importe_total   

	UPDATE CANDI_DATOS.BI_hechos_compra_venta_autoparte SET tipo_operacion = 'VENTA' WHERE tipo_operacion IS NULL

END

GO

EXEC CANDI_DATOS.bi_cliente_autoparte
EXEC CANDI_DATOS.bi_cliente_automovil
EXEC CANDI_DATOS.bi_automovil
EXEC CANDI_DATOS.bi_autoparte
EXEC CANDI_DATOS.bi_sucursal_automovil
EXEC CANDI_DATOS.bi_sucursal_autoparte
EXEC CANDI_DATOS.BI_tiempo_automovil
EXEC CANDI_DATOS.BI_tiempo_autoparte
EXEC CANDI_DATOS.bi_hechos_automovil
EXEC CANDI_DATOS.bi_hechos_autoparte


IF EXISTS(select * 
			FROM sys.views 
			where name = 'CANT_AUTOS_VENDIDOS_Y_COMPRADOS_POR_SUCURSAL_Y_MES')
	DROP VIEW CANDI_DATOS.CANT_AUTOS_VENDIDOS_Y_COMPRADOS_POR_SUCURSAL_Y_MES
GO

CREATE VIEW CANDI_DATOS.CANT_AUTOS_VENDIDOS_Y_COMPRADOS_POR_SUCURSAL_Y_MES
AS
SELECT BI_hechos_compra_venta_automovil.c_sucursal 'SUCURSAL', BI_dim_tiempo_automovil.mes AS 'MES', COUNT(c_automovil) AS 'CANTIDAD DE AUTOS VENDIDOS Y COMPRADOS' 
FROM CANDI_DATOS.BI_hechos_compra_venta_automovil
JOIN CANDI_DATOS.BI_dim_tiempo_automovil ON BI_dim_tiempo_automovil.c_tiempo = BI_hechos_compra_venta_automovil.c_tiempo
GROUP BY BI_hechos_compra_venta_automovil.c_sucursal, BI_dim_tiempo_automovil.mes

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'PRECIO_PROMEDIO_DE_AUTOS_VENDIDOS_Y_COMPRADOS')
	DROP VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_AUTOS_VENDIDOS_Y_COMPRADOS

GO

CREATE VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_AUTOS_VENDIDOS_Y_COMPRADOS
AS
SELECT c_automovil AS 'AUTOMOVIL', AVG(BI_hechos_compra_venta_automovil.n_importe_total) AS 'PRECIO PROMEDIO DE AUTOMOVILES VENDIDOS Y COMPRADOS' 
FROM CANDI_DATOS.BI_hechos_compra_venta_automovil
GROUP BY c_automovil

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'GANANCIAS_AUTOMOVILES_X_SUCURSAL_X_MES')
	DROP VIEW CANDI_DATOS.GANANCIAS_AUTOMOVILES_X_SUCURSAL_X_MES

GO

CREATE VIEW CANDI_DATOS.GANANCIAS_AUTOMOVILES_X_SUCURSAL_X_MES
AS
SELECT b1.c_sucursal, b2.mes , SUM(b1.n_importe) - (SELECT SUM(n_importe)
FROM CANDI_DATOS.BI_hechos_compra_venta_automovil
JOIN CANDI_DATOS.BI_dim_tiempo_automovil ON BI_dim_tiempo_automovil.c_tiempo = BI_hechos_compra_venta_automovil.c_tiempo
WHERE tipo_operacion = 'COMPRA' and  b2.mes = mes AND b1.c_sucursal = c_sucursal
GROUP BY BI_hechos_compra_venta_automovil.c_sucursal, BI_dim_tiempo_automovil.mes ) AS 'GANANCIAS'
FROM CANDI_DATOS.BI_hechos_compra_venta_automovil b1
JOIN CANDI_DATOS.BI_dim_tiempo_automovil b2 ON b2.c_tiempo = b1.c_tiempo
WHERE b1.tipo_operacion = 'VENTA' 
GROUP BY b1.c_sucursal, b2.mes 

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'PROMEDIO_DE_TIEMPO_EN_STOCK')
	DROP VIEW CANDI_DATOS.PROMEDIO_DE_TIEMPO_EN_STOCK

GO

CREATE VIEW CANDI_DATOS.PROMEDIO_DE_TIEMPO_EN_STOCK
AS
SELECT COMPRAS_AUTOMOVILES.c_modelo MODELO, AVG(DATEDIFF(MONTH,COMPRAS_AUTOMOVILES.FECHA_COMPRA,VENTAS_AUTOMOVILES.FECHA_VENTA)) AS PROMEDIO_DE_TIEMPO_EN_STOCK
FROM
(SELECT DATEFROMPARTS(C.anio, C.mes,1) AS FECHA_COMPRA, A.c_automovil, B.c_modelo
FROM CANDI_DATOS.BI_hechos_compra_venta_automovil A
JOIN CANDI_DATOS.BI_dim_automovil B ON B.c_automovil = A.c_automovil
JOIN CANDI_DATOS.BI_dim_tiempo_automovil C ON C.c_tiempo = A.c_tiempo
WHERE tipo_operacion = 'COMPRA') AS COMPRAS_AUTOMOVILES
JOIN (SELECT DATEFROMPARTS(D.anio, D.mes,1) AS FECHA_VENTA, G.c_automovil, A2.c_modelo 
FROM CANDI_DATOS.BI_hechos_compra_venta_automovil G
JOIN CANDI_DATOS.BI_dim_automovil A2 ON A2.c_automovil = G.c_automovil
JOIN CANDI_DATOS.BI_dim_tiempo_automovil D ON D.c_tiempo = G.c_tiempo
WHERE tipo_operacion = 'VENTA') AS VENTAS_AUTOMOVILES ON COMPRAS_AUTOMOVILES.c_automovil = VENTAS_AUTOMOVILES.c_automovil
GROUP BY COMPRAS_AUTOMOVILES.c_modelo

GO

IF EXISTS(select * 
			FROM sys.views 
			where name = 'PRECIO_PROMEDIO_DE_CADA_AUTOPARTE_VENDIDA_Y_COMPRADA')
	DROP VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_CADA_AUTOPARTE_VENDIDA_Y_COMPRADA

GO

CREATE VIEW CANDI_DATOS.PRECIO_PROMEDIO_DE_CADA_AUTOPARTE_VENDIDA_Y_COMPRADA
AS
SELECT c_autoparte AS 'AUTOPARTE', AVG(n_importe) AS 'PRECIO PROMEDIO DE CADA AUTOPARTE VENDIDA Y COMPRADA'
FROM CANDI_DATOS.BI_hechos_compra_venta_autoparte
GROUP BY BI_hechos_compra_venta_autoparte.c_autoparte

GO


IF EXISTS(select * 
			FROM sys.views 
			where name = 'GANANCIAS_AUTOPARTES_X_SUCURSAL_X_MES')
	DROP VIEW CANDI_DATOS.GANANCIAS_AUTOPARTES_X_SUCURSAL_X_MES

GO

CREATE VIEW CANDI_DATOS.GANANCIAS_AUTOPARTES_X_SUCURSAL_X_MES
AS
SELECT b1.c_sucursal, b2.mes , SUM(b1.n_importe) - (SELECT SUM(n_importe)
FROM CANDI_DATOS.BI_hechos_compra_venta_autoparte
JOIN CANDI_DATOS.BI_dim_tiempo_autoparte ON BI_dim_tiempo_autoparte.c_tiempo = BI_hechos_compra_venta_autoparte.c_tiempo
WHERE tipo_operacion = 'COMPRA' and  b2.mes = mes AND b1.c_sucursal = c_sucursal
GROUP BY BI_hechos_compra_venta_autoparte.c_sucursal, BI_dim_tiempo_autoparte.mes ) AS 'GANANCIAS'
FROM CANDI_DATOS.BI_hechos_compra_venta_autoparte b1
JOIN CANDI_DATOS.BI_dim_tiempo_autoparte b2 ON b2.c_tiempo = b1.c_tiempo
WHERE b1.tipo_operacion = 'VENTA' 
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
FROM CANDI_DATOS.BI_hechos_compra_venta_autoparte
JOIN CANDI_DATOS.BI_dim_tiempo_autoparte ON BI_dim_tiempo_autoparte.c_tiempo = BI_hechos_compra_venta_autoparte.c_tiempo
WHERE tipo_operacion = 'COMPRA'
GROUP BY c_sucursal, anio, mes) T
GROUP BY SUCURSAL, ANIO

GO



