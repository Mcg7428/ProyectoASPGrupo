USE [master]
GO

/****** Object:  Database [BD_MantenimientoASP]    Script Date: 07/03/2013 00:01:48 ******/
CREATE DATABASE [BD_MantenimientoASP] ON  PRIMARY 
( NAME = N'BD_MantenimientoASP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BD_MantenimientoASP.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_MantenimientoASP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BD_MantenimientoASP_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [BD_MantenimientoASP] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_MantenimientoASP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BD_MantenimientoASP] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET ARITHABORT OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [BD_MantenimientoASP] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BD_MantenimientoASP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BD_MantenimientoASP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET  DISABLE_BROKER 
GO

ALTER DATABASE [BD_MantenimientoASP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BD_MantenimientoASP] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BD_MantenimientoASP] SET  READ_WRITE 
GO

ALTER DATABASE [BD_MantenimientoASP] SET RECOVERY FULL 
GO

ALTER DATABASE [BD_MantenimientoASP] SET  MULTI_USER 
GO

ALTER DATABASE [BD_MantenimientoASP] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BD_MantenimientoASP] SET DB_CHAINING OFF 
GO







USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Control_Sesion]    Script Date: 07/03/2013 00:00:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Control_Sesion](
	[ID_ENTRADA] [int] IDENTITY(1,1) NOT NULL,
	[ID_USUARIO_RS] [varchar](20) NOT NULL,
	[ID_CARGO_RS] [varchar](20) NOT NULL,
	[ID_DEPTO_SALA_LAB] [varchar](20) NULL,
	[FECHA_HORA] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ENTRADA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Edificio]    Script Date: 07/03/2013 00:03:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Edificio](
	[ID_EDIFICIO] [varchar](20) NOT NULL,
	[NOMBRE] [varchar](100) NULL,
	[UBICACION] [varchar](max) NULL,
	[DESCRIPCIO] [varchar](max) NULL,
 CONSTRAINT [PK_Edificio] PRIMARY KEY CLUSTERED 
(
	[ID_EDIFICIO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Departamento]    Script Date: 07/03/2013 00:04:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Departamento](
	[ID_DEPTO] [varchar](20) NOT NULL,
	[ID_EDIFICIO_D] [varchar](20) NULL,
	[NOMBRE_DEPTO] [varchar](max) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[ID_DEPTO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Edificio] FOREIGN KEY([ID_EDIFICIO_D])
REFERENCES [dbo].[Edificio] ([ID_EDIFICIO])
GO

ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Edificio]
GO





USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Laboratorio]    Script Date: 07/03/2013 00:06:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Laboratorio](
	[ID_LAB] [varchar](20) NOT NULL,
	[ID_DEPTO_L] [varchar](20) NOT NULL,
	[NOMBRE_LABORATORIO] [varchar](max) NULL,
 CONSTRAINT [PK_Laboratorio] PRIMARY KEY CLUSTERED 
(
	[ID_LAB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Laboratorio]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorio_Departamento] FOREIGN KEY([ID_DEPTO_L])
REFERENCES [dbo].[Departamento] ([ID_DEPTO])
GO

ALTER TABLE [dbo].[Laboratorio] CHECK CONSTRAINT [FK_Laboratorio_Departamento]
GO


USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Sala]    Script Date: 07/03/2013 00:06:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Sala](
	[ID_SALA] [varchar](20) NOT NULL,
	[ID_DEPTO_S] [varchar](20) NULL,
	[NOMBRE_SALA] [varchar](max) NULL,
 CONSTRAINT [PK_Sala] PRIMARY KEY CLUSTERED 
(
	[ID_SALA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [FK_Sala_Departamento] FOREIGN KEY([ID_DEPTO_S])
REFERENCES [dbo].[Departamento] ([ID_DEPTO])
GO

ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [FK_Sala_Departamento]
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 07/03/2013 00:07:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Usuario](
	[ID_USUARIO] [varchar](20) NOT NULL,
	[NOMBRE] [varchar](max) NULL,
	[CARGO] [varchar](50) NULL,
	[DEPARTAMENTO] [varchar](20) NULL,
	[USUARIO] [varchar](30) NULL,
	[CLAVE] [varchar](30) NULL,
	[PREGUNTA_SECRETA] [varchar](max) NULL,
	[RESPUESTA_SECRETA] [varchar](max) NULL,
	[EMAIL] [varchar](100) NULL,
	[correlativo] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[SubTarea_Independiente]    Script Date: 07/03/2013 00:08:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SubTarea_Independiente](
	[DESCRIPCION] [varchar](max) NULL,
	[ID_SubTarea_Independ] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SubTarea_Independ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Tarea_Individual]    Script Date: 07/03/2013 00:10:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tarea_Individual](
	[NOMBRE_TAREA_IDN] [varchar](max) NULL,
	[NUM_SUBT_IND] [numeric](18, 0) NULL,
	[ID_TAREA_IND] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TAREA_IND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[SubTarea_Individual]    Script Date: 07/03/2013 00:11:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SubTarea_Individual](
	[ID_SUBTAREA_IND] [varchar](20) NOT NULL,
	[ID_TAREA_STIND] [int] NOT NULL,
	[DESCRIPCION] [varchar](max) NULL,
 CONSTRAINT [PK_SubTarea_Individual] PRIMARY KEY CLUSTERED 
(
	[ID_SUBTAREA_IND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[SubTarea_Individual]  WITH CHECK ADD  CONSTRAINT [FK_SubTarea_Individual_Tarea_Individual] FOREIGN KEY([ID_TAREA_STIND])
REFERENCES [dbo].[Tarea_Individual] ([ID_TAREA_IND])
GO

ALTER TABLE [dbo].[SubTarea_Individual] CHECK CONSTRAINT [FK_SubTarea_Individual_Tarea_Individual]
GO



USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 07/03/2013 00:14:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Mantenimiento](
	[ID_MANTENIMIENTO] [varchar](20) NOT NULL,
	[NOMBRE] [varchar](20) NULL,
	[NUM_TAREAS] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[ID_MANTENIMIENTO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Tarea]    Script Date: 07/03/2013 00:14:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tarea](
	[ID_TAREA] [varchar](20) NOT NULL,
	[ID_MANTE_T] [varchar](20) NULL,
	[NOMBRE_TAREA] [varchar](max) NULL,
	[NUM_SUBTAR] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Tarea] PRIMARY KEY CLUSTERED 
(
	[ID_TAREA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Tarea]  WITH CHECK ADD  CONSTRAINT [FK_Tarea_Mantenimiento] FOREIGN KEY([ID_MANTE_T])
REFERENCES [dbo].[Mantenimiento] ([ID_MANTENIMIENTO])
GO

ALTER TABLE [dbo].[Tarea] CHECK CONSTRAINT [FK_Tarea_Mantenimiento]
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[SubTarea]    Script Date: 07/03/2013 00:15:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SubTarea](
	[ID_SUBTAREA] [varchar](20) NOT NULL,
	[ID_TAREA_ST] [varchar](20) NULL,
	[DESCRIPCION] [varchar](max) NULL,
 CONSTRAINT [PK_SubTarea] PRIMARY KEY CLUSTERED 
(
	[ID_SUBTAREA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[SubTarea]  WITH CHECK ADD  CONSTRAINT [FK_SubTarea_Tarea] FOREIGN KEY([ID_TAREA_ST])
REFERENCES [dbo].[Tarea] ([ID_TAREA])
GO

ALTER TABLE [dbo].[SubTarea] CHECK CONSTRAINT [FK_SubTarea_Tarea]
GO






USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[REGISTRO_MATENIMIENTO]    Script Date: 07/03/2013 00:15:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[REGISTRO_MATENIMIENTO](
	[ID_REGISTRO_AVANCE] [varchar](20) NOT NULL,
	[ID_MANT_R] [varchar](20) NOT NULL,
	[ID_CREADOR_MANTE] [varchar](20) NOT NULL,
	[ID_SALA_LAB_EQUIP] [varchar](20) NOT NULL,
	[FECHA_INICIO] [date] NOT NULL,
	[FECHA_FIN] [date] NOT NULL,
	[ESTADO] [varchar](30) NOT NULL,
	[ID_USER_AUTORIZA] [varchar](20) NOT NULL,
	[PERSONAL_ASIGNADO] [varchar](max) NULL,
	[OBSERVACIONES] [varchar](max) NULL,
	[NUM_TAR] [int] NULL,
	[NUM_TAR_CUMPLI] [int] NULL,
	[CORRELA] [int] NULL,
 CONSTRAINT [PK_REGISTRO_MATENIMIENTO] PRIMARY KEY CLUSTERED 
(
	[ID_REGISTRO_AVANCE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Reg_Avan_Tarea]    Script Date: 07/03/2013 00:16:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Reg_Avan_Tarea](
	[ID_AVAN_TAR] [varchar](20) NOT NULL,
	[ID_AVAN_MANTE_T] [varchar](20) NOT NULL,
	[FECHA_INICIO] [date] NOT NULL,
	[FECHA_FIN] [date] NOT NULL,
	[NUM_SUBTAREA] [numeric](18, 0) NOT NULL,
	[SUBTAR_CUMPLIDAS] [numeric](18, 0) NOT NULL,
	[ESTADO] [varchar](30) NOT NULL,
	[id_tar_proceso] [varchar](20) NULL,
 CONSTRAINT [PK_Reg_Avan_Tarea] PRIMARY KEY CLUSTERED 
(
	[ID_AVAN_TAR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Reg_Avan_Tarea]  WITH CHECK ADD  CONSTRAINT [FK_Reg_Avan_Tarea_REGISTRO_MATENIMIENTO] FOREIGN KEY([ID_AVAN_MANTE_T])
REFERENCES [dbo].[REGISTRO_MATENIMIENTO] ([ID_REGISTRO_AVANCE])
GO

ALTER TABLE [dbo].[Reg_Avan_Tarea] CHECK CONSTRAINT [FK_Reg_Avan_Tarea_REGISTRO_MATENIMIENTO]
GO


USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Registro_Avance_Subtarea]    Script Date: 07/03/2013 00:17:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Registro_Avance_Subtarea](
	[ID_REG_AVAN_SUBTAR] [varchar](20) NOT NULL,
	[ID_REG_TAR_ST] [varchar](20) NULL,
	[FECHA_INICIO] [date] NULL,
	[FECHA_FIN] [date] NULL,
	[ESTADO] [varchar](50) NULL,
	[id_subtar_proceso] [varchar](20) NULL,
 CONSTRAINT [PK_Registro_Avance_Subtarea] PRIMARY KEY CLUSTERED 
(
	[ID_REG_AVAN_SUBTAR] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Registro_Avance_Subtarea]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Avance_Subtarea_Reg_Avan_Tarea] FOREIGN KEY([ID_REG_TAR_ST])
REFERENCES [dbo].[Reg_Avan_Tarea] ([ID_AVAN_TAR])
GO

ALTER TABLE [dbo].[Registro_Avance_Subtarea] CHECK CONSTRAINT [FK_Registro_Avance_Subtarea_Reg_Avan_Tarea]
GO




USE [BD_MantenimientoASP]
GO

/****** Object:  Table [dbo].[Equipos]    Script Date: 07/03/2013 00:21:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Equipos](
	[ID_EQUIPO] [varchar](20) NOT NULL,
	[FABRICANTE] [varchar](50) NOT NULL,
	[ID_SAL_LAB] [varchar](20) NOT NULL,
	[OBSERVACIONES] [varchar](max) NOT NULL,
	[coeq] [int] NULL,
	[TIPO_EQUIPO] [varchar](50) NULL,
	[ESTADO] [varchar](50) NULL,
	[ESPECIFIC_TECNI] [varchar](max) NULL,
	[NOMBRE_EQUIPO] [varchar](max) NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[ID_EQUIPO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


