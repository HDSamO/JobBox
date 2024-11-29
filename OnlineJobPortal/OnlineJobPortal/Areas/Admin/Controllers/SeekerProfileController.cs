using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineJobPortal.Models;

namespace OnlineJobPortal.Areas.Admin.Controllers
{
    public class SeekerProfileController : Controller
    {
        private OnlineJobPortalEntities db = new OnlineJobPortalEntities();

        // GET: Admin/SeekerProfile
        public ActionResult Index()
        {
            var seeker_profile = db.seeker_profile.Include(s => s.account);
            return View(seeker_profile.ToList());
        }

        // GET: Admin/SeekerProfile/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            seeker_profile seeker_profile = db.seeker_profile.Find(id);
            if (seeker_profile == null)
            {
                return HttpNotFound();
            }
            return View(seeker_profile);
        }

        // GET: Admin/SeekerProfile/Create
        public ActionResult Create()
        {
            ViewBag.account_id = new SelectList(db.accounts, "id", "email");
            return View();
        }

        // POST: Admin/SeekerProfile/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,account_id,current_salary,low_salary_range,high_salary_range,first_name,last_name,date_of_birth,gender,wallpaper,avatar,avatar_profile,title,about,experience,desc_experience,education,desc_education,address,country,city,meta,hide,order,datebegin")] seeker_profile seeker_profile)
        {
            if (ModelState.IsValid)
            {
                db.seeker_profile.Add(seeker_profile);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.account_id = new SelectList(db.accounts, "id", "email", seeker_profile.account_id);
            return View(seeker_profile);
        }

        // GET: Admin/SeekerProfile/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            seeker_profile seeker_profile = db.seeker_profile.Find(id);
            if (seeker_profile == null)
            {
                return HttpNotFound();
            }
            ViewBag.account_id = new SelectList(db.accounts, "id", "email", seeker_profile.account_id);
            return View(seeker_profile);
        }

        // POST: Admin/SeekerProfile/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,account_id,current_salary,low_salary_range,high_salary_range,first_name,last_name,date_of_birth,gender,wallpaper,avatar,avatar_profile,title,about,experience,desc_experience,education,desc_education,address,country,city,meta,hide,order,datebegin")] seeker_profile seeker_profile)
        {
            if (ModelState.IsValid)
            {
                db.Entry(seeker_profile).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.account_id = new SelectList(db.accounts, "id", "email", seeker_profile.account_id);
            return View(seeker_profile);
        }

        // GET: Admin/SeekerProfile/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            seeker_profile seeker_profile = db.seeker_profile.Find(id);
            if (seeker_profile == null)
            {
                return HttpNotFound();
            }
            return View(seeker_profile);
        }

        // POST: Admin/SeekerProfile/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            seeker_profile seeker_profile = db.seeker_profile.Find(id);
            db.seeker_profile.Remove(seeker_profile);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
