namespace OnlineJobPortal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user_log
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long user_account_id { get; set; }

        public DateTime? last_login_date { get; set; }

        public DateTime? last_job_apply_date { get; set; }

        [StringLength(50)]
        public string meta { get; set; }

        public bool? hide { get; set; }

        public int? order { get; set; }

        public DateTime? datebegin { get; set; }

        public virtual account account { get; set; }
    }
}
