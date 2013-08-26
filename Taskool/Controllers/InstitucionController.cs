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
    public class InstitucionController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Institucion/

        public ActionResult Index()
        {
            var instituciones = db.Instituciones.Include(i => i.Ciudad);
            return View(instituciones.ToList());
        }

        //
        // GET: /Institucion/Details/5

        public ActionResult Details(int id = 0)
        {
            Institucion institucion = db.Instituciones.Find(id);
            if (institucion == null)
            {
                return HttpNotFound();
            }
            return View(institucion);
        }

        //
        // GET: /Institucion/Create

        public ActionResult Create()
        {
            ViewBag.idCiudad = new SelectList(db.Ciudades, "id", "nombreCiudad");
            return View();
        }

        //
        // POST: /Institucion/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Institucion institucion)
        {
            int Contadorinstitucion = db.Instituciones.Where(c => c.nit == institucion.nit).Count();
            if (Contadorinstitucion > 0)
            {
                ModelState.AddModelError("nit", "El NIT " + institucion.nit + " ya existe");
            }

            if (ModelState.IsValid)
            {
                db.Instituciones.Add(institucion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idCiudad = new SelectList(db.Ciudades, "id", "nombreCiudad", institucion.idCiudad);
            return View(institucion);
        }

        //
        // GET: /Institucion/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Institucion institucion = db.Instituciones.Find(id);
            if (institucion == null)
            {
                return HttpNotFound();
            }
            ViewBag.idCiudad = new SelectList(db.Ciudades, "id", "nombreCiudad", institucion.idCiudad);
            return View(institucion);
        }

        //
        // POST: /Institucion/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Institucion institucion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(institucion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCiudad = new SelectList(db.Ciudades, "id", "nombreCiudad", institucion.idCiudad);
            return View(institucion);
        }

        //
        // GET: /Institucion/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Institucion institucion = db.Instituciones.Find(id);
            if (institucion == null)
            {
                return HttpNotFound();
            }
            return View(institucion);
        }

        //
        // POST: /Institucion/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Institucion institucion = db.Instituciones.Find(id);
            db.Instituciones.Remove(institucion);
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