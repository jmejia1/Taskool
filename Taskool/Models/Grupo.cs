//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Grupo
    {
        public Grupo()
        {
            this.Asignacion = new HashSet<Asignacion>();
            this.Comunicado = new HashSet<Comunicado>();
            this.Grupo_Evaluacion = new HashSet<Grupo_Evaluacion>();
            this.Grupo_Restriccion = new HashSet<Grupo_Restriccion>();
            this.Usuario = new HashSet<Usuario>();
        }
    
        public int id { get; set; }
        public int idInstitucion { get; set; }
        public int idGrado { get; set; }
        public int idGradoN { get; set; }
        public byte estadoGrupo { get; set; }
        public string urlImagen { get; set; }
        public int ordenCategoria { get; set; }
    
        public virtual ICollection<Asignacion> Asignacion { get; set; }
        public virtual ICollection<Comunicado> Comunicado { get; set; }
        public virtual Grado Grado { get; set; }
        public virtual GradoN GradoN { get; set; }
        public virtual ICollection<Grupo_Evaluacion> Grupo_Evaluacion { get; set; }
        public virtual Institucion Institucion { get; set; }
        public virtual ICollection<Grupo_Restriccion> Grupo_Restriccion { get; set; }
        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}
