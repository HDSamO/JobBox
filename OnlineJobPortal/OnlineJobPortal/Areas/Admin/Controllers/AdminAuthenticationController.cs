using OnlineJobPortal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineJobPortal.Areas.Admin.Controllers
{
    public class AdminAuthenticationController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: Admin/AdminAuthentication
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        // POST: Admin/AdminAuthentication/Login
        [HttpPost]
        public ActionResult Login(account account)  
        {
            var username = account.username;
            var password = account.password;

            var accountCheck = _db.accounts.SingleOrDefault(x => x.username.Equals(username) && x.password.Equals(password));

            if (accountCheck != null)
            {
                Session["CurrentAccount"] = accountCheck;

                if (accountCheck.role_id == 3)
                {
                    return RedirectToAction("Index", "Dashboard");
                }
                else 
                {
                    ViewBag.LoginFail = "Login failed, not an admin";
                    return View();
                }
            }
            else
            {
                ViewBag.LoginFail = "Login failed, Invalid username or password";
                return View();
            }
        }

        public ActionResult Logout()
        {
            Session["CurrentAccount"] = null;
            return Redirect("/admin/login");
        }

    }
}