using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Taskool.Models;

namespace Taskool.Controllers
{
    public class GrupoRestriccionController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /GrupoRestriccion/

        public ActionResult Index()
        {
            var grupo_restricciones = db.Grupo_Restricciones.Include(g => g.Grupo).Include(g => g.Tipo_Restriccion).Include(g => g.TipoAsignacion);
            return View(grupo_restricciones.ToList());
        }

        //
        // GET: /GrupoRestriccion/Details/5

        public ActionResult Details(int id = 0)
        {
            Grupo_Restriccion grupo_restriccion = db.Grupo_Restricciones.Find(id);
            if (grupo_restriccion == null)
            {
                return HttpNotFound();
            }
            return View(grupo_restriccion);
        }

        //
        // GET: /GrupoRestriccion/Create

        public ActionResult Create()
        {
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen");
            ViewBag.idTipoRestriccion = new SelectList(db.Tipo_Restricciones, "id", "nombreTipoRestriccion");
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion");
            return View();
        }

        //
        // POST: /GrupoRestriccion/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Grupo_Restriccion grupo_restriccion)
        {
            if (ModelState.IsValid)
            {
                db.Grupo_Restricciones.Add(grupo_restriccion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", grupo_restriccion.idGrupo);
            ViewBag.idTipoRestriccion = new SelectList(db.Tipo_Restricciones, "id", "nombreTipoRestriccion", grupo_restriccion.idTipoRestriccion);
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion", grupo_restriccion.idTipoAsignacion);
            return View(grupo_restriccion);
        }

        //
        // GET: /GrupoRestriccion/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Grupo_Restriccion grupo_restriccion = db.Grupo_Restricciones.Find(id);
            if (grupo_restriccion == null)
            {
                return HttpNotFound();
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", grupo_restriccion.idGrupo);
            ViewBag.idTipoRestriccion = new SelectList(db.Tipo_Restricciones, "id", "nombreTipoRestriccion", grupo_restriccion.idTipoRestriccion);
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion", grupo_restriccion.idTipoAsignacion);
            return View(grupo_restriccion);
        }

        //
        // POST: /GrupoRestriccion/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Grupo_Restriccion grupo_restriccion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grupo_restriccion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", grupo_restriccion.idGrupo);
            ViewBag.idTipoRestriccion = new SelectList(db.Tipo_Restricciones, "id", "nombreTipoRestriccion", grupo_restriccion.idTipoRestriccion);
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion", grupo_restriccion.idTipoAsignacion);
            return View(grupo_restriccion);
        }

        //
        // GET: /GrupoRestriccion/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Grupo_Restriccion grupo_restriccion = db.Grupo_Restricciones.Find(id);
            if (grupo_restriccion == null)
            {
                return HttpNotFound();
            }
            return View(grupo_restriccion);
        }

        //
        // POST: /GrupoRestriccion/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Grupo_Restriccion grupo_restriccion = db.Grupo_Restricciones.Find(id);
            db.Grupo_Restricciones.Remove(grupo_restriccion);
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