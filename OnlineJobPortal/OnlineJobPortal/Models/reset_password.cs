using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineJobPortal.Models
{
    public class reset_password
    {
        public string newPassword { get; set; }
        public string reNewPassword { get; set; }
        public string resetCode { get; set; }
    }
}