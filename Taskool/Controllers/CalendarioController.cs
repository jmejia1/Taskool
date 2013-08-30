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
    public class CalendarioController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Calendario/

        public ActionResult Index()
        {
            return View(db.Calendarios.ToList());
        }

        //
        // GET: /Calendario/Details/5

        public ActionResult Details(int id = 0)
        {
            Calendario calendario = db.Calendarios.Find(id);
            if (calendario == null)
            {
                return HttpNotFound();
            }
            return View(calendario);
        }

        //
        // GET: /Calendario/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Calendario/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Calendario calendario)
        {
            if (ModelState.IsValid)
            {
                db.Calendarios.Add(calendario);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(calendario);
        }

        //
        // GET: /Calendario/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Calendario calendario = db.Calendarios.Find(id);
            if (calendario == null)
            {
                return HttpNotFound();
            }
            return View(calendario);
        }

        //
        // POST: /Calendario/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Calendario calendario)
        {
            if (ModelState.IsValid)
            {
                db.Entry(calendario).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(calendario);
        }

        //
        // GET: /Calendario/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Calendario calendario = db.Calendarios.Find(id);
            if (calendario == null)
            {
                return HttpNotFound();
            }
            return View(calendario);
        }

        //
        // POST: /Calendario/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Calendario calendario = db.Calendarios.Find(id);
            db.Calendarios.Remove(calendario);
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