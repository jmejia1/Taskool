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
    public class AsignacionController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Asignacion/

        public ActionResult Index()
        {
            var asignaciones = db.Asignaciones.Include(a => a.Grupo).Include(a => a.TipoAsignacion).Include(a => a.Usuario);
            return View(asignaciones.ToList());
        }

        //
        // GET: /Asignacion/Details/5

        public ActionResult Details(int id = 0)
        {
            Asignacion asignacion = db.Asignaciones.Find(id);
            if (asignacion == null)
            {
                return HttpNotFound();
            }
            return View(asignacion);
        }

        //
        // GET: /Asignacion/Create

        public ActionResult Create()
        {
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen");
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion");
            ViewBag.idUsuarioAsignacion = new SelectList(db.Usuarios, "id", "nombreUsuario");
            return View();
        }

        //
        // POST: /Asignacion/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Asignacion asignacion)
        {
            if (ModelState.IsValid)
            {
                db.Asignaciones.Add(asignacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", asignacion.idGrupo);
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion", asignacion.idTipoAsignacion);
            ViewBag.idUsuarioAsignacion = new SelectList(db.Usuarios, "id", "nombreUsuario", asignacion.idUsuarioAsignacion);
            return View(asignacion);
        }

        //
        // GET: /Asignacion/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Asignacion asignacion = db.Asignaciones.Find(id);
            if (asignacion == null)
            {
                return HttpNotFound();
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", asignacion.idGrupo);
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion", asignacion.idTipoAsignacion);
            ViewBag.idUsuarioAsignacion = new SelectList(db.Usuarios, "id", "nombreUsuario", asignacion.idUsuarioAsignacion);
            return View(asignacion);
        }

        //
        // POST: /Asignacion/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Asignacion asignacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(asignacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", asignacion.idGrupo);
            ViewBag.idTipoAsignacion = new SelectList(db.TipoAsignaciones, "id", "nombreTipoAsignacion", asignacion.idTipoAsignacion);
            ViewBag.idUsuarioAsignacion = new SelectList(db.Usuarios, "id", "nombreUsuario", asignacion.idUsuarioAsignacion);
            return View(asignacion);
        }

        //
        // GET: /Asignacion/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Asignacion asignacion = db.Asignaciones.Find(id);
            if (asignacion == null)
            {
                return HttpNotFound();
            }
            return View(asignacion);
        }

        //
        // POST: /Asignacion/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Asignacion asignacion = db.Asignaciones.Find(id);
            db.Asignaciones.Remove(asignacion);
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