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
    public class GrupoController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Grupo/

        public ActionResult Index()
        {
            var grupos = db.Grupos.Include(g => g.Grado).Include(g => g.GradoN).Include(g => g.Institucion);
            return View(grupos.ToList());
        }

        //
        // GET: /Grupo/Details/5

        public ActionResult Details(int id = 0)
        {
            Grupo grupo = db.Grupos.Find(id);
            if (grupo == null)
            {
                return HttpNotFound();
            }
            return View(grupo);
        }

        //
        // GET: /Grupo/Create

        public ActionResult Create()
        {
            ViewBag.idGrado = new SelectList(db.Grados, "id", "nombreGrado");
            ViewBag.idGradoN = new SelectList(db.GradoNs, "id", "nombreGradoN");
            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit");
            return View();
        }

        //
        // POST: /Grupo/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Grupo grupo)
        {
            if (ModelState.IsValid)
            {
                db.Grupos.Add(grupo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idGrado = new SelectList(db.Grados, "id", "nombreGrado", grupo.idGrado);
            ViewBag.idGradoN = new SelectList(db.GradoNs, "id", "nombreGradoN", grupo.idGradoN);
            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit", grupo.idInstitucion);
            return View(grupo);
        }

        //
        // GET: /Grupo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Grupo grupo = db.Grupos.Find(id);
            if (grupo == null)
            {
                return HttpNotFound();
            }
            ViewBag.idGrado = new SelectList(db.Grados, "id", "nombreGrado", grupo.idGrado);
            ViewBag.idGradoN = new SelectList(db.GradoNs, "id", "nombreGradoN", grupo.idGradoN);
            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit", grupo.idInstitucion);
            return View(grupo);
        }

        //
        // POST: /Grupo/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Grupo grupo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(grupo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idGrado = new SelectList(db.Grados, "id", "nombreGrado", grupo.idGrado);
            ViewBag.idGradoN = new SelectList(db.GradoNs, "id", "nombreGradoN", grupo.idGradoN);
            ViewBag.idInstitucion = new SelectList(db.Instituciones, "id", "nit", grupo.idInstitucion);
            return View(grupo);
        }

        //
        // GET: /Grupo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Grupo grupo = db.Grupos.Find(id);
            if (grupo == null)
            {
                return HttpNotFound();
            }
            return View(grupo);
        }

        //
        // POST: /Grupo/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Grupo grupo = db.Grupos.Find(id);
            db.Grupos.Remove(grupo);
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