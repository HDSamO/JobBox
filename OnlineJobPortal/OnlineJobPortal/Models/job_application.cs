namespace OnlineJobPortal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class job_application
    {
        public long id { get; set; }

        public long seeker_profile_id { get; set; }

        public long job_post_id { get; set; }

        public DateTime? application_date { get; set; }

        [StringLength(255)]
        public string resume { get; set; }

        [StringLength(4000)]
        public string cover_letter { get; set; }

        public byte? application_status { get; set; }

        [StringLength(50)]
        public string meta { get; set; }

        public bool? hide { get; set; }

        public int? order { get; set; }

        public DateTime? datebegin { get; set; }

        public virtual job_post job_post { get; set; }

        public virtual seeker_profile seeker_profile { get; set; }
    }
}
