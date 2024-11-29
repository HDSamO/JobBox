using OnlineJobPortal.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;
using System.Diagnostics;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;

namespace OnlineJobPortal.Controllers
{
    public class HomeController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        public ActionResult Index()
        {
            // Lấy cookie "CurrentAccount" từ yêu cầu HTTP của người dùng
            HttpCookie cookie = Request.Cookies["CurrentAccount"];
            if (cookie != null)
            {
                // Lấy thông tin username và password từ cookie
                string username = cookie["username"];
                string password = cookie["password"];

                // Kiểm tra thông tin tài khoản trong cơ sở dữ liệu
                var accountCheck = _db.accounts.SingleOrDefault(x => x.username == username && x.password == password);

                if (accountCheck != null)
                {
                    // Tạo session cho người dùng
                    Session["CurrentAccount"] = accountCheck;

                    // Chuyển hướng người dùng dựa trên role_id
                    if (accountCheck.role_id == 1)
                    {
                        return RedirectToAction("Index", "Employer");
                    }
                    else
                    {
                        return View();
                    }
                }
            }

            return View();
        }


        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult GetIndustryName()
        {
            var industries = from t in _db.industries
                             where t.hide == true
                             orderby t.order ascending
                             select t;

            return PartialView(industries.ToList());
        }

        public ActionResult GetLocation()
        {
            var jobs = _db.job_post
                .GroupBy(j => j.city)
                .Select(group => group.FirstOrDefault()) 
                .ToList();

            return PartialView(jobs.ToList());
        }

        public ActionResult GetPopularSearch() 
        {
            List<keyword> topKeywords = _db.keywords
                .OrderByDescending(k => k.job_post_keyword.Count)
                .Take(6)
                .ToList();

            return PartialView(topKeywords);
        }

        public ActionResult GetAllIndustries()
        {
            var industries = from t in _db.industries
                             where t.hide == true
                             orderby t.order ascending
                             select t;

            return PartialView(industries.ToList());
        }

        public PartialViewResult GetJobsAvailable(long id)
        {
            industry current = _db.industries.FirstOrDefault(i => i.id == id);
            int count = current.company_profile.SelectMany(cp => cp.job_post).Count();
            ViewBag.Count = count;
            return PartialView();
        }

        public ActionResult GetIndustriesOfDay()
        {
            var industries = from t in _db.industries
                             select t;

            return PartialView(industries);
        }

        public PartialViewResult GetJobsOfDay(long id)
        {
            // Lấy danh sách các keyword_ids
            var keywordIds = _db.keywords
                .Where(n => n.industry_id == id)
                .Select(k => k.id)
                .ToList();

            List<long> verifiedJobs = _db.job_post
                        .Where(j => j.job_verify == "verified")
                        .Select(j => j.id)
                        .ToList();

            // Lấy ngày hiện tại
            var today = DateTime.Today;

            // lấy danh sách các job_post_ids
            var jobPostIds = _db.job_post_keyword
                .Where(jpk => keywordIds.Contains(jpk.keyword_id) && verifiedJobs.Contains(jpk.job_post_id))
                .Select(jpk => jpk.job_post_id)
                .ToList();

            List<job_post> jobs = new List<job_post>();

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    // Loại bỏ các job_post đã được ứng tuyển bởi seeker
                    var appliedJobIds = _db.job_application.Where(a => a.seeker_profile_id == seeker.id).Select(a => a.job_post_id);

                    // Lấy danh sách các job_post
                    jobs = _db.job_post
                        .Where(j => jobPostIds.Contains(j.id) &&
                                    j.datebegin.HasValue &&  // Kiểm tra xem giá trị có rỗng không
                                    j.datebegin.Value.Year == today.Year &&
                                    j.datebegin.Value.Month == today.Month &&
                                    j.datebegin.Value.Day == today.Day && 
                                    !appliedJobIds.Contains(j.id)) // bỏ các job_post người dùng đã được ứng tuyển
                        .ToList();
                }
            } 
            else
            {
                // Lấy danh sách các job_post
                jobs = _db.job_post
                    .Where(j => jobPostIds.Contains(j.id) &&
                                j.datebegin.HasValue &&  // Kiểm tra xem giá trị có rỗng không
                                j.datebegin.Value.Year == today.Year &&
                                j.datebegin.Value.Month == today.Month &&
                                j.datebegin.Value.Day == today.Day)
                    .ToList();
            }

            ViewBag.IndustryId = id;
            ViewBag.meta = "find-a-job";

            return PartialView("GetJobsOfDay", jobs);
        }

        public PartialViewResult GetJobStatus(long id) 
        {
            var status_id = _db.job_post.FirstOrDefault(i => i.id == id)?.job_status_id;
            String status = _db.job_status.FirstOrDefault(i => i.id == status_id)?.name;

            if (status == null)
            {
                status = "Unknown";
            }

            String create_time = "Unknown";
            DateTime? datebegin = _db.job_post.Where(i => i.id == id)
                                              .Select(i => i.datebegin)
                                              .FirstOrDefault();
            if (datebegin.HasValue)
            {
                // Tính thời gian đã trôi qua
                TimeSpan elapsedTime = DateTime.Now - datebegin.Value;

                // Định dạng thời gian thành chuỗi "dd/MM/yyyy HH:mm:ss ago"
                create_time = $"{elapsedTime.Days} days, {elapsedTime.Hours} hours, {elapsedTime.Minutes} minutes ago";
            }

            ViewBag.Status = status;
            ViewBag.CreateTime = create_time;
            
            return PartialView(); 
        }

        public PartialViewResult GetJobKeywords(long id)
        {
            var keys = _db.job_post_keyword.Where(n => n.job_post_id == id).ToList();
            List<keyword> keyWords = new List<keyword>();

            foreach (var item in keys)
            {
                keyWords.Add(_db.keywords.FirstOrDefault(i => i.id == item.keyword_id));
            }

            return PartialView(keyWords.Take(2));
        }

        public PartialViewResult GetJobCompany(long id)
        {
            var key = _db.job_post.FirstOrDefault(i => i.id == id)?.company_id;
            company_profile company = _db.company_profile.FirstOrDefault(i => i.id == key);
            ViewBag.Company = company;
            return PartialView();
        }

        public ActionResult GetTopCandidates()
        {
            var topCandidates = _db.seeker_profile.OrderByDescending(c => c.experience)
                                .Take(8)
                                .ToList();

            return PartialView(topCandidates);
        }

        public PartialViewResult GetKeywords(long id)
        {
            var keys = _db.seeker_profile_keyword.Where(n => n.seeker_profile_id == id).ToList();

            List<keyword> keyWords = new List<keyword>();
            foreach (var item in keys)
            {
                keyWords.Add(_db.keywords.FirstOrDefault(i => i.id == item.keyword_id));
            }

            return PartialView("GetKeywords", keyWords);
        }

        public ActionResult GetTopEmployers()
        {
            ViewBag.meta = "find-a-company";

            var employers = _db.company_profile.OrderByDescending(c => c.id)
                                                .Take(10)
                                                .ToList();

            return PartialView(employers);
        }

        public PartialViewResult GetOpenJobs(long id)
        {
            int jobCountForCompany = _db.job_post.Count(j => j.company_id == id);

            ViewBag.Count = jobCountForCompany;
            return PartialView();
        }
    }
}