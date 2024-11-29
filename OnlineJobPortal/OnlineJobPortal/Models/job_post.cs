namespace OnlineJobPortal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class job_post
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public job_post()
        {
            job_application = new HashSet<job_application>();
            job_post_activity = new HashSet<job_post_activity>();
            job_post_keyword = new HashSet<job_post_keyword>();
        }

        public long id { get; set; }

        [Required]
        [StringLength(50)]
        public string job_title { get; set; }

        public long company_id { get; set; }

        public byte job_type_id { get; set; }

        public byte job_position_id { get; set; }

        public byte job_level_id { get; set; }

        public byte job_experience_id { get; set; }

        public byte job_status_id { get; set; }

        public bool? is_anonymous { get; set; }

        [StringLength(1000)]
        public string job_welcome { get; set; }

        [StringLength(1000)]
        public string job_essential { get; set; }

        [StringLength(1000)]
        public string job_preferred { get; set; }

        [StringLength(4000)]
        public string job_desc { get; set; }

        public double job_salary { get; set; }

        public bool? is_active { get; set; }

        [StringLength(255)]
        public string job_verify { get; set; }

        [StringLength(100)]
        public string address { get; set; }

        [Required]
        [StringLength(50)]
        public string country { get; set; }

        [Required]
        [StringLength(50)]
        public string city { get; set; }

        [StringLength(50)]
        public string meta { get; set; }

        public bool? hide { get; set; }

        public int? order { get; set; }

        public DateTime? datebegin { get; set; }

        public virtual company_profile company_profile { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<job_application> job_application { get; set; }

        public virtual job_experience job_experience { get; set; }

        public virtual job_level job_level { get; set; }

        public virtual job_position job_position { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<job_post_activity> job_post_activity { get; set; }

        public virtual job_status job_status { get; set; }

        public virtual job_type job_type { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<job_post_keyword> job_post_keyword { get; set; }
    }
}
