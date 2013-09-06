using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Taskool.ViewModels
{
    public class GruposAsignadosViewModel
    {
         
        public int idGrupo { get; set; }
        public string Nombre { get; set; } 
        public bool Asignado { get; set; }

    }
}