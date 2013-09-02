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
    public class Asignacion_ArchivoController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Asignacion_Archivo/

        public ActionResult Index()
        {
            var asignacion_archivos = db.Asignacion_Archivos.Include(a => a.Asignacion);
            return View(asignacion_archivos.ToList());
        }

        //
        // GET: /Asignacion_Archivo/Details/5

        public ActionResult Details(int id = 0)
        {
            Asignacion_Archivo asignacion_archivo = db.Asignacion_Archivos.Find(id);
            if (asignacion_archivo == null)
            {
                return HttpNotFound();
            }
            return View(asignacion_archivo);
        }

        //
        // GET: /Asignacion_Archivo/Create

        public ActionResult Create()
        {
            ViewBag.idAsignacion = new SelectList(db.Asignaciones, "id", "titulo");
            return View();
        }

        //
        // POST: /Asignacion_Archivo/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Asignacion_Archivo asignacion_archivo)
        {
            if (ModelState.IsValid)
            {
                db.Asignacion_Archivos.Add(asignacion_archivo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idAsignacion = new SelectList(db.Asignaciones, "id", "titulo", asignacion_archivo.idAsignacion);
            return View(asignacion_archivo);
        }

        //
        // GET: /Asignacion_Archivo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Asignacion_Archivo asignacion_archivo = db.Asignacion_Archivos.Find(id);
            if (asignacion_archivo == null)
            {
                return HttpNotFound();
            }
            ViewBag.idAsignacion = new SelectList(db.Asignaciones, "id", "titulo", asignacion_archivo.idAsignacion);
            return View(asignacion_archivo);
        }

        //
        // POST: /Asignacion_Archivo/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Asignacion_Archivo asignacion_archivo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(asignacion_archivo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idAsignacion = new SelectList(db.Asignaciones, "id", "titulo", asignacion_archivo.idAsignacion);
            return View(asignacion_archivo);
        }

        //
        // GET: /Asignacion_Archivo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Asignacion_Archivo asignacion_archivo = db.Asignacion_Archivos.Find(id);
            if (asignacion_archivo == null)
            {
                return HttpNotFound();
            }
            return View(asignacion_archivo);
        }

        //
        // POST: /Asignacion_Archivo/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Asignacion_Archivo asignacion_archivo = db.Asignacion_Archivos.Find(id);
            db.Asignacion_Archivos.Remove(asignacion_archivo);
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