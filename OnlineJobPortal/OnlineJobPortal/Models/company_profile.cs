namespace OnlineJobPortal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class company_profile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public company_profile()
        {
            job_post = new HashSet<job_post>();
        }

        public long id { get; set; }

        public long account_id { get; set; }

        [Required]
        [StringLength(100)]
        public string name { get; set; }

        [StringLength(500)]
        public string slogan { get; set; }

        [StringLength(4000)]
        public string welcome { get; set; }

        [StringLength(1000)]
        public string essential { get; set; }

        [StringLength(1000)]
        public string recruitment { get; set; }

        [StringLength(1000)]
        public string people { get; set; }

        [StringLength(255)]
        public string company_background { get; set; }

        [StringLength(255)]
        public string company_image { get; set; }

        [StringLength(255)]
        public string company_logo { get; set; }

        public DateTime? establishment_date { get; set; }

        [StringLength(255)]
        public string company_website_url { get; set; }

        public long? industry_id { get; set; }

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

        public virtual account account { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<job_post> job_post { get; set; }

        public virtual industry industry { get; set; }
    }
}
