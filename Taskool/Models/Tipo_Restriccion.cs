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
    
    public partial class Tipo_Restriccion
    {
        public Tipo_Restriccion()
        {
            this.Grupo_Restriccion = new HashSet<Grupo_Restriccion>();
        }
    
        public short id { get; set; }
        public string nombreTipoRestriccion { get; set; }
    
        public virtual ICollection<Grupo_Restriccion> Grupo_Restriccion { get; set; }
    }
}
