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
    public class ComunicadoController : Controller
    {
        private TareasEntities db = new TareasEntities();

        //
        // GET: /Comunicado/

        public ActionResult Index()
        {
            var comunicados = db.Comunicados.Include(c => c.Grupo).Include(c => c.Usuario);
            return View(comunicados.ToList());
        }

        //
        // GET: /Comunicado/Details/5

        public ActionResult Details(int id = 0)
        {
            Comunicado comunicado = db.Comunicados.Find(id);
            if (comunicado == null)
            {
                return HttpNotFound();
            }
            return View(comunicado);
        }

        //
        // GET: /Comunicado/Create

        public ActionResult Create()
        {
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen");
            ViewBag.idUsuarioComunicado = new SelectList(db.Usuario, "id", "nombreUsuario");
            return View();
        }

        //
        // POST: /Comunicado/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Comunicado comunicado)
        {
            if (ModelState.IsValid)
            {
                db.Comunicados.Add(comunicado);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", comunicado.idGrupo);
            ViewBag.idUsuarioComunicado = new SelectList(db.Usuario, "id", "nombreUsuario", comunicado.idUsuarioComunicado);
            return View(comunicado);
        }

        //
        // GET: /Comunicado/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Comunicado comunicado = db.Comunicados.Find(id);
            if (comunicado == null)
            {
                return HttpNotFound();
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", comunicado.idGrupo);
            ViewBag.idUsuarioComunicado = new SelectList(db.Usuario, "id", "nombreUsuario", comunicado.idUsuarioComunicado);
            return View(comunicado);
        }

        //
        // POST: /Comunicado/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Comunicado comunicado)
        {
            if (ModelState.IsValid)
            {
                db.Entry(comunicado).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idGrupo = new SelectList(db.Grupos, "id", "urlImagen", comunicado.idGrupo);
            ViewBag.idUsuarioComunicado = new SelectList(db.Usuario, "id", "nombreUsuario", comunicado.idUsuarioComunicado);
            return View(comunicado);
        }

        //
        // GET: /Comunicado/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Comunicado comunicado = db.Comunicados.Find(id);
            if (comunicado == null)
            {
                return HttpNotFound();
            }
            return View(comunicado);
        }

        //
        // POST: /Comunicado/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Comunicado comunicado = db.Comunicados.Find(id);
            db.Comunicados.Remove(comunicado);
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