using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace OnlineJobPortal.Models
{
    public class register_view
    {
        public account seekerAccount { get; set; }
        public account companyAccount { get; set; }
        public seeker_profile seeker { get; set; }
        public company_profile company { get; set; }
        public string confirmPassword { get; set; }
    }
}