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
    public class GradoController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Grado/

        public ActionResult Index()
        {
            var grado = db.Grados.Include(g => g.Categoria);
            return View(grado.ToList());
        }

        //
        // GET: /Grado/Details/5

        public ActionResult Details(int id = 0)
        {
            Grado grado = db.Grados.Find(id);
            if (grado == null)
            {
                return HttpNotFound();
            }
            return View(grado);
        }

        //
        // GET: /Grado/Create

        public ActionResult Create()
        {
            ViewBag.idCategoria = new SelectList(db.Categorias, "id", "nombreCategoria");
            return View();
        }

        //
        // POST: /Grado/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Grado grado)
        {
            if (ModelState.IsValid)
            {
                db.Grados.Add(grado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idCategoria = new SelectList(db.Categorias, "id", "nombreCategoria", grado.idCategoria);
            return View(grado);
        }

        //
        // GET: /Grado/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Grado grado = db.Grados.Find(id);
            if (grado == null)
            {
                return HttpNotFound();
            }
            ViewBag.idCategoria = new SelectList(db.Categorias, "id", "nombreCategoria", grado.idCategoria);
            return View(grado);
        }

        //
        // POST: /Grado/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Grado grado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCategoria = new SelectList(db.Categorias, "id", "nombreCategoria", grado.idCategoria);
            return View(grado);
        }

        //
        // GET: /Grado/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Grado grado = db.Grados.Find(id);
            if (grado == null)
            {
                return HttpNotFound();
            }
            return View(grado);
        }

        //
        // POST: /Grado/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Grado grado = db.Grados.Find(id);
            db.Grados.Remove(grado);
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