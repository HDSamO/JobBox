using OnlineJobPortal.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Data.Entity;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Mvc;

namespace OnlineJobPortal.Controllers
{
    public class CompanyController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: Company
        public ActionResult Index(string character, string location, string industry, string keyword,
            string jobPosition, string jobLevel, string jobStatus, string jobType, int? pageNum, int? pageSize)
        {
            if (pageNum == null)
            {
                pageNum = 1;
            }

            if (pageSize == null)
            {
                pageSize = 15;
            }

            IQueryable<company_profile> query = _db.company_profile;

            if (!string.IsNullOrEmpty(industry))
            {
                query = query.Where(c => c.industry.meta.Contains(industry));
            }

            if (!string.IsNullOrEmpty(location))
            {
                query = query.Where(c => c.city.Contains(location));
            }

            if (!string.IsNullOrEmpty(keyword))
            {
                query = query.Where(j => j.job_post.Any(p => p.job_post_keyword.Any(k => k.keyword.meta.Contains(keyword))));
            }

            if (!string.IsNullOrEmpty(character) && character.Length == 1 && char.IsLetter(character[0]) && char.IsUpper(character[0]))
            {
                char upperCaseCharacter = char.ToUpper(character[0]);
                string upperCaseCharacterString = upperCaseCharacter.ToString();
                query = query.Where(c => c.name.StartsWith(upperCaseCharacterString));
            }

            if (!string.IsNullOrEmpty(jobPosition))
            {
                query = query.Where(c => c.job_post.Any(p => p.job_position.meta.Contains(jobPosition)));
            }

            if (!string.IsNullOrEmpty(jobLevel))
            {
                query = query.Where(c => c.job_post.Any(p => p.job_level.meta.Contains(jobLevel)));
            }

            if (!string.IsNullOrEmpty(jobStatus))
            {
                query = query.Where(c => c.job_post.Any(p => p.job_status.meta.Contains(jobStatus)));
            }

            if (!string.IsNullOrEmpty(jobType))
            {
                query = query.Where(c => c.job_post.Any(p => p.job_type.meta.Contains(jobType)));
            }

            int total = query.Count();

            int totalPage = (int)Math.Ceiling((double)total / (int)pageSize); // Số trang tối thiểu là 1
            totalPage = Math.Max(totalPage, 1);

            ViewBag.Total = total; // Tổng số jobs
            ViewBag.TotalPage = totalPage; // Tổng số trang
            ViewBag.PageNum = pageNum; // Trang hiện tại
            ViewBag.PageSize = pageSize; // Kích thước trang

            ViewBag.Character = character;
            ViewBag.Industry = industry;
            ViewBag.Location = location;
            ViewBag.Keyword = keyword;
            ViewBag.JobPosition = jobPosition;
            ViewBag.JobLevel = jobLevel;
            ViewBag.JobStatus = jobStatus;
            ViewBag.JobType = jobType;

            var employers = query.OrderBy(e => e.id);

            return View(employers.ToPagedList((int)pageNum, (int)pageSize));
        }

        public ActionResult Detail(long id)
        {
            var detail = _db.company_profile.Where(i => i.id == id).FirstOrDefault();
            var industry = _db.industries.Where(i => i.id == detail.industry_id).FirstOrDefault();
            var account = _db.accounts.Where(a => a.id == detail.account_id).FirstOrDefault();

            ViewBag.Industry = industry.name;
            ViewBag.PhoneNumber = account.phone_number;
            ViewBag.Email = account.email;

            // Kiểm tra xem có công việc của công ty hay không
            bool hasJobs = _db.job_post.Any(j => j.company_id == id);

            if (hasJobs)
            {
                // Tìm mức lương thấp nhất của công ty
                var minSalary = _db.job_post
                                    .Where(j => j.company_id == id)
                                    .Min(j => j.job_salary);

                // Tìm mức lương cao nhất của công ty
                var maxSalary = _db.job_post
                                    .Where(j => j.company_id == id)
                                    .Max(j => j.job_salary);

                ViewBag.MinSalary = minSalary;
                ViewBag.MaxSalary = maxSalary;
            }
            else
            {
                // Đặt giá trị mặc định cho min và max salary nếu không có công việc của công ty
                ViewBag.MinSalary = 0; // hoặc bất kỳ giá trị mặc định nào bạn muốn
                ViewBag.MaxSalary = 0; // hoặc bất kỳ giá trị mặc định nào bạn muốn
            }

            // Tìm ngày đăng gần nhất của công việc
            var nearestPostDate = _db.job_post
                                    .Where(j => j.company_id == id)
                                    .OrderByDescending(j => j.datebegin)
                                    .Select(j => j.datebegin)
                                    .FirstOrDefault();

            if (nearestPostDate != null)
            {
                // Tính số ngày từ ngày đăng gần nhất đến ngày hiện tại
                int daysSincePosted = (DateTime.Now - nearestPostDate.Value).Days;

                ViewBag.LastestPosted = daysSincePosted;
            }

            return View(detail);
        }

