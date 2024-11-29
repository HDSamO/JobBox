using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Drawing.Printing;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OnlineJobPortal.Models;
using PagedList;

namespace OnlineJobPortal.Areas.Admin.Controllers
{   
    public class JobPostController : Controller
    {
        private OnlineJobPortalEntities db = new OnlineJobPortalEntities();

        // GET: Admin/JobPost
        public ActionResult Index()
        {
            var job_post = db.job_post.Include(j => j.company_profile).Include(j => j.job_experience).Include(j => j.job_level).Include(j => j.job_position).Include(j => j.job_status).Include(j => j.job_type);
            return View(job_post.ToList());
        }

        // GET: Admin/JobPost/Details/5
        public ActionResult Details(long? id)
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

        // GET: Admin/JobPost/Create
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

        // POST: Admin/JobPost/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,job_title,company_id,job_type_id,job_position_id,job_level_id,job_experience_id,job_status_id,is_anonymous,job_welcome,job_essential,job_preferred,job_desc,job_salary,is_active,job_verify,address,country,city,meta,hide,order,datebegin")] job_post job_post)
        {
            if (ModelState.IsValid)
            {
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

        // GET: Admin/JobPost/Edit/5
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

        // POST: Admin/JobPost/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,job_title,company_id,job_type_id,job_position_id,job_level_id,job_experience_id,job_status_id,is_anonymous,job_welcome,job_essential,job_preferred,job_desc,job_salary,is_active,job_verify,address,country,city,meta,hide,order,datebegin")] job_post job_post)
        {
            if (ModelState.IsValid)
            {
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

        // GET: Admin/JobPost/Delete/5
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

        // POST: Admin/JobPost/Delete/5
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

        public ActionResult VerifyQueue(int? pageNumber, int? pageSize)
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
                    .OrderByDescending(j => j.id);

                var paginatedJobPosts = jobPostQuery.ToPagedList(currentPageNumber, currentPageSize);

                return View(paginatedJobPosts);
            }
            else
            {
                Session["CurrentAccount"] = null;
                return Redirect("/admin/login");
            }
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

        public ActionResult VerifyDetails(long? id)
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

        public ActionResult AcceptJobPost(long? id)
        {
            var currentAccount = Session["CurrentAccount"] as OnlineJobPortal.Models.account;

            if (currentAccount == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.NonAuthoritativeInformation);
            }
            else
            {
                if(currentAccount.role_id != 3)
            {
                    return new HttpStatusCodeResult(HttpStatusCode.NonAuthoritativeInformation);
                }
            }

           
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }


            job_post job_post = db.job_post.Find(id);

            if (job_post == null)
            {
                return HttpNotFound();
            }
            db.Entry(job_post).State = EntityState.Modified;

            job_post.job_verify = "verified";
            db.SaveChanges();

            return RedirectToAction("VerifyDetails", new { id = job_post.id }); 
        }

        public ActionResult RejectJobPost(long? id)
        {
            var currentAccount = Session["CurrentAccount"] as OnlineJobPortal.Models.account;

            if (currentAccount == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.NonAuthoritativeInformation);
            }
            else
            {
                if (currentAccount.role_id != 3)
                {
                    return new HttpStatusCodeResult(HttpStatusCode.NonAuthoritativeInformation);
                }
            }

            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var job_post = db.job_post.Find(id);

            if (job_post == null)
            {
                return HttpNotFound();
            }

            // Log the current job_verify value before update
            db.Entry(job_post).State = EntityState.Modified;

            job_post.job_verify = "rejected";
            db.SaveChanges();

            return RedirectToAction("VerifyDetails", new { id = job_post.id });
        }
    }
}
