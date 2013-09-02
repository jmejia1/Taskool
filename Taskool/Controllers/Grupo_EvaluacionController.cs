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
    public class Grupo_EvaluacionController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Grupo_Evaluacion/

        public ActionResult Index()
        {
            var grupo_evaluacions = db.Grupo_Evaluacions.Include(g => g.Grupo);
            return View(grupo_evaluacions.ToList());
        }

        //
        // GET: /Grupo_Evaluacion/Details/5

        public ActionResult Details(int id = 0)
        {
            Grupo_Evaluacion grupo_evaluacion = db.Grupo_Evaluacions.Find(id);
            if (grupo_evaluacion == null)
            {
                return HttpNotFound();
            }
            return View(grupo_evaluacion);
        }

        //
        // GET: /Grupo_Evaluacion/Create

        public ActionResult Create()
        {
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen");
            return View();
        }

        //
        // POST: /Grupo_Evaluacion/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Grupo_Evaluacion grupo_evaluacion)
        {
            if (ModelState.IsValid)
            {
                db.Grupo_Evaluacions.Add(grupo_evaluacion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", grupo_evaluacion.idGrupo);
            return View(grupo_evaluacion);
        }

        //
        // GET: /Grupo_Evaluacion/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Grupo_Evaluacion grupo_evaluacion = db.Grupo_Evaluacions.Find(id);
            if (grupo_evaluacion == null)
            {
                return HttpNotFound();
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", grupo_evaluacion.idGrupo);
            return View(grupo_evaluacion);
        }

        //
        // POST: /Grupo_Evaluacion/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Grupo_Evaluacion grupo_evaluacion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grupo_evaluacion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", grupo_evaluacion.idGrupo);
            return View(grupo_evaluacion);
        }

        //
        // GET: /Grupo_Evaluacion/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Grupo_Evaluacion grupo_evaluacion = db.Grupo_Evaluacions.Find(id);
            if (grupo_evaluacion == null)
            {
                return HttpNotFound();
            }
            return View(grupo_evaluacion);
        }

        //
        // POST: /Grupo_Evaluacion/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Grupo_Evaluacion grupo_evaluacion = db.Grupo_Evaluacions.Find(id);
            db.Grupo_Evaluacions.Remove(grupo_evaluacion);
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