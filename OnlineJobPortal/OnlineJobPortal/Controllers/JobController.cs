using Microsoft.Ajax.Utilities;
using OnlineJobPortal.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Razor.Tokenizer.Symbols;

namespace OnlineJobPortal.Controllers
{
    public class JobController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: Job
        public ActionResult Index(string industry, string location, string keywordName, string keywordMeta, 
            int? typeSalary, string jobPosition, string jobLevel, string jobStatus, 
            int? typePosted, string jobType, string company, int? pageNum, int? pageSize)
        {
            if (pageNum == null)
            {
                pageNum = 1;
            }

            if (pageSize == null)
            {
                pageSize = 6;
            }

            IQueryable<job_post> query = _db.job_post;

            query = query.Where(j => j.job_verify == "verified");

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    // Loại bỏ các job_post đã được ứng tuyển bởi seeker
                    var appliedJobIds = _db.job_application.Where(a => a.seeker_profile_id == seeker.id).Select(a => a.job_post_id);
                    query = query.Where(j => !appliedJobIds.Contains(j.id));
                }
            }

            if (!string.IsNullOrEmpty(industry))
            {
                query = query.Where(j => j.company_profile.industry.meta.Contains(industry));
            }

            if (!string.IsNullOrEmpty(location))
            {
                query = query.Where(j => j.city.Contains(location));
            }

            if (!string.IsNullOrEmpty(keywordName))
            {
                query = query.Where(j => j.job_post_keyword.Any(k => k.keyword.name.Contains(keywordName)));
            }

            if (!string.IsNullOrEmpty(keywordMeta))
            {
                query = query.Where(j => j.job_post_keyword.Any(k => k.keyword.meta.Contains(keywordMeta)));
            }

            if (typeSalary != null)
            {
                switch (typeSalary)
                {
                    case 1:
                        query = query.Where(j => j.job_salary > 0 && j.job_salary < 50000);
                        break;
                    case 2:
                        query = query.Where(j => j.job_salary >= 50000 && j.job_salary < 100000);
                        break;
                    case 3:
                        query = query.Where(j => j.job_salary >= 100000 && j.job_salary < 150000);
                        break;
                    case 4:
                        query = query.Where(j => j.job_salary >= 150000 && j.job_salary < 200000);
                        break;
                    case 5:
                        query = query.Where(j => j.job_salary >= 200000);
                        break;
                    default:
                        break;
                }
            }

            if (!string.IsNullOrEmpty(jobPosition))
            {
                query = query.Where(j => j.job_position.meta.Contains(jobPosition));
            }

            if (!string.IsNullOrEmpty(jobLevel))
            {
                query = query.Where(j => j.job_level.meta.Contains(jobLevel));
            }

            if (!string.IsNullOrEmpty(jobStatus))
            {
                query = query.Where(j => j.job_status.meta.Contains(jobStatus));
            }

            if (typePosted != null)
            {
                DateTime dateComparison = DateTime.Now;

                switch (typePosted)
                {
                    case 1:
                        dateComparison = DateTime.Now.AddDays(-1);
                        break;
                    case 2:
                        dateComparison = DateTime.Now.AddDays(-7);
                        break;
                    case 3:
                        dateComparison = DateTime.Now.AddDays(-30);
                        break;
                }

                query = query.Where(j => j.datebegin >= dateComparison);
            }

            if (!string.IsNullOrEmpty(jobType))
            {
                query = query.Where(j => j.job_type.meta.Contains(jobType));
            }

            if (!string.IsNullOrEmpty(company))
            {
                query = query.Where(j => j.company_profile.meta.Contains(company));
            }

            int total = query.Count();

            int totalPage = (int)Math.Ceiling((double) total / (int) pageSize); // Số trang tối thiểu là 1
            totalPage = Math.Max(totalPage, 1);

            ViewBag.Total = total; // Tổng số jobs
            ViewBag.TotalPage = totalPage; // Tổng số trang
            ViewBag.PageNum = pageNum; // Trang hiện tại
            ViewBag.PageSize = pageSize; // Kích thước trang

            ViewBag.Industry = industry;
            ViewBag.Location = location;
            ViewBag.KeywordName = keywordName;
            ViewBag.KeywordMeta = keywordMeta;
            ViewBag.TypeSalary = typeSalary;
            ViewBag.JobPosition = jobPosition;
            ViewBag.JobLevel = jobLevel;
            ViewBag.JobStatus = jobStatus;
            ViewBag.TypePosted = typePosted;
            ViewBag.JobType = jobType;
            ViewBag.Company = company;

            var jobs = query.OrderBy(j => j.id);

            return View(jobs.ToPagedList((int) pageNum, (int) pageSize));
        }

        public ActionResult GetBanner()
        {
            int jobCount = _db.job_post.Where(j => j.job_verify == "verified").Count();

            ViewBag.Count = jobCount;

            return PartialView();
        }

        public ActionResult Detail(long id)
        {
            var detail = _db.job_post.Where(i => i.id == id).FirstOrDefault();

            if (detail != null)
            {
                var company = _db.company_profile.Where(i => i.id == detail.company_id).FirstOrDefault();
                var industry = _db.industries.Where(i => i.id == company.industry_id).FirstOrDefault();
                var experience = _db.job_experience.Where(i => i.id == detail.job_experience_id).FirstOrDefault();
                var level = _db.job_level.Where(i => i.id == detail.job_level_id).FirstOrDefault();
                var type = _db.job_type.Where(i => i.id == detail.job_type_id).FirstOrDefault();

                if (company != null)
                {
                    var jobs = _db.job_post.Where(jp => jp.company_id == company.id).ToList();
                    var account = _db.accounts.Where(i => i.id == company.account_id).FirstOrDefault();

                    ViewBag.CompanyName = company.name;
                    ViewBag.CompanyBackground = company.company_background;
                    ViewBag.CompanyImage = company.company_image;
                    ViewBag.Location = company.city + ", " + company.country;
                    ViewBag.CountJobs = jobs.Count;
                    ViewBag.Email = account.email;
                    ViewBag.PhoneNumber = account.phone_number;
                    ViewBag.meta = company.meta;
                    ViewBag.id = company.id;
                }
                
                if (industry != null)
                {
                    ViewBag.Industry = industry.name;
                }

                if (experience != null)
                {
                    ViewBag.Experience = experience.name;
                }

                if (level != null)
                {
                    ViewBag.JobLevel = level.name;
                }

                if (type != null)
                {
                    ViewBag.JobType = type.name;
                }
            }

            return View(detail);
        }

        public PartialViewResult GetSimilarJobs(long id)
        {
            // Lấy danh sách keyword của job_post cụ thể
            List<long> keywordIds = _db.job_post_keyword
                .Where(jpk => jpk.job_post_id == id)
                .Select(jpk => jpk.keyword_id)
                .ToList();

            List<job_post> jobs = new List<job_post>();

            List<long> verifiedJobs = _db.job_post
                        .Where(j => j.job_verify == "verified")
                        .Select(j => j.id)
                        .ToList();

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    // Lấy danh sách job_post_id đã được ứng tuyển bởi seeker
                    List<long> appliedJobIds = _db.job_application
                        .Where(a => a.seeker_profile_id == seeker.id)
                        .Select(a => a.job_post_id)
                        .ToList();

                    // Lấy job_post theo thứ tự giảm dần của job_salary dựa trên keyword và không nằm trong danh sách đã ứng tuyển
                    jobs = _db.job_post_keyword
                        .Where(jpk => keywordIds.Contains(jpk.keyword_id) && 
                            jpk.job_post_id != id && 
                            !appliedJobIds.Contains(jpk.job_post_id) &&
                            verifiedJobs.Contains(jpk.job_post_id)
                         )
                        .GroupBy(jpk => jpk.job_post_id)
                        .Select(group => group.FirstOrDefault().job_post) // Lấy job_post từ group đầu tiên trong mỗi nhóm
                        .OrderByDescending(j => j.job_salary)
                        .Take(6)
                        .ToList();
                }
            } 
            else
            {
                // Lấy job_post theo thứ tự giảm dần của job_salary dựa trên keyword
                jobs = _db.job_post_keyword
                    .Where(jpk => keywordIds.Contains(jpk.keyword_id) && jpk.job_post_id != id && verifiedJobs.Contains(jpk.job_post_id))
                    .GroupBy(jpk => jpk.job_post_id)
                    .Select(group => group.FirstOrDefault().job_post) // Lấy job_post từ group đầu tiên trong mỗi nhóm
                    .OrderByDescending(j => j.job_salary)
                    .Take(6)
                    .ToList();
            }

            var job = _db.job_post.Where(jp => jp.id == id).FirstOrDefault();
            var company = _db.company_profile.Where(i => i.id == job.company_id).FirstOrDefault();
            ViewBag.CompanyLogo = company.company_logo;

            return PartialView(jobs);
        }

        public PartialViewResult GetCompanyName(long id)
        {
            long companyId = _db.job_post.Where(n => n.id == id).FirstOrDefault().company_id;
            company_profile curr = _db.company_profile.Where(n => n.id == companyId).FirstOrDefault();

            return PartialView(curr);
        }

        public PartialViewResult GetJobKeywords(long id)
        {
            var keys = _db.job_post_keyword.Where(n => n.job_post_id == id).ToList();
            List<keyword> keyWords = new List<keyword>();

            foreach (var item in keys)
            {
                keyWords.Add(_db.keywords.FirstOrDefault(i => i.id == item.keyword_id));
            }

            return PartialView(keyWords);
        }

        public PartialViewResult GetStatus(long id)
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

        public ActionResult GetFilters()
        {
            return PartialView();
        }

        public PartialViewResult GetAllIndustries()
        {
            var industries = from t in _db.industries
                             select t;

            int totalJobCount = _db.industries
                .Sum(industry =>
                    _db.job_post.Count(job => job.company_profile.industry_id == industry.id));

            ViewBag.Count = totalJobCount;

            return PartialView(industries);
        }

        public PartialViewResult GetAmountJobIndustry(long id)
        {
            int count = _db.job_post
                .Count(j => j.company_profile.industry_id == id);

            ViewBag.Count = count;
            return PartialView();
        }

        public PartialViewResult GetAmountJobSalary(int id)
        {
            IQueryable<job_post> query = _db.job_post;

            switch (id)
            {
                case 1:
                    query = query.Where(j => j.job_salary > 0 && j.job_salary < 50000);
                    break;
                case 2:
                    query = query.Where(j => j.job_salary >= 50000 && j.job_salary < 100000);
                    break;
                case 3:
                    query = query.Where(j => j.job_salary >= 100000 && j.job_salary < 150000);
                    break;
                case 4:
                    query = query.Where(j => j.job_salary >= 150000 && j.job_salary < 200000);
                    break;
                case 5:
                    query = query.Where(j => j.job_salary >= 200000);
                    break;
                default:
                    break;
            }

            ViewBag.Count = query.Count();
            return PartialView();
        }
        
        public PartialViewResult GetPopularKeyword()
        {
            List<keyword> topKeywords = _db.keywords
                .OrderByDescending(k => k.job_post_keyword.Count)
                .Take(6)
                .ToList();

            return PartialView(topKeywords);
        }

        public PartialViewResult GetAmountJobKeyword(long id)
        {
            int jobCount = _db.job_post_keyword
                .Count(jpk => jpk.keyword_id == id);
            
            ViewBag.Count = jobCount;
            return PartialView();
        }

        public PartialViewResult GetJobPosition()
        {
            var positions = from t in _db.job_position
                           select t;

            return PartialView(positions);
        }

        public PartialViewResult GetAmountJobPosition(int id)
        {
            int jobCount = _db.job_post
                .Count(jpk => jpk.job_position_id == id);

            ViewBag.Count = jobCount;
            return PartialView();
        }

        public PartialViewResult GetJobLevel()
        {
            var levels = from t in _db.job_level
                            select t;

            return PartialView(levels); 
        }

        public PartialViewResult GetAmountJobLevel(int id)
        {
            int jobCount = _db.job_post
                .Count(jpk => jpk.job_level_id == id);

            ViewBag.Count = jobCount;
            return PartialView();
        }

        public PartialViewResult GetJobStatus()
        {
            var status = from t in _db.job_status
                         select t;

            return PartialView(status);
        }

        public PartialViewResult GetAmountJobStatus(int id)
        {
            int jobCount = _db.job_post
                .Count(jpk => jpk.job_status_id == id);

            ViewBag.Count = jobCount;
            return PartialView();
        }

        public PartialViewResult GetAmountJobPosted(int id)
        {
            IQueryable<job_post> query = _db.job_post;
            DateTime startDate;

            switch (id)
            {
                case 1:
                    startDate = DateTime.Today.AddDays(-1);
                    break;
                case 2:
                    startDate = DateTime.Today.AddDays(-7);
                    break;
                case 3:
                    startDate = DateTime.Today.AddDays(-30);
                    break;
                default:
                    startDate = DateTime.MinValue;
                    break;
            }

            ViewBag.Count = query.Count(j => j.datebegin >= startDate);
            return PartialView();
        }

        public PartialViewResult GetJobType()
        {
            var types = from t in _db.job_type
                         select t;

            return PartialView(types);
        }

        public PartialViewResult GetAmountJobType(int id)
        {
            int jobCount = _db.job_post
                .Count(jpk => jpk.job_type_id == id);

            ViewBag.Count = jobCount;
            return PartialView();
        }

        private string ConvertToMeta(string text)
        {
            // Loại bỏ các ký tự đặc biệt và dấu câu
            StringBuilder sb = new StringBuilder();
            foreach (char c in text)
            {
                if (char.IsLetterOrDigit(c) || char.IsWhiteSpace(c))
                {
                    sb.Append(c);
                }
            }

            // Chuyển đổi tất cả các chữ cái thành chữ thường
            string normalizedText = sb.ToString().ToLower();

            // Thay thế các ký tự có dấu thành không dấu
            string unaccentedText = RemoveAccents(normalizedText);

            // Thay thế khoảng trắng bằng dấu gạch ngang
            string metaText = unaccentedText.Replace(" ", "-");

            return metaText;
        }

        private string RemoveAccents(string text)
        {
            // Chuyển đổi các ký tự có dấu thành không dấu
            string formD = text.Normalize(NormalizationForm.FormD);
            StringBuilder sb = new StringBuilder();

            foreach (char ch in formD)
            {
                UnicodeCategory uc = CharUnicodeInfo.GetUnicodeCategory(ch);
                if (uc != UnicodeCategory.NonSpacingMark)
                {
                    sb.Append(ch);
                }
            }

            return sb.ToString().Normalize(NormalizationForm.FormC);
        }

        [HttpGet]
        public ActionResult ApplyJob(long id)
        {
            var jobPost = _db.job_post.Where(i => i.id == id).FirstOrDefault();

            if (jobPost == null)
            {
                // Xử lý trường hợp không tìm thấy jobPost
                return HttpNotFound("Không tìm thấy bài đăng công việc");
            }

            ViewBag.Name = jobPost.job_title;

            var company = _db.company_profile.Where(i => i.id == jobPost.company_id).FirstOrDefault();
            if (company != null)
            {
                ViewBag.Company = company.name;
            }

            apply_job model = new apply_job();
            model.job_Application = new job_application();

            return View(model);
        }

        [HttpPost]
        public ActionResult ApplyJob(apply_job model, long id)
        {
            // Job Post
            var jobPost = _db.job_post.Where(i => i.id == id).FirstOrDefault();
            if (jobPost == null)
            {
                // Xử lý trường hợp không tìm thấy jobPost
                return HttpNotFound("Không tìm thấy bài đăng công việc");
            }
            ViewBag.Name = jobPost.job_title;

            // Company
            var company = _db.company_profile.Where(i => i.id == jobPost.company_id).FirstOrDefault();
            if (company != null)
            {
                ViewBag.Company = company.name;
            }

            // Account
            if (Session["CurrentAccount"] == null)
            {
                string url = "/apply-job/" + jobPost.meta + "/" + jobPost.id;
                return RedirectToAction("Login", "User", new { returnUrl = url });
            }

            var account = Session["CurrentAccount"] as account;
            if (account == null)
            {
                // Ghi log lỗi hoặc xử lý trường hợp account là null
                string url = "/apply-job/" + jobPost.meta + "/" + jobPost.id;
                return RedirectToAction("Login", "User", new { returnUrl = url });
            }

            // Seeker Profile
            var seeker = _db.seeker_profile.Where(i => i.account_id == account.id).FirstOrDefault();
            if (seeker == null)
            {
                // Ghi log lỗi hoặc xử lý trường hợp seeker là null
                string url = "/apply-job/" + jobPost.meta + "/" + jobPost.id;
                return RedirectToAction("Login", "User", new { returnUrl = url });
            }

            // File
            if (model.file_cv != null && model.file_cv.ContentLength > 0)
            {
                string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(model.file_cv.FileName);
                var newFileName = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + ConvertToMeta(fileNameWithoutExtension) + "-" + jobPost.meta;
                var extension = Path.GetExtension(model.file_cv.FileName);
                string newName = newFileName + extension;
                string fileName = Path.GetFileName(newName);
                string path = Path.Combine(Server.MapPath("~/Content/upload/resume"), fileName);

                model.file_cv.SaveAs(path);
                model.job_Application.resume = newFileName;
                model.job_Application.meta = ConvertToMeta(fileNameWithoutExtension) + "-" + jobPost.meta;
            }
            else
            {
                model.job_Application.resume = "default_resume.pdf";
                model.job_Application.meta = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + "-" + jobPost.meta;
            }

            model.job_Application.job_post_id = jobPost.id;
            model.job_Application.seeker_profile_id = seeker.id;
            model.job_Application.application_date = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            model.job_Application.datebegin = Convert.ToDateTime(DateTime.Now.ToShortDateString());
            model.job_Application.application_status = 0;
            model.job_Application.hide = true;
            model.job_Application.order = _db.job_application.Max(j => j.order) ?? 1;

            _db.job_application.Add(model.job_Application);
            _db.SaveChanges();

            return RedirectToAction("Index", "Home");
        }

    }
}