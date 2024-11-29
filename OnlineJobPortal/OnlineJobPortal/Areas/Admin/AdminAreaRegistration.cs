using System.Web.Mvc;

namespace OnlineJobPortal.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            

            context.MapRoute(
                "Admin Login",
                "admin/login",
                new { controller = "AdminAuthentication", action = "Login", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin Dashboard",
                "admin/dashboard",
                new { controller = "Dashboard", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin Candidates",
                "admin/candidates",
                new { controller = "SeekerProfile", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin Recruiters",
                "admin/recruiters",
                new { controller = "CompanyProfile", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin Job Posts",
                "admin/job-post",
                new { controller = "JobPost", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin Verify",
                "admin/verify-queue",
                new { controller = "JobPost", action = "VerifyQueue", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin Logout",
                "admin/logout",
                new { controller = "AdminAuthentication", action = "Logout", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );

            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Admin.Controllers" }
            );
        }
    
    }
}