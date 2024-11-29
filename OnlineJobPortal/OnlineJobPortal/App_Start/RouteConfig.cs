using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace OnlineJobPortal
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            // User Controller

            routes.MapRoute(
                name: "Login",
                url: "auth/login",
                defaults: new { controller = "User", action = "Login", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Register Personal",
                url: "auth/register/personal-account",
                defaults: new { controller = "User", action = "RegisterPersonal", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Register Company",
                url: "auth/register/company-account",
                defaults: new { controller = "User", action = "RegisterCompany", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Forgot Password",
                url: "forgot-password",
                defaults: new { controller = "User", action = "ForgotPassword", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Reset Password",
                url: "reset-password/{id}",
                defaults: new { controller = "User", action = "ResetPassword", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Profile",
                url: "profile",
                defaults: new { controller = "User", action = "MyProfile", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Save Skill",
                url: "add-seeker-keyword",
                defaults: new { controller = "User", action = "SaveSkill", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Delete Skill",
                url: "delete-seeker-keyword",
                defaults: new { controller = "User", action = "DeleteSkill", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Change Password",
                url: "change-password",
                defaults: new { controller = "User", action = "ChangePassword", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "My Job",
                url: "my-jobs",
                defaults: new { controller = "User", action = "MyJob", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Accepted Job",
                url: "accepted-jobs",
                defaults: new { controller = "User", action = "AcceptedJob", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Rejected Job",
                url: "rejected-jobs",
                defaults: new { controller = "User", action = "RejectedJob", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Candidate Detail",
                url: "candidates/{meta}/{id}",
                defaults: new { controller = "User", action = "Detail", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            // Job Controller

            routes.MapRoute(
                name: "Jobs List",
                url: "find-a-job/jobs-list",
                defaults: new { controller = "Job", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );


            routes.MapRoute(
                name: "Find Job By Keyword",
                url: "find-jobs-by-keyword/{meta}",
                defaults: new { controller = "Job", action = "GetJobsByKeyword", meta = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Find Job By Industry",
                url: "find-jobs-by-industry/{meta}",
                defaults: new { controller = "Job", action = "GetJobsByIndustry", meta = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Job Detail",
                url: "find-a-job/{meta}/{id}",
                defaults: new { controller = "Job", action = "Detail", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Apply Job",
                url: "apply-job/{meta}/{id}",
                defaults: new { controller = "Job", action = "ApplyJob", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            // Company Contoller

            routes.MapRoute(
                name: "Companies Grid",
                url: "find-a-company/companies-grid",
                defaults: new { controller = "Company", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Company Detail",
                url: "find-a-company/{meta}/{id}",
                defaults: new { controller = "Company", action = "Detail", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            // Blog Controller

            routes.MapRoute(
                name: "Blog List",
                url: "news",
                defaults: new { controller = "Blog", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Blog Detail",
                url: "news/{meta}/{id}",
                defaults: new { controller = "Blog", action = "Detail", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            // Home Controller

            routes.MapRoute(
                name: "About Us",
                url: "about-us",
                defaults: new { controller = "Home", action = "About", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Contact Us",
                url: "contact-us",
                defaults: new { controller = "Home", action = "Contact", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Controllers" }
            );
        }
    }
}