        public PartialViewResult GetLastestJobs(long id)
        {
            List<long> verifiedJobs = _db.job_post
                        .Where(j => j.job_verify == "verified")
                        .Select(j => j.id)
                        .ToList();

            List<job_post> jobs = new List<job_post>();

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    var appliedJobIds = _db.job_application
                        .Where(ja => ja.seeker_profile_id == seeker.id)
                        .Select(ja => ja.job_post_id)
                        .ToList();

                    jobs = _db.job_post
                        .Where(j => j.company_id == id && !appliedJobIds.Contains(j.id) && verifiedJobs.Contains(j.id)) // Lọc các công việc đã được ứng tuyển bởi seeker
                        .OrderByDescending(j => j.datebegin) // Sắp xếp theo ngày đăng
                        .ToList();
                }
            }
            else
            {
                jobs = _db.job_post
                    .Where(j => j.company_id == id && verifiedJobs.Contains(j.id)) // Filter job posts for the specific company
                    .OrderByDescending(j => j.datebegin) // Order by the posting date in descending order
                    .Take(2) // Take the top 2 job posts
                    .ToList();
            }

            var company = _db.company_profile.Where(i => i.id == id).FirstOrDefault();

            ViewBag.Name = company.name;
            ViewBag.City = company.city;
            ViewBag.Country = company.country;

            return PartialView(jobs);
        }

        public PartialViewResult GetAmountJobCompany(long id)
        {
            int count = _db.job_post
                           .Count(j => j.company_id == id);
            ViewBag.Count = count;
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
                .Sum(industry => _db.company_profile.Count(company => company.industry_id == industry.id));

            ViewBag.Count = totalJobCount;

            return PartialView(industries);
        }

        public PartialViewResult GetAmountCompanyIndustry(long id)
        {
            int count = _db.company_profile.Count(company => company.industry_id == id);

            ViewBag.Count = count;
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

        public PartialViewResult GetAmountCompanyKeyword(long id)
        {
            int count = _db.company_profile
                .Count(company => _db.keywords
                    .Any(
                        keyword => keyword.id == id && company.industry_id == keyword.industry_id
                    )
                );

            /*int count = _db.company_profile
                .Where(company => company.industry_id.HasValue && _db.keywords
                        .Any(keyword => keyword.id == id && keyword.industry_id == company.industry_id)
                ).Count();*/

            ViewBag.Count = count;
            return PartialView();
        }

        public PartialViewResult GetJobPosition()
        {
            var positions = from t in _db.job_position
                            select t;

            return PartialView(positions);
        }

        public PartialViewResult GetAmountCompanyPosition(int id)
        {
            /*int count = _db.company_profile
                .Count(company => _db.job_post
                    .Any(
                        jobPost => jobPost.job_position_id == id && company.id == jobPost.company_id
                     )
                 );*/

            int count = _db.job_post
                .Where(jp => jp.job_position_id == id)
                .Select(jp => jp.company_id)
                .Distinct()
                .Count();

            ViewBag.Count = count;
            return PartialView();
        }

        public PartialViewResult GetJobLevel()
        {
            var levels = from t in _db.job_level
                         select t;

            return PartialView(levels);
        }

        public PartialViewResult GetAmountCompanyLevel(int id)
        {
            /*int count = _db.company_profile
                .Count(company => _db.job_post
                    .Any(
                        jobPost => jobPost.job_level_id == id && company.id == jobPost.company_id
                     )
                 );*/

            int count = _db.job_post
                .Where(jp => jp.job_level_id == id)
                .Select(jp => jp.company_id)
                .Distinct()
                .Count();

            ViewBag.Count = count;
            return PartialView();
        }

        public PartialViewResult GetJobStatus()
        {
            var status = from t in _db.job_status
                         select t;

            return PartialView(status);
        }

        public PartialViewResult GetAmountCompanyStatus(int id)
        {
            int count = _db.job_post
                .Where(jp => jp.job_status_id == id)
                .Select(jp => jp.company_id)
                .Distinct()
                .Count();

            ViewBag.Count = count;
            return PartialView();
        }

        public PartialViewResult GetJobType()
        {
            var types = from t in _db.job_type
                        select t;

            return PartialView(types);
        }

        public PartialViewResult GetAmountCompanyType(int id)
        {
            int count = _db.job_post
                .Where(jp => jp.job_type_id == id)
                .Select(jp => jp.company_id)
                .Distinct()
                .Count();

            ViewBag.Count = count;
            return PartialView();
        }

        public PartialViewResult GetSimilarCompanies(long id)
        {
            var currCompany = _db.company_profile.Where(c => c.id == id).FirstOrDefault();

            var companies = (from company in _db.company_profile
                             where company.id != id && company.industry_id == currCompany.industry_id
                             select company)
                            .Take(3)
                            .ToList();

            return PartialView(companies);
        }
    }
}