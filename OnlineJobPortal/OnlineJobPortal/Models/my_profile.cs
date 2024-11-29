using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineJobPortal.Models
{
    public class my_profile
    {
        public account account { get; set; }
        public string oldPassword { get; set; }
        public string newPassword { get; set; }
        public string reNewPassword { get; set; }
        public seeker_profile seeker { get; set; }
        public IPagedList<job_post> my_jobs { get; set; }
        public IPagedList<job_post> accepted_jobs { get; set; }
        public IPagedList<job_post> rejected_jobs { get; set; }
        public List<keyword> my_skills { get; set; } 
        public List<keyword> all_skills { get; set; }
    }
}