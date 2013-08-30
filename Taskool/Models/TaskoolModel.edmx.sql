
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 08/30/2013 11:05:39
-- Generated from EDMX file: D:\Datos\Personales\GitHub\Taskool\Taskool\Models\TaskoolModel.edmx
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
    ALTER TABLE [dbo].[Asignacion_Archivos] DROP CONSTRAINT [FK_Asignacion_Archivo_Asignacion];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignacion_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignaciones] DROP CONSTRAINT [FK_Asignacion_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignacion_TipoAsignacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignaciones] DROP CONSTRAINT [FK_Asignacion_TipoAsignacion];
GO
IF OBJECT_ID(N'[dbo].[FK_Asignacion_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asignaciones] DROP CONSTRAINT [FK_Asignacion_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Grado_Categoria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grados] DROP CONSTRAINT [FK_Grado_Categoria];
GO
IF OBJECT_ID(N'[dbo].[FK_Institucion_Ciudad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Instituciones] DROP CONSTRAINT [FK_Institucion_Ciudad];
GO
IF OBJECT_ID(N'[dbo].[FK_Comunicado_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comunicados] DROP CONSTRAINT [FK_Comunicado_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Comunicado_Usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comunicados] DROP CONSTRAINT [FK_Comunicado_Usuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Grado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupos] DROP CONSTRAINT [FK_Grupo_Grado];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_GradoN]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupos] DROP CONSTRAINT [FK_Grupo_GradoN];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Evaluacion_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Evaluacions] DROP CONSTRAINT [FK_Grupo_Evaluacion_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Institucion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupos] DROP CONSTRAINT [FK_Grupo_Institucion];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Restriccion_Grupo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Restricciones] DROP CONSTRAINT [FK_Grupo_Restriccion_Grupo];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Restriccion_Tipo_Restriccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Restricciones] DROP CONSTRAINT [FK_Grupo_Restriccion_Tipo_Restriccion];
GO
IF OBJECT_ID(N'[dbo].[FK_Grupo_Restriccion_TipoAsignacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Grupo_Restricciones] DROP CONSTRAINT [FK_Grupo_Restriccion_TipoAsignacion];
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

IF OBJECT_ID(N'[dbo].[Asignaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignaciones];
GO
IF OBJECT_ID(N'[dbo].[Asignacion_Archivos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignacion_Archivos];
GO
IF OBJECT_ID(N'[dbo].[Asignaturas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asignaturas];
GO
IF OBJECT_ID(N'[dbo].[Calendarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Calendarios];
GO
IF OBJECT_ID(N'[dbo].[Categorias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categorias];
GO
IF OBJECT_ID(N'[dbo].[Ciudades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ciudades];
GO
IF OBJECT_ID(N'[dbo].[Comunicados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Comunicados];
GO
IF OBJECT_ID(N'[dbo].[Grados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grados];
GO
IF OBJECT_ID(N'[dbo].[GradoNs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GradoNs];
GO
IF OBJECT_ID(N'[dbo].[Grupos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupos];
GO
IF OBJECT_ID(N'[dbo].[Grupo_Evaluacions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupo_Evaluacions];
GO
IF OBJECT_ID(N'[dbo].[Grupo_Restricciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Grupo_Restricciones];
GO
IF OBJECT_ID(N'[dbo].[Instituciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Instituciones];
GO
IF OBJECT_ID(N'[dbo].[Perfil]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Perfil];
GO
IF OBJECT_ID(N'[dbo].[Tipo_Restricciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tipo_Restricciones];
GO
IF OBJECT_ID(N'[dbo].[TipoAsignaciones]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoAsignaciones];
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

-- Creating table 'Asignaciones'
CREATE TABLE [dbo].[Asignaciones] (
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

-- Creating table 'Asignacion_Archivos'
CREATE TABLE [dbo].[Asignacion_Archivos] (
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

-- Creating table 'Asignaturas'
CREATE TABLE [dbo].[Asignaturas] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreAsignatura] varchar(100)  NOT NULL
);
GO

-- Creating table 'Calendarios'
CREATE TABLE [dbo].[Calendarios] (
    [fecha] datetime  NOT NULL,
    [tipoDia] varchar(1)  NOT NULL,
    [id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Categorias'
CREATE TABLE [dbo].[Categorias] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreCategoria] varchar(50)  NOT NULL
);
GO

-- Creating table 'Ciudades'
CREATE TABLE [dbo].[Ciudades] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreCiudad] varchar(100)  NOT NULL
);
GO

-- Creating table 'Comunicados'
CREATE TABLE [dbo].[Comunicados] (
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

-- Creating table 'Grados'
CREATE TABLE [dbo].[Grados] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreGrado] varchar(100)  NOT NULL,
    [idCategoria] int  NOT NULL
);
GO

-- Creating table 'GradoNs'
CREATE TABLE [dbo].[GradoNs] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombreGradoN] varchar(50)  NOT NULL
);
GO

-- Creating table 'Grupos'
CREATE TABLE [dbo].[Grupos] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idInstitucion] int  NOT NULL,
    [idGrado] int  NOT NULL,
    [idGradoN] int  NOT NULL,
    [estadoGrupo] tinyint  NOT NULL,
    [urlImagen] varchar(300)  NULL,
    [ordenCategoria] int  NOT NULL
);
GO

-- Creating table 'Grupo_Evaluacions'
CREATE TABLE [dbo].[Grupo_Evaluacions] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idGrupo] int  NOT NULL,
    [fechaInicial] datetime  NOT NULL,
    [fechaFinal] datetime  NOT NULL
);
GO

-- Creating table 'Grupo_Restricciones'
CREATE TABLE [dbo].[Grupo_Restricciones] (
    [idGrupo] int  NOT NULL,
    [idTipoAsignacion] smallint  NOT NULL,
    [idTipoRestriccion] smallint  NOT NULL,
    [numMaximoDia] smallint  NOT NULL
);
GO

-- Creating table 'Instituciones'
CREATE TABLE [dbo].[Instituciones] (
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

-- Creating table 'Tipo_Restricciones'
CREATE TABLE [dbo].[Tipo_Restricciones] (
    [id] smallint IDENTITY(1,1) NOT NULL,
    [nombreTipoRestriccion] varchar(100)  NOT NULL
);
GO

-- Creating table 'TipoAsignaciones'
CREATE TABLE [dbo].[TipoAsignaciones] (
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

-- Creating primary key on [id] in table 'Asignaciones'
ALTER TABLE [dbo].[Asignaciones]
ADD CONSTRAINT [PK_Asignaciones]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Asignacion_Archivos'
ALTER TABLE [dbo].[Asignacion_Archivos]
ADD CONSTRAINT [PK_Asignacion_Archivos]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Asignaturas'
ALTER TABLE [dbo].[Asignaturas]
ADD CONSTRAINT [PK_Asignaturas]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Calendarios'
ALTER TABLE [dbo].[Calendarios]
ADD CONSTRAINT [PK_Calendarios]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Categorias'
ALTER TABLE [dbo].[Categorias]
ADD CONSTRAINT [PK_Categorias]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Ciudades'
ALTER TABLE [dbo].[Ciudades]
ADD CONSTRAINT [PK_Ciudades]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Comunicados'
ALTER TABLE [dbo].[Comunicados]
ADD CONSTRAINT [PK_Comunicados]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grados'
ALTER TABLE [dbo].[Grados]
ADD CONSTRAINT [PK_Grados]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'GradoNs'
ALTER TABLE [dbo].[GradoNs]
ADD CONSTRAINT [PK_GradoNs]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [PK_Grupos]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Grupo_Evaluacions'
ALTER TABLE [dbo].[Grupo_Evaluacions]
ADD CONSTRAINT [PK_Grupo_Evaluacions]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [idGrupo], [idTipoAsignacion], [idTipoRestriccion] in table 'Grupo_Restricciones'
ALTER TABLE [dbo].[Grupo_Restricciones]
ADD CONSTRAINT [PK_Grupo_Restricciones]
    PRIMARY KEY CLUSTERED ([idGrupo], [idTipoAsignacion], [idTipoRestriccion] ASC);
GO

-- Creating primary key on [id] in table 'Instituciones'
ALTER TABLE [dbo].[Instituciones]
ADD CONSTRAINT [PK_Instituciones]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Perfil'
ALTER TABLE [dbo].[Perfil]
ADD CONSTRAINT [PK_Perfil]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Tipo_Restricciones'
ALTER TABLE [dbo].[Tipo_Restricciones]
ADD CONSTRAINT [PK_Tipo_Restricciones]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'TipoAsignaciones'
ALTER TABLE [dbo].[TipoAsignaciones]
ADD CONSTRAINT [PK_TipoAsignaciones]
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

-- Creating foreign key on [idAsignacion] in table 'Asignacion_Archivos'
ALTER TABLE [dbo].[Asignacion_Archivos]
ADD CONSTRAINT [FK_Asignacion_Archivo_Asignacion]
    FOREIGN KEY ([idAsignacion])
    REFERENCES [dbo].[Asignaciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_Archivo_Asignacion'
CREATE INDEX [IX_FK_Asignacion_Archivo_Asignacion]
ON [dbo].[Asignacion_Archivos]
    ([idAsignacion]);
GO

-- Creating foreign key on [idGrupo] in table 'Asignaciones'
ALTER TABLE [dbo].[Asignaciones]
ADD CONSTRAINT [FK_Asignacion_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupos]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_Grupo'
CREATE INDEX [IX_FK_Asignacion_Grupo]
ON [dbo].[Asignaciones]
    ([idGrupo]);
GO

-- Creating foreign key on [idTipoAsignacion] in table 'Asignaciones'
ALTER TABLE [dbo].[Asignaciones]
ADD CONSTRAINT [FK_Asignacion_TipoAsignacion]
    FOREIGN KEY ([idTipoAsignacion])
    REFERENCES [dbo].[TipoAsignaciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_TipoAsignacion'
CREATE INDEX [IX_FK_Asignacion_TipoAsignacion]
ON [dbo].[Asignaciones]
    ([idTipoAsignacion]);
GO

-- Creating foreign key on [idUsuarioAsignacion] in table 'Asignaciones'
ALTER TABLE [dbo].[Asignaciones]
ADD CONSTRAINT [FK_Asignacion_Usuario]
    FOREIGN KEY ([idUsuarioAsignacion])
    REFERENCES [dbo].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Asignacion_Usuario'
CREATE INDEX [IX_FK_Asignacion_Usuario]
ON [dbo].[Asignaciones]
    ([idUsuarioAsignacion]);
GO

-- Creating foreign key on [idCategoria] in table 'Grados'
ALTER TABLE [dbo].[Grados]
ADD CONSTRAINT [FK_Grado_Categoria]
    FOREIGN KEY ([idCategoria])
    REFERENCES [dbo].[Categorias]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grado_Categoria'
CREATE INDEX [IX_FK_Grado_Categoria]
ON [dbo].[Grados]
    ([idCategoria]);
GO

-- Creating foreign key on [idCiudad] in table 'Instituciones'
ALTER TABLE [dbo].[Instituciones]
ADD CONSTRAINT [FK_Institucion_Ciudad]
    FOREIGN KEY ([idCiudad])
    REFERENCES [dbo].[Ciudades]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Institucion_Ciudad'
CREATE INDEX [IX_FK_Institucion_Ciudad]
ON [dbo].[Instituciones]
    ([idCiudad]);
GO

-- Creating foreign key on [idGrupo] in table 'Comunicados'
ALTER TABLE [dbo].[Comunicados]
ADD CONSTRAINT [FK_Comunicado_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupos]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Comunicado_Grupo'
CREATE INDEX [IX_FK_Comunicado_Grupo]
ON [dbo].[Comunicados]
    ([idGrupo]);
GO

-- Creating foreign key on [idUsuarioComunicado] in table 'Comunicados'
ALTER TABLE [dbo].[Comunicados]
ADD CONSTRAINT [FK_Comunicado_Usuario]
    FOREIGN KEY ([idUsuarioComunicado])
    REFERENCES [dbo].[Usuario]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Comunicado_Usuario'
CREATE INDEX [IX_FK_Comunicado_Usuario]
ON [dbo].[Comunicados]
    ([idUsuarioComunicado]);
GO

-- Creating foreign key on [idGrado] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [FK_Grupo_Grado]
    FOREIGN KEY ([idGrado])
    REFERENCES [dbo].[Grados]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Grado'
CREATE INDEX [IX_FK_Grupo_Grado]
ON [dbo].[Grupos]
    ([idGrado]);
GO

-- Creating foreign key on [idGradoN] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [FK_Grupo_GradoN]
    FOREIGN KEY ([idGradoN])
    REFERENCES [dbo].[GradoNs]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_GradoN'
CREATE INDEX [IX_FK_Grupo_GradoN]
ON [dbo].[Grupos]
    ([idGradoN]);
GO

-- Creating foreign key on [idGrupo] in table 'Grupo_Evaluacions'
ALTER TABLE [dbo].[Grupo_Evaluacions]
ADD CONSTRAINT [FK_Grupo_Evaluacion_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupos]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Evaluacion_Grupo'
CREATE INDEX [IX_FK_Grupo_Evaluacion_Grupo]
ON [dbo].[Grupo_Evaluacions]
    ([idGrupo]);
GO

-- Creating foreign key on [idInstitucion] in table 'Grupos'
ALTER TABLE [dbo].[Grupos]
ADD CONSTRAINT [FK_Grupo_Institucion]
    FOREIGN KEY ([idInstitucion])
    REFERENCES [dbo].[Instituciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Institucion'
CREATE INDEX [IX_FK_Grupo_Institucion]
ON [dbo].[Grupos]
    ([idInstitucion]);
GO

-- Creating foreign key on [idGrupo] in table 'Grupo_Restricciones'
ALTER TABLE [dbo].[Grupo_Restricciones]
ADD CONSTRAINT [FK_Grupo_Restriccion_Grupo]
    FOREIGN KEY ([idGrupo])
    REFERENCES [dbo].[Grupos]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idTipoRestriccion] in table 'Grupo_Restricciones'
ALTER TABLE [dbo].[Grupo_Restricciones]
ADD CONSTRAINT [FK_Grupo_Restriccion_Tipo_Restriccion]
    FOREIGN KEY ([idTipoRestriccion])
    REFERENCES [dbo].[Tipo_Restricciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Restriccion_Tipo_Restriccion'
CREATE INDEX [IX_FK_Grupo_Restriccion_Tipo_Restriccion]
ON [dbo].[Grupo_Restricciones]
    ([idTipoRestriccion]);
GO

-- Creating foreign key on [idTipoAsignacion] in table 'Grupo_Restricciones'
ALTER TABLE [dbo].[Grupo_Restricciones]
ADD CONSTRAINT [FK_Grupo_Restriccion_TipoAsignacion]
    FOREIGN KEY ([idTipoAsignacion])
    REFERENCES [dbo].[TipoAsignaciones]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Grupo_Restriccion_TipoAsignacion'
CREATE INDEX [IX_FK_Grupo_Restriccion_TipoAsignacion]
ON [dbo].[Grupo_Restricciones]
    ([idTipoAsignacion]);
GO

-- Creating foreign key on [idInstitucion] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [FK_Usuario_Institucion]
    FOREIGN KEY ([idInstitucion])
    REFERENCES [dbo].[Instituciones]
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
    REFERENCES [dbo].[Grupos]
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