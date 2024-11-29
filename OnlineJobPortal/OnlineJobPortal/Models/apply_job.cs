using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineJobPortal.Models
{
    public class apply_job
    {
        public job_application job_Application { get; set; }
        public HttpPostedFileBase file_cv {  get; set; }
    }
}