using System.Web.Mvc;

namespace OnlineJobPortal.Areas.Employer
{
    public class EmployerAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "employer";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            // Candidates

            context.MapRoute(
                "Candidates",
                "employer/candidates",
                new { controller = "Candidate", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            // My Job

            context.MapRoute(
                "My Jobs",
                "employer/jobs-list",
                new { controller = "JobList", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            context.MapRoute(
                "Post A Job",
                "employer/post-a-job",
                new { controller = "JobList", action = "Create", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            // My Task

            context.MapRoute(
                "Tasks List",
                "employer/my-tasks-list",
                new { controller = "MyTask", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            // My Company

            context.MapRoute(
                "My Company",
                "employer/company-settings",
                new { controller = "MyCompany", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            // Dashboard

            context.MapRoute(
                "Dashboard",
                "employer/dashboard",
                new { controller = "Dashboard", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            context.MapRoute(
                "Logout",
                "employer/logout",
                new { controller = "Dashboard", action = "Logout", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );

            context.MapRoute(
                "Employer_default",
                "employer/{controller}/{action}/{id}",
                new { controller = "Dashboard", action = "Index", id = UrlParameter.Optional },
                namespaces: new string[] { "OnlineJobPortal.Areas.Employer.Controllers" }
            );
        }
    }
}