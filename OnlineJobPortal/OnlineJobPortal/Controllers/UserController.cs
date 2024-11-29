using Microsoft.Win32;
using OnlineJobPortal.Help;
using OnlineJobPortal.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing.Printing;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Runtime.InteropServices;
using System.Security.Principal;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using System.Web.Razor.Tokenizer.Symbols;

namespace OnlineJobPortal.Controllers
{
    public class UserController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: User
        public ActionResult Index()
        {
            return View();
        }

        // HTTP GET
        public ActionResult Login(String returnUrl)
        {
            login_view model = new login_view();
            model.account = new account();

            ViewBag.ReturnUrl = returnUrl;

            return View(model);
        }

        // HTTP POST
        [HttpPost]
        public ActionResult Login(login_view model, string returnUrl)
        {
            var username = model.account.username;
            var password = SecurityUtils.SaltedHash(model.account.password);

            var accountCheck = _db.accounts.SingleOrDefault(x => x.username.Equals(username) && x.password.Equals(password));

            HttpCookie cookie = new HttpCookie("CurrentAccount");

            if (accountCheck != null)
            {
                if (model.rememberMe)
                {
                    cookie["username"] = username;
                    cookie["password"] = password;
                    cookie.Expires = DateTime.Now.AddDays(2); // Cookie hết hạn sau 2 ngày
                    HttpContext.Response.Cookies.Add(cookie);
                }
                else
                {
                    // Xóa cookie nếu không chọn "Remember Me"
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    HttpContext.Response.Cookies.Add(cookie);
                }

                Session["CurrentAccount"] = accountCheck;

                if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/") && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                {
                    return Redirect(returnUrl);
                }
                else
                {
                    if (accountCheck.role_id == 1)
                    {
                        return RedirectToAction("Index", "Employer");
                    }
                    else
                    {
                        return RedirectToAction("Index", "Home");
                    }
                }
            }
            else
            {
                ViewBag.LoginFail = "Login failed, Invalid username or password";
                return View();
            }
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

        private bool IsPasswordValid(string password)
        {
            // Kiểm tra độ dài của mật khẩu
            if (password.Length < 6)
            {
                return false;
            }

            // Kiểm tra xem mật khẩu có ít nhất một chữ in hoa, một chữ thường và một số
            bool hasUpperCase = password.Any(char.IsUpper);
            bool hasLowerCase = password.Any(char.IsLower);
            bool hasDigit = password.Any(char.IsDigit);

            // Trả về true nếu mật khẩu thỏa mãn tất cả các điều kiện
            return hasUpperCase && hasLowerCase && hasDigit;
        }

        private bool IsValidEmail(string email)
        {
            // Pattern để kiểm tra định dạng email của Gmail
            string pattern = @"^[\w-\.]+@gmail\.com$";

            // Sử dụng Regex để kiểm tra định dạng email
            return Regex.IsMatch(email, pattern);
        }

        private bool IsPhoneNumberValid(string phoneNumber)
        {
            // Kiểm tra xem mỗi ký tự trong chuỗi là số hay không
            foreach (char c in phoneNumber)
            {
                if (!char.IsDigit(c))
                {
                    return false;
                }
            }

            // Trả về true nếu tất cả các ký tự đều là số
            return true;
        }

        private bool IsValidation(account account, string confirmPassword, string title)
        {
            if (account.password != confirmPassword)
            {
                ModelState.AddModelError("confirmPassword", "The password and confirmation password do not match.");
                return false;
            }

            if (!IsValidEmail(account.email))
            {
                ModelState.AddModelError(title + ".email", "Invalid email format (format: localPart@domainName).");
                return false;
            }

            if (!IsPasswordValid(account.password))
            {
                ModelState.AddModelError(title + ".password", "The password at least 6 characters long with at least one uppercase letter, one lowercase letter, and one digit.");
                return false;
            }

            if (!IsPhoneNumberValid(account.phone_number))
            {
                ModelState.AddModelError(title + ".phone_number", "Please ensure to input only numerical values");
                return false;
            }

            return true;
        }

        // HTTP GET
        public ActionResult RegisterPersonal()
        {
            register_view model = new register_view();

            model.seekerAccount = new account();
            model.seeker = new seeker_profile();

            return View(model);
        }

