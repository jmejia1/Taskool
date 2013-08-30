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
    public class TipoRestriccionController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /TipoRestriccion/

        public ActionResult Index()
        {
            return View(db.Tipo_Restricciones.ToList());
        }

        //
        // GET: /TipoRestriccion/Details/5

        public ActionResult Details(short id = 0)
        {
            Tipo_Restriccion tipo_restriccion = db.Tipo_Restricciones.Find(id);
            if (tipo_restriccion == null)
            {
                return HttpNotFound();
            }
            return View(tipo_restriccion);
        }

        //
        // GET: /TipoRestriccion/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /TipoRestriccion/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Tipo_Restriccion tipo_restriccion)
        {
            if (ModelState.IsValid)
            {
                db.Tipo_Restricciones.Add(tipo_restriccion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipo_restriccion);
        }

        //
        // GET: /TipoRestriccion/Edit/5

        public ActionResult Edit(short id = 0)
        {
            Tipo_Restriccion tipo_restriccion = db.Tipo_Restricciones.Find(id);
            if (tipo_restriccion == null)
            {
                return HttpNotFound();
            }
            return View(tipo_restriccion);
        }

        //
        // POST: /TipoRestriccion/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Tipo_Restriccion tipo_restriccion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipo_restriccion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipo_restriccion);
        }

        //
        // GET: /TipoRestriccion/Delete/5

        public ActionResult Delete(short id = 0)
        {
            Tipo_Restriccion tipo_restriccion = db.Tipo_Restricciones.Find(id);
            if (tipo_restriccion == null)
            {
                return HttpNotFound();
            }
            return View(tipo_restriccion);
        }

        //
        // POST: /TipoRestriccion/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(short id)
        {
            Tipo_Restriccion tipo_restriccion = db.Tipo_Restricciones.Find(id);
            db.Tipo_Restricciones.Remove(tipo_restriccion);
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