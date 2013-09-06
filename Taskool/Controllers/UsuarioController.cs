using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Taskool.Models;
using Taskool.ViewModels;

namespace Taskool.Controllers
{
    public class UsuarioController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Usuario/

        public ActionResult Index()
        {
            var usuarios = db.Usuarios.Include(u => u.Institucion);
            return View(usuarios.ToList());
        }
         
        //
        // GET: /Usuario/Details/5

        public ActionResult Details(int id = 0)
        {
            Usuario usuario = db.Usuarios.Find(id);
            if (usuario == null)
            {
                return HttpNotFound();
            }
            return View(usuario);
        }

        //
        // GET: /Usuario/Create

        public ActionResult Create()
        {
            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit");
            return View();
        }

        //
        // POST: /Usuario/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Usuario usuario)
        {
            if (ModelState.IsValid)
            {
                db.Usuarios.Add(usuario);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit", usuario.idInstitucion);
            return View(usuario);
        }

        //
        // GET: /Usuario/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Usuario usuario = db.Usuarios.Find(id);
            if (usuario == null)
            {
                return HttpNotFound();
            }

            CargarGruposAsignados(usuario);

            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit", usuario.idInstitucion);
            return View(usuario);
        }

        /// <summary>
        /// Permite la carga de grupos a ser asignados al usuario
        /// </summary>
        /// <param name="usuario"></param>
        private void CargarGruposAsignados(Usuario usuario)
        {
            var allGrupos = db.Grupos;
            var usuarioGrupos = new HashSet<int>(usuario.Grupo.Select(c => c.id));
            var viewModel = new List<GruposAsignadosViewModel>();
            foreach (var grupo in allGrupos)
            {
                viewModel.Add(new GruposAsignadosViewModel 
                {
                    idGrupo = grupo.id,
                    Nombre = grupo.id.ToString(),
                    Asignado = usuarioGrupos.Contains(grupo.id)
                });
            }
            ViewBag.Grupos = viewModel;
        }



        //
        // POST: /Usuario/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Usuario usuario, string[] selectedGrupos) 
        {
            if (ModelState.IsValid)
            {

                UpdateGruposDeUsuario(selectedGrupos, usuario);

                db.Entry(usuario).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            CargarGruposAsignados(usuario);

            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit", usuario.idInstitucion);
            return View(usuario);
        }


        private void UpdateGruposDeUsuario(string[] selectedGrupos, Usuario usuarioToUpdate)
        {
            if (selectedGrupos == null)
            {
                usuarioToUpdate.Grupo = new List<Grupo>();
                return;
            }

            var selectedGruposHS = new HashSet<string>(selectedGrupos);
            var usuarioGrupos = new HashSet<int>(usuarioToUpdate.Grupo.Select(c => c.id));
            foreach (var course in db.Grupos)
            {
                if (selectedGruposHS.Contains(course.id.ToString()))
                {
                    if (!usuarioGrupos.Contains(course.id))
                    {
                        usuarioToUpdate.Grupo.Add(course);
                    }
                }
                else
                {
                    if (usuarioGrupos.Contains(course.id))
                    {
                        usuarioToUpdate.Grupo.Remove(course);
                    }
                }
            }
        }


        //
        // GET: /Usuario/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Usuario usuario = db.Usuarios.Find(id);
            if (usuario == null)
            {
                return HttpNotFound();
            }
            return View(usuario);
        }

        //
        // POST: /Usuario/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Usuario usuario = db.Usuarios.Find(id);
            db.Usuarios.Remove(usuario);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}