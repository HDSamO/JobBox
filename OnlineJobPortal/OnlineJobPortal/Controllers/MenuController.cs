using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineJobPortal.Models;
using System.Web.Mvc;

namespace OnlineJobPortal.Controllers
{
    public class MenuController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: Menu
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetMenu()
        {
            var parents = _db.menus.Where(n => n.parentId == 0 && n.hide == true && n.type == 1).ToList();
            var hasChildIds = new HashSet<int>(_db.menus
                .Where(menu => menu.parentId != 0 && menu.type == 1)
                .Select(menu => menu.parentId));

            ViewBag.hasChild = hasChildIds.ToList();
            return PartialView(parents);
        }

        public PartialViewResult LoadChildren(int id)
        {
            List<menu> children = new List<menu>();
            children = _db.menus.Where(n => (n.parentId == id)).ToList();
            ViewBag.Count = children.Count;
            return PartialView("LoadChildren", children);
        }
    }
}