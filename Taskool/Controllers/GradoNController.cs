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
    public class GradoNController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /GradoN/

        public ActionResult Index()
        {
            return View(db.GradoNs.ToList());
        }

        //
        // GET: /GradoN/Details/5

        public ActionResult Details(int id = 0)
        {
            GradoN gradon = db.GradoNs.Find(id);
            if (gradon == null)
            {
                return HttpNotFound();
            }
            return View(gradon);
        }

        //
        // GET: /GradoN/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /GradoN/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(GradoN gradon)
        {
            if (ModelState.IsValid)
            {
                db.GradoNs.Add(gradon);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(gradon);
        }

        //
        // GET: /GradoN/Edit/5

        public ActionResult Edit(int id = 0)
        {
            GradoN gradon = db.GradoNs.Find(id);
            if (gradon == null)
            {
                return HttpNotFound();
            }
            return View(gradon);
        }

        //
        // POST: /GradoN/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(GradoN gradon)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gradon).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(gradon);
        }

        //
        // GET: /GradoN/Delete/5

        public ActionResult Delete(int id = 0)
        {
            GradoN gradon = db.GradoNs.Find(id);
            if (gradon == null)
            {
                return HttpNotFound();
            }
            return View(gradon);
        }

        //
        // POST: /GradoN/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            GradoN gradon = db.GradoNs.Find(id);
            db.GradoNs.Remove(gradon);
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