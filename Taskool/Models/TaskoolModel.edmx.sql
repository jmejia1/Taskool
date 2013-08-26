
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 08/26/2013 14:49:40
-- Generated from EDMX file: C:\Users\jonattanmej\Documents\Visual Studio 2012\Projects\Taskool\Taskool\Models\TaskoolModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-WebApplication1-20130626150052];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Asignacion_Archivo_Asignacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignacion_Archivo] DROP CONSTRAINT [FK_Asignacion_Archivo_Asignacion];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignacion_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignacion] DROP CONSTRAINT [FK_Asignacion_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignacion_TipoAsignacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignacion] DROP CONSTRAINT [FK_Asignacion_TipoAsignacion];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignacion_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignacion] DROP CONSTRAINT [FK_Asignacion_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Grado_Categoria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grado] DROP CONSTRAINT [FK_Grado_Categoria];
GO
IF OBJECT_ID(N'[dbo].[FK_Institucion_Ciudad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Institucion] DROP CONSTRAINT [FK_Institucion_Ciudad];
GO
IF OBJECT_ID(N'[dbo].[FK_Comunicado_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comunicado] DROP CONSTRAINT [FK_Comunicado_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Comunicado_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comunicado] DROP CONSTRAINT [FK_Comunicado_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Grado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Grado];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_GradoN]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_GradoN];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Evaluacion_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Evaluacion] DROP CONSTRAINT [FK_Grupo_Evaluacion_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Institucion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo] DROP CONSTRAINT [FK_Grupo_Institucion];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Restriccion_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Restriccion] DROP CONSTRAINT [FK_Grupo_Restriccion_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Restriccion_Tipo_Restriccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Restriccion] DROP CONSTRAINT [FK_Grupo_Restriccion_Tipo_Restriccion];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Restriccion_TipoAsignacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Restriccion] DROP CONSTRAINT [FK_Grupo_Restriccion_TipoAsignacion];
GO
IF OBJECT_ID(N'[dbo].[FK_Usuario_Institucion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_Institucion];
GO
IF OBJECT_ID(N'[dbo].[FK_Usuario_Perfil]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_Perfil];
GO
IF OBJECT_ID(N'[dbo].[FK_Usuario_Grupo_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuario_Grupo] DROP CONSTRAINT [FK_Usuario_Grupo_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Usuario_Grupo_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Usuario_Grupo] DROP CONSTRAINT [FK_Usuario_Grupo_Usuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Asignacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignacion];
GO
IF OBJECT_ID(N'[dbo].[Asignacion_Archivo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignacion_Archivo];
GO
IF OBJECT_ID(N'[dbo].[Asignatura]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignatura];
GO
IF OBJECT_ID(N'[dbo].[Calendario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Calendario];
GO
IF OBJECT_ID(N'[dbo].[Categoria]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categoria];
GO
IF OBJECT_ID(N'[dbo].[Ciudad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ciudad];
GO
IF OBJECT_ID(N'[dbo].[Comunicado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Comunicado];
GO
IF OBJECT_ID(N'[dbo].[Grado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grado];
GO
IF OBJECT_ID(N'[dbo].[GradoN]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GradoN];
GO
IF OBJECT_ID(N'[dbo].[Grupo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupo];
GO
IF OBJECT_ID(N'[dbo].[Grupo_Evaluacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupo_Evaluacion];
GO
IF OBJECT_ID(N'[dbo].[Grupo_Restriccion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupo_Restriccion];
GO
IF OBJECT_ID(N'[dbo].[Institucion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Institucion];
GO
IF OBJECT_ID(N'[dbo].[Perfil]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Perfil];
GO
IF OBJECT_ID(N'[dbo].[Tipo_Restriccion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tipo_Restriccion];
GO
IF OBJECT_ID(N'[dbo].[TipoAsignacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoAsignacion];
GO
IF OBJECT_ID(N'[dbo].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario];
GO
IF OBJECT_ID(N'[dbo].[Usuario_Grupo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario_Grupo];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Asignacion'
CREATE TABLE [dbo].[Asignacion] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idGrupo] int  NOT NULL,
    [idUsuarioAsignacion] int  NOT NULL,
    [titulo] varchar(200)  NOT NULL,
    [detalle] varchar(2000)  NULL,
    [idAsignatura] int  NOT NULL,
    [fechaAsignacion] datetime  NOT NULL,
    [fechaEntrega] datetime  NOT NULL,
    [idTipoAsignacion] smallint  NOT NULL,
    [fechaRegistro] datetime  NOT NULL,
    [estadoAsignacion] tinyint  NOT NULL,
    [fechaModificacion] datetime  NULL,
    [fechaEliminacion] datetime  NULL
);
GO

-- Creating table 'Asignacion_Archivo'
CREATE TABLE [dbo].[Asignacion_Archivo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idAsignacion] int  NOT NULL,
    [nombreArchivo] varchar(200)  NOT NULL,
    [pathArchivo] varchar(300)  NOT NULL,
    [numDescargas] int  NOT NULL,
    [fechaRegistro] datetime  NOT NULL,
    [estadoArchivo] tinyint  NOT NULL,
    [fechaEliminacion] datetime  NULL
);
GO

-- Creating table 'Asignatura'
CREATE TABLE [dbo].[Asignatura] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreAsignatura] varchar(100)  NOT NULL
);
GO

-- Creating table 'Calendario'
CREATE TABLE [dbo].[Calendario] (
    [fecha] datetime  NOT NULL,
    [tipoDia] varchar(1)  NOT NULL
);
GO

-- Creating table 'Categoria'
CREATE TABLE [dbo].[Categoria] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreCategoria] varchar(50)  NOT NULL
);
GO

-- Creating table 'Ciudad'
CREATE TABLE [dbo].[Ciudad] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreCiudad] varchar(100)  NOT NULL
);
GO

-- Creating table 'Comunicado'
CREATE TABLE [dbo].[Comunicado] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idUsuarioComunicado] int  NOT NULL,
    [idGrupo] int  NOT NULL,
    [fechaComunicado] datetime  NOT NULL,
    [fechaVigencia] datetime  NOT NULL,
    [titulo] varchar(200)  NOT NULL,
    [urlImagen] varchar(300)  NULL,
    [url1] varchar(300)  NULL,
    [url2] varchar(300)  NULL,
    [detalle] varchar(2000)  NULL,
    [estadoComunicado] tinyint  NOT NULL,
    [fechaRegistro] datetime  NOT NULL
);
GO

-- Creating table 'Grado'
CREATE TABLE [dbo].[Grado] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreGrado] varchar(100)  NOT NULL,
    [idCategoria] int  NOT NULL
);
GO

-- Creating table 'GradoN'
CREATE TABLE [dbo].[GradoN] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreGradoN] varchar(50)  NOT NULL
);
GO

-- Creating table 'Grupo'
CREATE TABLE [dbo].[Grupo] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idInstitucion] int  NOT NULL,
    [idGrado] int  NOT NULL,
    [idGradoN] int  NOT NULL,
    [estadoGrupo] tinyint  NOT NULL,
    [urlImagen] varchar(300)  NULL,
    [ordenCategoria] int  NOT NULL
);
GO

-- Creating table 'Grupo_Evaluacion'
CREATE TABLE [dbo].[Grupo_Evaluacion] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idGrupo] int  NOT NULL,
    [fechaInicial] datetime  NOT NULL,
    [fechaFinal] datetime  NOT NULL
);
GO

-- Creating table 'Grupo_Restriccion'
CREATE TABLE [dbo].[Grupo_Restriccion] (
    [idGrupo] int  NOT NULL,
    [idTipoAsignacion] smallint  NOT NULL,
    [idTipoRestriccion] smallint  NOT NULL,
    [numMaximoDia] smallint  NOT NULL
);
GO

-- Creating table 'Institucion'
CREATE TABLE [dbo].[Institucion] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nit] varchar(20)  NOT NULL,
    [razonSocial] varchar(100)  NOT NULL,
    [direccion] varchar(100)  NULL,
    [telefono1] varchar(30)  NULL,
    [telefono2] varchar(30)  NULL,
    [idCiudad] int  NOT NULL,
    [estadoInstitucion] tinyint  NOT NULL,
    [fechaRegistro] datetime  NOT NULL
);
GO

-- Creating table 'Perfil'
CREATE TABLE [dbo].[Perfil] (
    [id] tinyint  NOT NULL,
    [nombrePerfil] varchar(50)  NOT NULL
);
GO

-- Creating table 'Tipo_Restriccion'
CREATE TABLE [dbo].[Tipo_Restriccion] (
    [id] smallint IDENTITY(1,1) NOT NULL,
    [nombreTipoRestriccion] varchar(100)  NOT NULL
);
GO

-- Creating table 'TipoAsignacion'
CREATE TABLE [dbo].[TipoAsignacion] (
    [id] smallint  NOT NULL,
    [nombreTipoAsignacion] varchar(100)  NOT NULL,
    [numMaximoDia] smallint  NOT NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idInstitucion] int  NOT NULL,
    [nombreUsuario] varchar(100)  NOT NULL,
    [idPerfil] tinyint  NOT NULL,
    [email] varchar(100)  NOT NULL,
    [password] varchar(30)  NOT NULL,
    [estadoUsuario] tinyint  NOT NULL,
    [fechaRegistro] datetime  NOT NULL
);
GO