        // HTTP POST
        [HttpPost]
        public ActionResult RegisterPersonal(register_view model)
        {
            account account = null;
            string confirmPassword = "";

            if (model.seeker != null)
            {
                account = model.seekerAccount;
                model.seekerAccount.role_id = 2;
                confirmPassword = model.confirmPassword;
            }

            // Truy vấn username từ cơ sở dữ liệu
            account accountCheck = _db.accounts.FirstOrDefault(x => x.username.Equals(model.seekerAccount.username));

            if (accountCheck != null)
            {
                ModelState.AddModelError("seekerAccount.username", "Username already exists");
                return View(model);
            }

            if (IsValidation(account, confirmPassword, "seekerAccount"))
            {
                account.password = SecurityUtils.SaltedHash(account.password);
                account.meta = ConvertToMeta(account.username);
                account.datebegin = DateTime.Now;
                account.is_active = true;
                account.hide = true;

                // Lấy giá trị lớn nhất của cột 'order'
                int maxAccountOrder = _db.accounts.Max(p => p.order) ?? 1;
                account.order = maxAccountOrder + 1;

                _db.accounts.Add(account);
                _db.SaveChanges();

                model.seeker.account_id = account.id;
                model.seeker.meta = ConvertToMeta(model.seeker.first_name) + "-" + ConvertToMeta(model.seeker.last_name);
                model.seeker.datebegin = DateTime.Now;
                model.seeker.hide = true;

                // Lấy giá trị lớn nhất của cột 'order'
                int maxOrder = _db.seeker_profile.Max(p => p.order) ?? 1;
                model.seeker.order = maxOrder + 1;

                _db.seeker_profile.Add(model.seeker);
                _db.SaveChanges();

                return RedirectToAction("Login", "User"); // Chuyển hướng sau khi tạo tài khoản thành công
            }

            return View(model);
        }

        // HTTP GET
        public ActionResult RegisterCompany()
        {
            register_view model = new register_view();

            model.companyAccount = new account();
            model.company = new company_profile();

            Session["Industries"] = (from t in _db.industries
                                     where t.hide == true
                                     orderby t.order ascending
                                     select t).ToList();

            return View(model);
        }

        // HTTP POST
        [HttpPost]
        public ActionResult RegisterCompany(register_view model)
        {
            account account = null;
            string confirmPassword = "";

            if (model.companyAccount != null)
            {
                account = model.companyAccount;
                model.companyAccount.role_id = 1;
                confirmPassword = model.confirmPassword;
            }

            // Truy vấn username từ cơ sở dữ liệu
            account accountCheck = null;
            if (_db != null && _db.accounts != null)
            {
                accountCheck = _db.accounts.FirstOrDefault(x => x.username.Equals(model.seekerAccount.username));

                if (accountCheck != null)
                {
                    ModelState.AddModelError("companyAccount.username", "Username already exists");
                    return View(model);
                }
            }

            if (IsValidation(account, confirmPassword, "companyAccount"))
            {
                account.password = SecurityUtils.SaltedHash(account.password);
                account.meta = ConvertToMeta(account.username);
                account.datebegin = DateTime.Now;
                account.is_active = true;
                account.hide = true;

                // Lấy giá trị lớn nhất của cột 'order'
                int maxAccountOrder = _db.accounts.Max(p => p.order) ?? 1;
                account.order = maxAccountOrder + 1;

                _db.accounts.Add(account);
                _db.SaveChanges();

                model.company.account_id = account.id;
                model.company.meta = ConvertToMeta(model.company.name);
                model.company.datebegin = DateTime.Now;
                model.company.hide = true;

                // Lấy giá trị lớn nhất của cột 'order' cho industry được chọn
                int maxOrder = _db.company_profile
                    .Where(c => c.industry_id == model.company.industry_id)
                    .Max(p => (int?)p.order) ?? 1;

                model.company.order = maxOrder + 1;

                _db.company_profile.Add(model.company);
                _db.SaveChanges();

                return RedirectToAction("Login", "User"); // Chuyển hướng sau khi tạo tài khoản thành công
            }

            return View(model);
        }

        public ActionResult Logout()
        {
            Session.Abandon();

            HttpCookie cookie = Request.Cookies["CurrentAccount"];
            if (cookie != null)
            {
                cookie.Expires = DateTime.Now.AddDays(-1);
                HttpContext.Response.Cookies.Add(cookie);
            }

            return RedirectToAction("Index", "Home");
        }

