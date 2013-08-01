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
    public class CiudadController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Ciudad/

        public ActionResult Index()
        {
            return View(db.Ciudad.ToList());
        }

        //
        // GET: /Ciudad/Details/5

        public ActionResult Details(int id = 0)
        {
            Ciudad ciudad = db.Ciudad.Find(id);
            if (ciudad == null)
            {
                return HttpNotFound();
            }
            return View(ciudad);
        }

        //
        // GET: /Ciudad/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Ciudad/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Ciudad ciudad)
        {
            
            int ciu = db.Ciudad.Where(c => c.nombreCiudad == ciudad.nombreCiudad).Count();
            if (ciu > 0)
            {
                ModelState.AddModelError("Existe", "El nombre ya existe");
            }
            
            if (ModelState.IsValid)
            {

                db.Ciudad.Add(ciudad);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                //Mostrar error!
            }

            return View(ciudad);
        }

        //
        // GET: /Ciudad/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Ciudad ciudad = db.Ciudad.Find(id);
            if (ciudad == null)
            {
                return HttpNotFound();
            }
            return View(ciudad);
        }

        //
        // POST: /Ciudad/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Ciudad ciudad)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ciudad).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ciudad);
        }

        //
        // GET: /Ciudad/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Ciudad ciudad = db.Ciudad.Find(id);
            if (ciudad == null)
            {
                return HttpNotFound();
            }
            return View(ciudad);
        }

        //
        // POST: /Ciudad/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ciudad ciudad = db.Ciudad.Find(id);
            db.Ciudad.Remove(ciudad);
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