-- Creating table 'Usuario_Grupo'
CREATE TABLE [dbo].[Usuario_Grupo] (
    [Grupo_id] int  NOT NULL,
    [Usuario_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Asignacion'
ALTER TABLE [dbo].[Asignacion]
ADD CONSTRAINT [PK_Asignacion]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Asignacion_Archivo'
ALTER TABLE [dbo].[Asignacion_Archivo]
ADD CONSTRAINT [PK_Asignacion_Archivo]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Asignatura'
ALTER TABLE [dbo].[Asignatura]
ADD CONSTRAINT [PK_Asignatura]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [fecha] in table 'Calendario'
ALTER TABLE [dbo].[Calendario]
ADD CONSTRAINT [PK_Calendario]
    PRIMARY KEY CLUSTERED ([fecha] ASC);
GO

-- Creating primary key on [id] in table 'Categoria'
ALTER TABLE [dbo].[Categoria]
ADD CONSTRAINT [PK_Categoria]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Ciudad'
ALTER TABLE [dbo].[Ciudad]
ADD CONSTRAINT [PK_Ciudad]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Comunicado'
ALTER TABLE [dbo].[Comunicado]
ADD CONSTRAINT [PK_Comunicado]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grado'
ALTER TABLE [dbo].[Grado]
ADD CONSTRAINT [PK_Grado]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'GradoN'
ALTER TABLE [dbo].[GradoN]
ADD CONSTRAINT [PK_GradoN]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grupo'
ALTER TABLE [dbo].[Grupo]
ADD CONSTRAINT [PK_Grupo]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grupo_Evaluacion'
ALTER TABLE [dbo].[Grupo_Evaluacion]
ADD CONSTRAINT [PK_Grupo_Evaluacion]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [idGrupo], [idTipoAsignacion], [idTipoRestriccion] in table 'Grupo_Restriccion'
ALTER TABLE [dbo].[Grupo_Restriccion]
ADD CONSTRAINT [PK_Grupo_Restriccion]
    PRIMARY KEY CLUSTERED ([idGrupo], [idTipoAsignacion], [idTipoRestriccion] ASC);
GO

-- Creating primary key on [id] in table 'Institucion'
ALTER TABLE [dbo].[Institucion]
ADD CONSTRAINT [PK_Institucion]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Perfil'
ALTER TABLE [dbo].[Perfil]
ADD CONSTRAINT [PK_Perfil]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Tipo_Restriccion'
ALTER TABLE [dbo].[Tipo_Restriccion]
ADD CONSTRAINT [PK_Tipo_Restriccion]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'TipoAsignacion'
ALTER TABLE [dbo].[TipoAsignacion]
ADD CONSTRAINT [PK_TipoAsignacion]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Grupo_id], [Usuario_id] in table 'Usuario_Grupo'
ALTER TABLE [dbo].[Usuario_Grupo]
ADD CONSTRAINT [PK_Usuario_Grupo]
    PRIMARY KEY NONCLUSTERED ([Grupo_id], [Usuario_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [idAsignacion] in table 'Asignacion_Archivo'
ALTER TABLE [dbo].[Asignacion_Archivo]
ADD CONSTRAINT [FK_Asignacion_Archivo_Asignacion]
    FOREIGN KEY ([idAsignacion])
    REFERENCES [dbo].[Asignacion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_Archivo_Asignacion'
CREATE INDEX [IX_FK_Asignacion_Archivo_Asignacion]
ON [dbo].[Asignacion_Archivo]
    ([idAsignacion]);
GO

-- Creating foreign key on [idGrupo] in table 'Asignacion'
ALTER TABLE [dbo].[Asignacion]
ADD CONSTRAINT [FK_Asignacion_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_Grupo'
CREATE INDEX [IX_FK_Asignacion_Grupo]
ON [dbo].[Asignacion]
    ([idGrupo]);
GO

-- Creating foreign key on [idTipoAsignacion] in table 'Asignacion'
ALTER TABLE [dbo].[Asignacion]
ADD CONSTRAINT [FK_Asignacion_TipoAsignacion]
    FOREIGN KEY ([idTipoAsignacion])
    REFERENCES [dbo].[TipoAsignacion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_TipoAsignacion'
CREATE INDEX [IX_FK_Asignacion_TipoAsignacion]
ON [dbo].[Asignacion]
    ([idTipoAsignacion]);
GO

-- Creating foreign key on [idUsuarioAsignacion] in table 'Asignacion'
ALTER TABLE [dbo].[Asignacion]
ADD CONSTRAINT [FK_Asignacion_Usuario]
    FOREIGN KEY ([idUsuarioAsignacion])
    REFERENCES [dbo].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_Usuario'
CREATE INDEX [IX_FK_Asignacion_Usuario]
ON [dbo].[Asignacion]
    ([idUsuarioAsignacion]);
GO

-- Creating foreign key on [idCategoria] in table 'Grado'
ALTER TABLE [dbo].[Grado]
ADD CONSTRAINT [FK_Grado_Categoria]
    FOREIGN KEY ([idCategoria])
    REFERENCES [dbo].[Categoria]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grado_Categoria'
CREATE INDEX [IX_FK_Grado_Categoria]
ON [dbo].[Grado]
    ([idCategoria]);
GO

-- Creating foreign key on [idCiudad] in table 'Institucion'
ALTER TABLE [dbo].[Institucion]
ADD CONSTRAINT [FK_Institucion_Ciudad]
    FOREIGN KEY ([idCiudad])
    REFERENCES [dbo].[Ciudad]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Institucion_Ciudad'
CREATE INDEX [IX_FK_Institucion_Ciudad]
ON [dbo].[Institucion]
    ([idCiudad]);
GO

-- Creating foreign key on [idGrupo] in table 'Comunicado'
ALTER TABLE [dbo].[Comunicado]
ADD CONSTRAINT [FK_Comunicado_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Comunicado_Grupo'
CREATE INDEX [IX_FK_Comunicado_Grupo]
ON [dbo].[Comunicado]
    ([idGrupo]);
GO

-- Creating foreign key on [idUsuarioComunicado] in table 'Comunicado'
ALTER TABLE [dbo].[Comunicado]
ADD CONSTRAINT [FK_Comunicado_Usuario]
    FOREIGN KEY ([idUsuarioComunicado])
    REFERENCES [dbo].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Comunicado_Usuario'
CREATE INDEX [IX_FK_Comunicado_Usuario]
ON [dbo].[Comunicado]
    ([idUsuarioComunicado]);
GO

-- Creating foreign key on [idGrado] in table 'Grupo'
ALTER TABLE [dbo].[Grupo]
ADD CONSTRAINT [FK_Grupo_Grado]
    FOREIGN KEY ([idGrado])
    REFERENCES [dbo].[Grado]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Grado'
CREATE INDEX [IX_FK_Grupo_Grado]
ON [dbo].[Grupo]
    ([idGrado]);
GO

-- Creating foreign key on [idGradoN] in table 'Grupo'
ALTER TABLE [dbo].[Grupo]
ADD CONSTRAINT [FK_Grupo_GradoN]
    FOREIGN KEY ([idGradoN])
    REFERENCES [dbo].[GradoN]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_GradoN'
CREATE INDEX [IX_FK_Grupo_GradoN]
ON [dbo].[Grupo]
    ([idGradoN]);
GO

-- Creating foreign key on [idGrupo] in table 'Grupo_Evaluacion'
ALTER TABLE [dbo].[Grupo_Evaluacion]
ADD CONSTRAINT [FK_Grupo_Evaluacion_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Evaluacion_Grupo'
CREATE INDEX [IX_FK_Grupo_Evaluacion_Grupo]
ON [dbo].[Grupo_Evaluacion]
    ([idGrupo]);
GO

-- Creating foreign key on [idInstitucion] in table 'Grupo'
ALTER TABLE [dbo].[Grupo]
ADD CONSTRAINT [FK_Grupo_Institucion]
    FOREIGN KEY ([idInstitucion])
    REFERENCES [dbo].[Institucion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Institucion'
CREATE INDEX [IX_FK_Grupo_Institucion]
ON [dbo].[Grupo]
    ([idInstitucion]);
GO

-- Creating foreign key on [idGrupo] in table 'Grupo_Restriccion'
ALTER TABLE [dbo].[Grupo_Restriccion]
ADD CONSTRAINT [FK_Grupo_Restriccion_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idTipoRestriccion] in table 'Grupo_Restriccion'
ALTER TABLE [dbo].[Grupo_Restriccion]
ADD CONSTRAINT [FK_Grupo_Restriccion_Tipo_Restriccion]
    FOREIGN KEY ([idTipoRestriccion])
    REFERENCES [dbo].[Tipo_Restriccion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Restriccion_Tipo_Restriccion'
CREATE INDEX [IX_FK_Grupo_Restriccion_Tipo_Restriccion]
ON [dbo].[Grupo_Restriccion]
    ([idTipoRestriccion]);
GO

-- Creating foreign key on [idTipoAsignacion] in table 'Grupo_Restriccion'
ALTER TABLE [dbo].[Grupo_Restriccion]
ADD CONSTRAINT [FK_Grupo_Restriccion_TipoAsignacion]
    FOREIGN KEY ([idTipoAsignacion])
    REFERENCES [dbo].[TipoAsignacion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Restriccion_TipoAsignacion'
CREATE INDEX [IX_FK_Grupo_Restriccion_TipoAsignacion]
ON [dbo].[Grupo_Restriccion]
    ([idTipoAsignacion]);
GO

-- Creating foreign key on [idInstitucion] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [FK_Usuario_Institucion]
    FOREIGN KEY ([idInstitucion])
    REFERENCES [dbo].[Institucion]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Usuario_Institucion'
CREATE INDEX [IX_FK_Usuario_Institucion]
ON [dbo].[Usuario]
    ([idInstitucion]);
GO

-- Creating foreign key on [idPerfil] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [FK_Usuario_Perfil]
    FOREIGN KEY ([idPerfil])
    REFERENCES [dbo].[Perfil]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Usuario_Perfil'
CREATE INDEX [IX_FK_Usuario_Perfil]
ON [dbo].[Usuario]
    ([idPerfil]);
GO

-- Creating foreign key on [Grupo_id] in table 'Usuario_Grupo'
ALTER TABLE [dbo].[Usuario_Grupo]
ADD CONSTRAINT [FK_Usuario_Grupo_Grupo]
    FOREIGN KEY ([Grupo_id])
    REFERENCES [dbo].[Grupo]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Usuario_id] in table 'Usuario_Grupo'
ALTER TABLE [dbo].[Usuario_Grupo]
ADD CONSTRAINT [FK_Usuario_Grupo_Usuario]
    FOREIGN KEY ([Usuario_id])
    REFERENCES [dbo].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Usuario_Grupo_Usuario'
CREATE INDEX [IX_FK_Usuario_Grupo_Usuario]
ON [dbo].[Usuario_Grupo]
    ([Usuario_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------