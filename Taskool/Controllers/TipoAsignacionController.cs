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
    public class TipoAsignacionController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /TipoAsignacion/

        public ActionResult Index()
        {
            return View(db.TipoAsignaciones.ToList());
        }

        //
        // GET: /TipoAsignacion/Details/5

        public ActionResult Details(short id = 0)
        {
            TipoAsignacion tipoasignacion = db.TipoAsignaciones.Find(id);
            if (tipoasignacion == null)
            {
                return HttpNotFound();
            }
            return View(tipoasignacion);
        }

        //
        // GET: /TipoAsignacion/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /TipoAsignacion/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(TipoAsignacion tipoasignacion)
        {
            if (ModelState.IsValid)
            {
                db.TipoAsignaciones.Add(tipoasignacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipoasignacion);
        }

        //
        // GET: /TipoAsignacion/Edit/5

        public ActionResult Edit(short id = 0)
        {
            TipoAsignacion tipoasignacion = db.TipoAsignaciones.Find(id);
            if (tipoasignacion == null)
            {
                return HttpNotFound();
            }
            return View(tipoasignacion);
        }

        //
        // POST: /TipoAsignacion/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(TipoAsignacion tipoasignacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipoasignacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoasignacion);
        }

        //
        // GET: /TipoAsignacion/Delete/5

        public ActionResult Delete(short id = 0)
        {
            TipoAsignacion tipoasignacion = db.TipoAsignaciones.Find(id);
            if (tipoasignacion == null)
            {
                return HttpNotFound();
            }
            return View(tipoasignacion);
        }

        //
        // POST: /TipoAsignacion/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(short id)
        {
            TipoAsignacion tipoasignacion = db.TipoAsignaciones.Find(id);
            db.TipoAsignaciones.Remove(tipoasignacion);
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