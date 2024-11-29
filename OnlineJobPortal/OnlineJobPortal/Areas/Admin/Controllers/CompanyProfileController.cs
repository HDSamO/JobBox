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
    public class CompanyProfileController : Controller
    {
        private OnlineJobPortalEntities db = new OnlineJobPortalEntities();

        // GET: Admin/CompanyProfile
        public ActionResult Index()
        {
            var company_profile = db.company_profile.Include(c => c.account).Include(c => c.industry);
            return View(company_profile.ToList());
        }

        // GET: Admin/CompanyProfile/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            company_profile company_profile = db.company_profile.Find(id);
            if (company_profile == null)
            {
                return HttpNotFound();
            }
            return View(company_profile);
        }

        // GET: Admin/CompanyProfile/Create
        public ActionResult Create()
        {
            ViewBag.account_id = new SelectList(db.accounts, "id", "email");
            ViewBag.industry_id = new SelectList(db.industries, "id", "name");
            return View();
        }

        // POST: Admin/CompanyProfile/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,account_id,name,slogan,welcome,essential,recruitment,people,company_background,company_image,company_logo,establishment_date,company_website_url,industry_id,address,country,city,meta,hide,order,datebegin")] company_profile company_profile)
        {
            if (ModelState.IsValid)
            {
                db.company_profile.Add(company_profile);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.account_id = new SelectList(db.accounts, "id", "email", company_profile.account_id);
            ViewBag.industry_id = new SelectList(db.industries, "id", "name", company_profile.industry_id);
            return View(company_profile);
        }

        // GET: Admin/CompanyProfile/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            company_profile company_profile = db.company_profile.Find(id);
            if (company_profile == null)
            {
                return HttpNotFound();
            }
            ViewBag.account_id = new SelectList(db.accounts, "id", "email", company_profile.account_id);
            ViewBag.industry_id = new SelectList(db.industries, "id", "name", company_profile.industry_id);
            return View(company_profile);
        }

        // POST: Admin/CompanyProfile/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,account_id,name,slogan,welcome,essential,recruitment,people,company_background,company_image,company_logo,establishment_date,company_website_url,industry_id,address,country,city,meta,hide,order,datebegin")] company_profile company_profile)
        {
            if (ModelState.IsValid)
            {
                db.Entry(company_profile).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.account_id = new SelectList(db.accounts, "id", "email", company_profile.account_id);
            ViewBag.industry_id = new SelectList(db.industries, "id", "name", company_profile.industry_id);
            return View(company_profile);
        }

        // GET: Admin/CompanyProfile/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            company_profile company_profile = db.company_profile.Find(id);
            if (company_profile == null)
            {
                return HttpNotFound();
            }
            return View(company_profile);
        }

        // POST: Admin/CompanyProfile/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            company_profile company_profile = db.company_profile.Find(id);
            db.company_profile.Remove(company_profile);
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
