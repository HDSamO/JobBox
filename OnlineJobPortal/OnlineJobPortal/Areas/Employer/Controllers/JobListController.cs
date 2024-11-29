using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Drawing.Printing;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineJobPortal.Help;
using OnlineJobPortal.Models;
using PagedList;

namespace OnlineJobPortal.Areas.Employer.Controllers
{
    public class JobListController : Controller
    {
        private OnlineJobPortalEntities db = new OnlineJobPortalEntities();

        // GET: Employer/JobList
        public ActionResult Index(int? pageNumber, int? pageSize)
        {
            int defaultPageNumber = 1;
            int defaultPageSize = 6;

            var currentAccount = Session["CurrentAccount"] as OnlineJobPortal.Models.account;

            if (currentAccount != null)
            {
                int currentPageNumber = pageNumber ?? defaultPageNumber;
                int currentPageSize = pageSize ?? defaultPageSize;

                // IQueryable approach for pagination with company filter
                var jobPostQuery = db.job_post
                    .Include(j => j.company_profile)
                    .Include(j => j.job_experience)
                    .Include(j => j.job_level)
                    .Include(j => j.job_position)
                    .Include(j => j.job_status)
                    .Include(j => j.job_type)
                    .Where(j => j.company_profile.account_id == currentAccount.id) 
                    .OrderByDescending(j => j.id);

                var paginatedJobPosts = jobPostQuery.ToPagedList(currentPageNumber, currentPageSize);

                return View(paginatedJobPosts);
            }
            else
            {
                Session["CurrentAccount"] = null;
                return Redirect("/auth/login");
            }


        }

        // GET: Employer/JobList/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var currentAccount = Session["CurrentAccount"] as OnlineJobPortal.Models.account;

            if (currentAccount != null)
            {
                job_post job_post = db.job_post.Find(id);
                if (job_post == null)
                {
                    return HttpNotFound();
                }

                if (job_post == null)
                {
                    return HttpNotFound();
                }
                return View(job_post);
            }
            else
            {
                Session["CurrentAccount"] = null;
                return Redirect("/auth/login");
            }

           
        }

        // GET: Employer/JobList/Create
        public ActionResult Create()
        {
            ViewBag.company_id = new SelectList(db.company_profile, "id", "name");
            ViewBag.job_experience_id = new SelectList(db.job_experience, "id", "name");
            ViewBag.job_level_id = new SelectList(db.job_level, "id", "name");
            ViewBag.job_position_id = new SelectList(db.job_position, "id", "name");
            ViewBag.job_status_id = new SelectList(db.job_status, "id", "name");
            ViewBag.job_type_id = new SelectList(db.job_type, "id", "name");
            return View();
        }

        // POST: Employer/JobList/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "id,job_title,company_id,job_type_id,job_position_id,job_level_id,job_experience_id,job_status_id,is_anonymous,job_welcome,job_essential,job_preferred,job_desc,job_salary,is_active,job_verify,address,country,city,meta,hide,order,datebegin")] job_post job_post)
        {
            if (ModelState.IsValid)
            {
                job_post.datebegin = Convert.ToDateTime(DateTime.Now.ToShortDateString());
                job_post.meta = Functions.ConvertToUnSign(job_post.meta);
                db.job_post.Add(job_post);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            
            ViewBag.company_id = new SelectList(db.company_profile, "id", "name", job_post.company_id);
            ViewBag.job_experience_id = new SelectList(db.job_experience, "id", "name", job_post.job_experience_id);
            ViewBag.job_level_id = new SelectList(db.job_level, "id", "name", job_post.job_level_id);
            ViewBag.job_position_id = new SelectList(db.job_position, "id", "name", job_post.job_position_id);
            ViewBag.job_status_id = new SelectList(db.job_status, "id", "name", job_post.job_status_id);
            ViewBag.job_type_id = new SelectList(db.job_type, "id", "name", job_post.job_type_id);
            return View(job_post);
        }

        // GET: Employer/JobList/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            job_post job_post = db.job_post.Find(id);
            if (job_post == null)
            {
                return HttpNotFound();
            }
            ViewBag.company_id = new SelectList(db.company_profile, "id", "name", job_post.company_id);
            ViewBag.job_experience_id = new SelectList(db.job_experience, "id", "name", job_post.job_experience_id);
            ViewBag.job_level_id = new SelectList(db.job_level, "id", "name", job_post.job_level_id);
            ViewBag.job_position_id = new SelectList(db.job_position, "id", "name", job_post.job_position_id);
            ViewBag.job_status_id = new SelectList(db.job_status, "id", "name", job_post.job_status_id);
            ViewBag.job_type_id = new SelectList(db.job_type, "id", "name", job_post.job_type_id);
            return View(job_post);
        }

        // POST: Employer/JobList/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]

        public ActionResult Edit([Bind(Include = "id,job_title,company_id,job_type_id,job_position_id,job_level_id,job_experience_id,job_status_id,is_anonymous,job_welcome,job_essential,job_preferred,job_desc,job_salary,is_active,job_verify,address,country,city,meta,hide,order,datebegin")] job_post job_post)
        {
            if (ModelState.IsValid)
            {
                job_post.job_verify = "waiting";
                job_post.meta = Functions.ConvertToUnSign(job_post.meta);
                job_post.datebegin = Convert.ToDateTime( DateTime.Now.ToShortDateString());
                db.Entry(job_post).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.company_id = new SelectList(db.company_profile, "id", "name", job_post.company_id);
            ViewBag.job_experience_id = new SelectList(db.job_experience, "id", "name", job_post.job_experience_id);
            ViewBag.job_level_id = new SelectList(db.job_level, "id", "name", job_post.job_level_id);
            ViewBag.job_position_id = new SelectList(db.job_position, "id", "name", job_post.job_position_id);
            ViewBag.job_status_id = new SelectList(db.job_status, "id", "name", job_post.job_status_id);
            ViewBag.job_type_id = new SelectList(db.job_type, "id", "name", job_post.job_type_id);
            return View(job_post);
        }
            
        // GET: Employer/JobList/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            job_post job_post = db.job_post.Find(id);
            if (job_post == null)
            {
                return HttpNotFound();
            }
            return View(job_post);
        }

        // POST: Employer/JobList/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            job_post job_post = db.job_post.Find(id);
            db.job_post.Remove(job_post);
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

        public PartialViewResult GetJobKeywords(long id)
        {
            var keys = db.job_post_keyword.Where(n => n.job_post_id == id).ToList();
            List<keyword> keyWords = new List<keyword>();

            foreach (var item in keys)
            {
                keyWords.Add(db.keywords.FirstOrDefault(i => i.id == item.keyword_id));
            }

            return PartialView(keyWords);
        }

    }
}
