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
    
    public partial class Grado
    {
        public Grado()
        {
            this.Grupo = new HashSet<Grupo>();
        }
    
        public int id { get; set; }
        public string nombreGrado { get; set; }
        public int idCategoria { get; set; }
    
        public virtual Categoria Categoria { get; set; }
        public virtual ICollection<Grupo> Grupo { get; set; }
    }
}
