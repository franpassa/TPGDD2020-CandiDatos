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
					WHERE  object_name(object_id) = 'BI_dim_sucursal' 
					AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_sucursal
		IF EXISTS(SELECT * 
					FROM   sys.tables 
					WHERE  object_name(object_id) = 'BI_dim_tiempo' 
							AND schema_name(schema_id) = 'CANDI_DATOS')
			DROP TABLE CANDI_DATOS.BI_dim_tiempo
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
	n_potencia           char(18)  NULL 
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
	n_potencia           char(18)  NULL 
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



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal
( 
	c_sucursal           decimal(18,0)  NOT NULL ,
	d_direccion          char(30)  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_sucursal
	ADD CONSTRAINT XPKBI_dim_sucursal PRIMARY KEY  CLUSTERED (c_sucursal ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo
( 
	c_tiempo             integer IDENTITY ( 1,1 ) ,
	anio                 integer  NULL ,
	mes                  integer  NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_dim_tiempo
	ADD CONSTRAINT XPKBI_dim_tiempo PRIMARY KEY  CLUSTERED (c_tiempo ASC)
go



CREATE TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
( 
	n_importe            decimal(18,2)  NULL ,
	n_importe_total      decimal(18,2)  NULL ,
	c_cliente            decimal(18,0)  NOT NULL ,
	c_automovil          decimal(18,0)  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL ,
	c_tiempo             integer  NOT NULL 
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
	c_tiempo             integer  NOT NULL ,
	c_sucursal           decimal(18,0)  NOT NULL 
)
go



ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT XPKBI_hechos_compra_venta_autoparte PRIMARY KEY  CLUSTERED (c_autoparte ASC,c_cliente ASC,c_tiempo ASC,c_sucursal ASC)
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
	ADD CONSTRAINT R_8 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal(c_sucursal)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_automovil
	ADD CONSTRAINT R_9 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo(c_tiempo)
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
	ADD CONSTRAINT R_19 FOREIGN KEY (c_tiempo) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_tiempo(c_tiempo)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE [GD2C2020].[CANDI_DATOS].BI_hechos_compra_venta_autoparte
	ADD CONSTRAINT R_20 FOREIGN KEY (c_sucursal) REFERENCES [GD2C2020].[CANDI_DATOS].BI_dim_sucursal(c_sucursal)
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
	JOIN CANDI_DATOS.Automovil ON Automovil.c_automovil = CANDI_DATOS.Item_autoparte_compra.c_autoparte)
	OR CANDI_DATOS.Cliente.c_cliente IN (SELECT CANDI_DATOS.Factura_Venta.c_cliente FROM CANDI_DATOS.Factura_Venta
	JOIN CANDI_DATOS.Item_autoparte_venta ON CANDI_DATOS.Factura_Venta.c_venta = CANDI_DATOS.Item_autoparte_venta.c_venta
	JOIN CANDI_DATOS.Automovil ON Automovil.c_automovil = CANDI_DATOS.Item_autoparte_venta.c_autoparte)
	
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
	INSERT INTO CANDI_DATOS.BI_dim_autoparte(c_autoparte, c_modelo, c_caja, c_carroceria, c_motor, c_transmision, n_potencia)
	SELECT A.c_autoparte, M.c_modelo, M.c_caja, M.c_carroceria, M.c_motor, M.c_transmision, 
	CASE WHEN M.n_potencia BETWEEN 50 AND 150 THEN '50-150cv' 
		 WHEN M.n_potencia BETWEEN 151 AND 300 THEN '151-300cv' 
		 WHEN M.n_potencia >300 THEN '> 300cv' 
		 END
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
	INSERT INTO CANDI_DATOS.BI_dim_automovil(c_automovil, c_modelo, c_caja, c_carroceria, c_motor, c_transmision, n_potencia)
	SELECT A.c_automovil, M.c_modelo, M.c_caja, M.c_carroceria, M.c_motor, M.c_transmision, 
		CASE WHEN M.n_potencia BETWEEN 50 AND 150 THEN '50-150cv' 
		 WHEN M.n_potencia BETWEEN 151 AND 300 THEN '151-300cv' 
		 WHEN M.n_potencia > 300 THEN '> 300cv' 
		 END
		 FROM GD2C2020.CANDI_DATOS.Automovil A
		JOIN GD2C2020.CANDI_DATOS.Modelo M ON A.c_modelo = M.c_modelo

END

GO

IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_sucursal' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_sucursal 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_sucursal
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_sucursal(c_sucursal, d_direccion)
	SELECT S.c_sucursal, S.d_direccion FROM GD2C2020.CANDI_DATOS.Sucursal S 

END

GO


IF EXISTS (SELECT NAME 
           FROM   sysobjects 
           WHERE  NAME = 'bi_tiempo' 
                  AND type = 'p') 
  DROP PROCEDURE CANDI_DATOS.bi_tiempo 

GO 

CREATE PROCEDURE CANDI_DATOS.bi_tiempo 
AS
BEGIN
	INSERT INTO CANDI_DATOS.BI_dim_tiempo(anio, mes)
	SELECT YEAR(f_fecha_fact), MONTH(f_fecha_fact) FROM GD2C2020.CANDI_DATOS.Factura_Venta
	UNION
	SELECT YEAR(f_compra), MONTH(f_compra) FROM GD2C2020.CANDI_DATOS.Orden_compra
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
	JOIN CANDI_DATOS.BI_dim_tiempo ON YEAR(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo.anio AND MONTH(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo.mes
	JOIN CANDI_DATOS.BI_dim_cliente_automovil ON CANDI_DATOS.BI_dim_cliente_automovil.c_cliente = CANDI_DATOS.Orden_compra.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal ON CANDI_DATOS.BI_dim_sucursal.c_sucursal = CANDI_DATOS.Orden_compra.c_sucursal

	INSERT INTO CANDI_DATOS.BI_hechos_compra_venta_automovil(c_automovil, c_cliente, c_sucursal, c_tiempo, n_importe, n_importe_total)
	SELECT Item_automovil_venta.c_automovil, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, CANDI_DATOS.Item_automovil_venta.n_importe, Factura_Venta.n_importe_total  
	FROM CANDI_DATOS.Factura_Venta 
	JOIN CANDI_DATOS.Item_automovil_venta ON CANDI_DATOS.Item_automovil_venta.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	JOIN CANDI_DATOS.BI_dim_automovil ON CANDI_DATOS.BI_dim_automovil.c_automovil = CANDI_DATOS.Item_automovil_venta.c_automovil
	JOIN CANDI_DATOS.BI_dim_tiempo ON YEAR(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo.anio AND MONTH(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo.mes
	JOIN CANDI_DATOS.BI_dim_cliente_automovil ON CANDI_DATOS.BI_dim_cliente_automovil.c_cliente = CANDI_DATOS.Factura_Venta.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal ON CANDI_DATOS.BI_dim_sucursal.c_sucursal = CANDI_DATOS.Factura_Venta.c_sucursal
	
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
	JOIN CANDI_DATOS.BI_dim_tiempo ON YEAR(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo.anio AND MONTH(CANDI_DATOS.Orden_compra.f_compra) = CANDI_DATOS.BI_dim_tiempo.mes
	JOIN CANDI_DATOS.BI_dim_cliente_autoparte ON CANDI_DATOS.BI_dim_cliente_autoparte.c_cliente = CANDI_DATOS.Orden_compra.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal ON CANDI_DATOS.BI_dim_sucursal.c_sucursal = CANDI_DATOS.Orden_compra.c_sucursal
	GROUP BY Item_autoparte_compra.c_autoparte, Orden_compra.c_cliente, Orden_compra.c_sucursal, c_tiempo, CANDI_DATOS.Item_autoparte_compra.n_importe, Orden_compra.n_importe_total  

	INSERT INTO CANDI_DATOS.BI_hechos_compra_venta_autoparte(c_autoparte, c_cliente, c_sucursal, c_tiempo, n_cantidad, n_importe, n_importe_total)
	SELECT DISTINCT Item_autoparte_venta.c_autoparte, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, BI_dim_tiempo.c_tiempo, SUM(CANDI_DATOS.Item_autoparte_venta.n_cantidad), CANDI_DATOS.Item_autoparte_venta.n_importe, Factura_Venta.n_importe_total  
	FROM CANDI_DATOS.Factura_Venta 
	JOIN CANDI_DATOS.Item_autoparte_venta ON CANDI_DATOS.Item_autoparte_venta.c_venta = CANDI_DATOS.Factura_Venta.c_venta
	JOIN CANDI_DATOS.BI_dim_autoparte ON CANDI_DATOS.BI_dim_autoparte.c_autoparte = CANDI_DATOS.Item_autoparte_venta.c_autoparte
	JOIN CANDI_DATOS.BI_dim_tiempo ON YEAR(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo.anio AND MONTH(CANDI_DATOS.Factura_Venta.f_fecha_fact) = CANDI_DATOS.BI_dim_tiempo.mes
	JOIN CANDI_DATOS.BI_dim_cliente_autoparte ON CANDI_DATOS.BI_dim_cliente_autoparte.c_cliente = CANDI_DATOS.Factura_Venta.c_cliente 
	JOIN CANDI_DATOS.BI_dim_sucursal ON CANDI_DATOS.BI_dim_sucursal.c_sucursal = CANDI_DATOS.Factura_Venta.c_sucursal
	GROUP BY  Item_autoparte_venta.c_autoparte, Factura_Venta.c_cliente, Factura_Venta.c_sucursal, c_tiempo, CANDI_DATOS.Item_autoparte_venta.n_importe, Factura_Venta.n_importe_total   

END

GO

EXEC CANDI_DATOS.bi_cliente_autoparte
EXEC CANDI_DATOS.bi_cliente_automovil
EXEC CANDI_DATOS.bi_automovil
EXEC CANDI_DATOS.bi_autoparte
EXEC CANDI_DATOS.bi_sucursal
EXEC CANDI_DATOS.bi_tiempo
EXEC CANDI_DATOS.bi_hechos_automovil
EXEC CANDI_DATOS.bi_hechos_autoparte

/*
DROP PROCEDURE CANDI_DATOS.bi_automovil
DROP PROCEDURE CANDI_DATOS.bi_autoparte
DROP PROCEDURE CANDI_DATOS.bi_cliente_automovil
DROP PROCEDURE CANDI_DATOS.bi_cliente_autoparte
DROP PROCEDURE CANDI_DATOS.bi_sucursal
DROP PROCEDURE CANDI_DATOS.bi_tiempo
DROP PROCEDURE CANDI_DATOS.bi_hechos_automovil
DROP PROCEDURE CANDI_DATOS.bi_hechos_autoparte

DROP TABLE CANDI_DATOS.BI_hechos_compra_venta_autoparte
DROP TABLE CANDI_DATOS.BI_hechos_compra_venta_automovil
DROP TABLE CANDI_DATOS.BI_dim_automovil
DROP TABLE CANDI_DATOS.BI_dim_cliente
DROP TABLE CANDI_DATOS.BI_dim_autoparte
DROP TABLE CANDI_DATOS.BI_dim_sucursal
DROP TABLE CANDI_DATOS.BI_dim_tiempo*/

/*
SELECT * FROM CANDI_DATOS.BI_dim_automovil
SELECT * FROM CANDI_DATOS.BI_dim_autoparte
SELECT * FROM CANDI_DATOS.BI_dim_cliente_automovil
SELECT * FROM CANDI_DATOS.BI_dim_cliente_autoparte
SELECT * FROM CANDI_DATOS.BI_dim_sucursal
SELECT * FROM CANDI_DATOS.BI_dim_tiempo
SELECT * FROM CANDI_DATOS.BI_hechos_compra_venta_automovil
SELECT * FROM CANDI_DATOS.BI_hechos_compra_venta_autoparte*/