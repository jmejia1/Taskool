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
    public class AsignaturaController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Asignatura/

        public ActionResult Index()
        {
            return View(db.Asignaturas.ToList());
        }

        //
        // GET: /Asignatura/Details/5

        public ActionResult Details(int id = 0)
        {
            Asignatura asignatura = db.Asignaturas.Find(id);
            if (asignatura == null)
            {
                return HttpNotFound();
            }
            return View(asignatura);
        }

        //
        // GET: /Asignatura/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Asignatura/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Asignatura asignatura)
        {
            if (ModelState.IsValid)
            {
                db.Asignaturas.Add(asignatura);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(asignatura);
        }

        //
        // GET: /Asignatura/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Asignatura asignatura = db.Asignaturas.Find(id);
            if (asignatura == null)
            {
                return HttpNotFound();
            }
            return View(asignatura);
        }

        //
        // POST: /Asignatura/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Asignatura asignatura)
        {
            if (ModelState.IsValid)
            {
                db.Entry(asignatura).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(asignatura);
        }

        //
        // GET: /Asignatura/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Asignatura asignatura = db.Asignaturas.Find(id);
            if (asignatura == null)
            {
                return HttpNotFound();
            }
            return View(asignatura);
        }

        //
        // POST: /Asignatura/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Asignatura asignatura = db.Asignaturas.Find(id);
            db.Asignaturas.Remove(asignatura);
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