        [NonAction]
        public void SendVerificationLinkEmail(string emailID, string activationCode)
        {
            var verifyUrl = "/reset-password/" + activationCode;
            var link = Request.Url.AbsoluteUri.Replace(Request.Url.PathAndQuery, verifyUrl);

            var fromEmail = new MailAddress("jobboxwebsite@gmail.com", "Jobbox Website");
            var toEmail = new MailAddress(emailID);
            var fromEmailPassword = "jphu hsxu ighs qhgs";

            string subject = "Reset Password";
            string body = "Hi,<br/>We got request for reset your account password. Please click on the below link to reset your password" +
                "<br/><br/><a href=" + link + ">Reset Password link</a>";

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromEmail.Address, fromEmailPassword)
            };

            using (var message = new MailMessage(fromEmail, toEmail)
            {
                Subject = subject,
                Body = body,
                IsBodyHtml = true
            })

            smtp.Send(message);
        }

        [HttpGet]
        public ActionResult ForgotPassword()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ForgotPassword(string username)
        {
            // Verify email
            // Generate Reset password link
            // Send Email

            string message = "";
            bool status = false;

            var account = _db.accounts.Where(a => a.username == username).FirstOrDefault();
            if (account != null)
            {
                // Send email for reset password
                string resetCode = Guid.NewGuid().ToString();
                SendVerificationLinkEmail(account.email, resetCode);
                
                account.reset_password_code = resetCode;
                _db.SaveChanges();

                message = "Reset password link has been sent to your email";
            }
            else
            {
                message = "Account not found";
                
            }

            ViewBag.Message = message;
            return View();
        }

        public ActionResult ResetPassword(string id)
        {
            // Verify the reset password link
            // Find account associated with this link
            // Redirect to reset password page

            var account = _db.accounts.Where(a => a.reset_password_code == id).FirstOrDefault();
            if (account != null)
            {
                reset_password model = new reset_password();
                model.resetCode = id;
                return View(model);
            }
            else
            {
                return HttpNotFound();
            }
        }

        [HttpPost]
        public ActionResult Resetpassword(reset_password model)
        {
            var message = "";

            if (!model.newPassword.Equals(model.reNewPassword))
            {
                ModelState.AddModelError("reNewPassword", "The password and confirmation password do not match.");
                return View(model);
            }

            if (!IsPasswordValid(model.newPassword))
            {
                ModelState.AddModelError("newPassword", "The password at least 6 characters long with at least one uppercase letter, one lowercase letter, and one digit.");
                return View(model);
            }

            var account = _db.accounts.Where(a => a.reset_password_code == model.resetCode).FirstOrDefault();
            if (account != null)
            {
                account.password = SecurityUtils.SaltedHash(model.newPassword);
                account.reset_password_code = "";

                _db.SaveChanges();
                message = "New password updated successfully";
            }
            else
            {
                message = "Something invalid";
            }

            ViewBag.Message = message;
            return View();
        }

        public ActionResult MyProfile()
        {
            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    my_profile profile = new my_profile();
                    profile.account = account;
                    profile.seeker = seeker;

                    List<long> keywordIds = _db.seeker_keyword
                        .Where(k => k.seeker_id == seeker.id)
                        .Select(k => k.keyword_id)
                        .ToList();

                    List<keyword> mySkills = _db.keywords.Where(k => keywordIds.Contains(k.id)).ToList();
                    if (mySkills != null)
                    {
                        profile.my_skills = mySkills;
                    }
                    else
                    {
                        profile.my_skills = new List<keyword>();
                    }

                    List<keyword> keyword = _db.keywords.ToList();
                    if (keyword != null)
                    {
                        profile.all_skills = keyword;
                    }
                    else
                    {
                        profile.all_skills = new List<keyword>();
                    }

                    return View(profile);
                }

                return RedirectToAction("Login", "User");
            }

            return RedirectToAction("Login", "User");
        }

        [HttpPost]
        public ActionResult MyProfile(my_profile model)
        {
            account account = _db.accounts.Find(model.account.id);

            var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
            List<long> keywordIds = _db.seeker_keyword
                        .Where(k => k.seeker_id == seeker.id)
                        .Select(k => k.keyword_id)
                        .ToList();

            List<keyword> mySkills = _db.keywords.Where(k => keywordIds.Contains(k.id)).ToList();
            if (mySkills != null)
            {
                model.my_skills = mySkills;
            }
            else
            {
                model.my_skills = new List<keyword>();
            }

            List<keyword> keyword = _db.keywords.ToList();
            if (keyword != null)
            {
                model.all_skills = keyword;
            }
            else
            {
                model.all_skills = new List<keyword>();
            }

            // Thực hiện cập nhật thông tin tài khoản và thông tin cá nhân
            if (account != null)
            {
                account.email = model.account.email;
                account.phone_number = model.account.phone_number;

                // Lưu các thay đổi vào cơ sở dữ liệu
                _db.SaveChanges();
            }

            if (seeker != null)
            {
                seeker.first_name = model.seeker.first_name;
                seeker.last_name = model.seeker.last_name;
                seeker.current_salary = model.seeker.current_salary;
                seeker.low_salary_range = model.seeker.low_salary_range;
                seeker.high_salary_range = model.seeker.high_salary_range;
                seeker.date_of_birth = model.seeker.date_of_birth;
                seeker.gender = model.seeker.gender;
                seeker.title = model.seeker.title;
                seeker.about = model.seeker.about;
                seeker.experience = model.seeker.experience;
                seeker.desc_experience = model.seeker.desc_experience;
                seeker.education = model.seeker.education;
                seeker.desc_education = model.seeker.desc_education;
                seeker.country = model.seeker.country;
                seeker.city = model.seeker.city;
                seeker.address = model.seeker.address;

                seeker.hide = model.seeker.hide;
                seeker.order = model.seeker.order;
                seeker.meta = model.seeker.meta;
                seeker.datebegin = DateTime.Now;

                _db.SaveChanges();
            }

            return View(model);
        }

        [HttpPost]
        public ActionResult SaveSkill(int skillId, int percent)
        {
            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    seeker_keyword skill = new seeker_keyword();
                    skill.keyword_id = skillId;
                    skill.seeker_id = seeker.id;
                    skill.percent = percent;
                    skill.hide = true;
                    skill.datebegin = DateTime.Now;
                    var keyword = _db.keywords.Where(k => k.id == skillId).FirstOrDefault();
                    skill.meta = keyword.meta + "-" + percent;

                    // Lấy giá trị lớn nhất của cột 'order'
                    int maxOrder = _db.seeker_keyword.Where(sp => sp.seeker_id == seeker.id).Max(p => p.order) ?? 1;
                    skill.order = maxOrder + 1;

                    _db.seeker_keyword.Add(skill);
                    _db.SaveChanges();

                    return Json(new { success = true });  
                }
            }

            return RedirectToAction("Login", "User");
        }

        [HttpPost]
        public ActionResult DeleteSkill(int skillId)
        {
            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    var skillToDelete = _db.seeker_keyword.Where(sk => sk.keyword_id == skillId && sk.seeker_id == seeker.id).SingleOrDefault();
                    if (skillToDelete != null)
                    {
                        _db.seeker_keyword.Remove(skillToDelete);
                        _db.SaveChanges();

                        return Json(new { success = true });
                    }
                    else
                    {
                        return Json(new { success = false, errorMessage = "Skill not found." });
                    }
                }
            }

            return RedirectToAction("Login", "User");
        }

        public ActionResult MyJob(int? pageNum, int? pageSize)
        {
            if (pageNum == null)
            {
                pageNum = 1;
            }

            if (pageSize == null)
            {
                pageSize = 4;
            }

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    my_profile profile = new my_profile();
                    profile.account = account;
                    profile.seeker = seeker;

                    // Lấy các công việc seeker đã ứng tuyển nhưng đang Submitted
                    var appliedJobIds = _db.job_application
                        .Where(ja => ja.seeker_profile_id == seeker.id && ja.application_status == 0)
                        .Select(ja => ja.job_post_id)
                        .ToList();

                    var jobs = _db.job_post
                        .Where(j => appliedJobIds.Contains(j.id))
                        .ToList();

                    int total = jobs.Count();

                    int totalPage = (int)Math.Ceiling((double)total / (int)pageSize); // Số trang tối thiểu là 1
                    totalPage = Math.Max(totalPage, 1);

                    profile.my_jobs = jobs.ToPagedList((int)pageNum, (int)pageSize);

                    ViewBag.Total = total; // Tổng số jobs
                    ViewBag.TotalPage = totalPage; // Tổng số trang
                    ViewBag.PageNum = pageNum; // Trang hiện tại
                    ViewBag.PageSize = pageSize; // Kích thước trang

                    return View(profile);
                }
            }

            return RedirectToAction("Login", "User");
        }

        public ActionResult AcceptedJob(int? pageNum, int? pageSize)
        {
            if (pageNum == null)
            {
                pageNum = 1;
            }

            if (pageSize == null)
            {
                pageSize = 4;
            }

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    my_profile profile = new my_profile();
                    profile.account = account;
                    profile.seeker = seeker;

                    // Lấy các công việc seeker đã ứng tuyển và đã được accepted
                    var appliedJobIds = _db.job_application
                        .Where(ja => ja.seeker_profile_id == seeker.id && ja.application_status == 1)
                        .Select(ja => ja.job_post_id)
                        .ToList();

                    var jobs = _db.job_post
                        .Where(j => appliedJobIds.Contains(j.id))
                    .ToList();
                    int total = jobs.Count();

                    int totalPage = (int)Math.Ceiling((double)total / (int)pageSize); // Số trang tối thiểu là 1
                    totalPage = Math.Max(totalPage, 1);
                    profile.accepted_jobs = jobs.ToPagedList((int)pageNum, (int)pageSize);

                    ViewBag.Total = total; // Tổng số jobs
                    ViewBag.TotalPage = totalPage; // Tổng số trang
                    ViewBag.PageNum = pageNum; // Trang hiện tại
                    ViewBag.PageSize = pageSize; // Kích thước trang

                    return View(profile);
                }
            }

            return RedirectToAction("Login", "User");
        }

        public ActionResult RejectedJob(int? pageNum, int? pageSize)
        {
            if (pageNum == null)
            {
                pageNum = 1;
            }

            if (pageSize == null)
            {
                pageSize = 4;
            }

            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    my_profile profile = new my_profile();
                    profile.account = account;
                    profile.seeker = seeker;

                    // Lấy các công việc seeker đã ứng tuyển và đã được accepted
                    var appliedJobIds = _db.job_application
                        .Where(ja => ja.seeker_profile_id == seeker.id && ja.application_status == 1)
                        .Select(ja => ja.job_post_id)
                        .ToList();

                    var jobs = _db.job_post
                        .Where(j => appliedJobIds.Contains(j.id))
                    .ToList();
                    int total = jobs.Count();

                    int totalPage = (int)Math.Ceiling((double)total / (int)pageSize); // Số trang tối thiểu là 1
                    totalPage = Math.Max(totalPage, 1);
                    profile.rejected_jobs = jobs.ToPagedList((int)pageNum, (int)pageSize);

                    ViewBag.Total = total; // Tổng số jobs
                    ViewBag.TotalPage = totalPage; // Tổng số trang
                    ViewBag.PageNum = pageNum; // Trang hiện tại
                    ViewBag.PageSize = pageSize; // Kích thước trang

                    return View(profile);
                }
            }

            return RedirectToAction("Login", "User");
        }

        public ActionResult ChangePassword()
        {
            var account = Session["CurrentAccount"] as account;
            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    my_profile profile = new my_profile();
                    profile.account = account;
                    profile.seeker = seeker;

                    return View(profile);
                }
            }

            return View();
        }

        [HttpPost]
        public ActionResult ChangePassword(my_profile model)
        {
            string password = SecurityUtils.SaltedHash(model.oldPassword);
            string newPassword = model.newPassword;
            string reNewPassword = model.reNewPassword;

            var account = _db.accounts.Find(model.account.id);
            model.account = account;

            if (account != null)
            {
                var seeker = _db.seeker_profile.FirstOrDefault(s => s.account_id == account.id);
                if (seeker != null)
                {
                    model.seeker = seeker;
                }

                if (!password.Equals(account.password))
                {
                    ModelState.AddModelError("oldPassword", "The password is incorrect!");
                    return View(model);
                }
            }

            if (!IsPasswordValid(newPassword))
            {
                ModelState.AddModelError("newPassword", "The password at least 6 characters long with at least one uppercase letter, one lowercase letter, and one digit.");
                return View(model);
            }

            if (!newPassword.Equals(reNewPassword))
            {
                ModelState.AddModelError("reNewPassword", "The new password and confirmation new password do not match.");
                return View(model);
            }

            account temp = _db.accounts.Find(account.id);
            temp.role_id = account.role_id;
            temp.email = account.email;
            temp.username = account.username;
            temp.password = SecurityUtils.SaltedHash(newPassword);
            temp.is_active = account.is_active;
            temp.phone_number = account.phone_number;

            temp.hide = account.hide;
            temp.order = account.order;
            temp.meta = account.meta;
            temp.datebegin = DateTime.Now;

            _db.SaveChanges();

            ViewBag.Message = "Password has been changed successfully";

            return View(model);
        }

        public ActionResult Detail(long id)
        {
            var detail = _db.seeker_profile.Where(s => s.id == id).FirstOrDefault();
            var account = _db.accounts.Where(a => a.id == detail.account_id).FirstOrDefault();

            ViewBag.PhoneNumber = account.phone_number;
            ViewBag.Email = account.email;

            return View(detail);
        }

        public PartialViewResult GetProfessionalSkills(long id)
        {
            var seekerKeywords = _db.seeker_keyword.Where(sk => sk.seeker_id == id).ToList();

            ViewBag.Count = seekerKeywords.Count;

            return PartialView(seekerKeywords);
        }

        public PartialViewResult GetKeywordName(long id)
        {
            var keyword = _db.keywords.Where(k => k.id == id).FirstOrDefault();

            return PartialView(keyword);
        }
    }
}