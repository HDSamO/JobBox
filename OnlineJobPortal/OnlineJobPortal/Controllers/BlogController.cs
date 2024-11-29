 using OnlineJobPortal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineJobPortal.Controllers
{
    public class BlogController : Controller
    {
        OnlineJobPortalEntities _db = new OnlineJobPortalEntities();

        // GET: Blog
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetTopNews()
        {
            var blog = _db.blogs.Where(b => b.hide == true && b.datebegin <= DateTime.Now)
                               .OrderByDescending(b => b.datebegin)
                               .Take(1)
                               .FirstOrDefault();

            return PartialView(blog);
        }

        public ActionResult GetLastestPosts()
        {
            var blogs = _db.blogs.Where(b => b.hide == true && b.datebegin <= DateTime.Now)
                               .OrderByDescending(b => b.datebegin)
                               .Take(6)
                               .ToList();

            return PartialView(blogs);
        }

        public PartialViewResult GetKeyword(long id)
        {
            var result = (from bk in _db.blog_keyword
                          join k in _db.keywords on bk.keyword_id equals k.id
                          where bk.blog_id == id
                          select k)
                          .Take(3)
                          .ToList();

            return PartialView(result);
        }

        public ActionResult Detail(long id)
        {
            var detail = _db.blogs.Where(b => b.id == id).FirstOrDefault();

            return View(detail);
        }

        public PartialViewResult GetTagKeywords(long id)
        {
            var result = (from bk in _db.blog_keyword
                          join k in _db.keywords on bk.keyword_id equals k.id
                          where bk.blog_id == id
                          select k)
                          .Take(3)
                          .ToList();

            return PartialView(result);
        }
    }
}