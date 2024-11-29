using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineJobPortal.Areas.Employer.Controllers
{
    public class MyJobController : Controller
    {
        // GET: Employer/MyJob
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult PostJob()
        {
            return View();
        }
    }
}