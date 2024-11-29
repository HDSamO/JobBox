using OnlineJobPortal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineJobPortal.Areas.Employer.Controllers
{
    public class MenuController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: Employer/Menu
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetMenu()
        {
            var parents = _db.menus.Where(n => n.parentId == 0 && n.hide == true && n.type == 2).ToList();
            return PartialView(parents);
        }
    }
}