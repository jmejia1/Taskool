﻿//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Taskool.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TareasEntities : DbContext
    {
        public TareasEntities()
            : base("name=TareasEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Asignacion> Asignaciones { get; set; }
        public DbSet<Asignacion_Archivo> Asignacion_Archivos { get; set; }
        public DbSet<Asignatura> Asignaturas { get; set; }
        public DbSet<Calendario> Calendarios { get; set; }
        public DbSet<Categoria> Categorias { get; set; }
        public DbSet<Ciudad> Ciudades { get; set; }
        public DbSet<Comunicado> Comunicados { get; set; }
        public DbSet<Grado> Grados { get; set; }
        public DbSet<GradoN> GradoNs { get; set; }
        public DbSet<Grupo> Grupos { get; set; }
        public DbSet<Grupo_Evaluacion> Grupo_Evaluacions { get; set; }
        public DbSet<Grupo_Restriccion> Grupo_Restricciones { get; set; }
        public DbSet<Institucion> Instituciones { get; set; }
        public DbSet<Tipo_Restriccion> Tipo_Restricciones { get; set; }
        public DbSet<TipoAsignacion> TipoAsignaciones { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
    }
}
