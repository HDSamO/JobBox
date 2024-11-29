using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineJobPortal.Models
{
    public class login_view
    {
        public account account { get; set; }
        public bool rememberMe { get; set; }

        public string returnUrl { get; set; }
    }
}