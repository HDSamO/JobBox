namespace OnlineJobPortal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class seeker_profile
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public seeker_profile()
        {
            job_application = new HashSet<job_application>();
            seeker_keyword = new HashSet<seeker_keyword>();
            seeker_profile_keyword = new HashSet<seeker_profile_keyword>();
        }

        public long id { get; set; }

        public long account_id { get; set; }

        public long? current_salary { get; set; }

        public long? low_salary_range { get; set; }

        public long? high_salary_range { get; set; }

        [Required]
        [StringLength(45)]
        public string first_name { get; set; }

        [Required]
        [StringLength(60)]
        public string last_name { get; set; }

        public DateTime? date_of_birth { get; set; }

        public bool? gender { get; set; }

        [StringLength(255)]
        public string wallpaper { get; set; }

        [StringLength(255)]
        public string avatar { get; set; }

        [StringLength(255)]
        public string avatar_profile { get; set; }

        [StringLength(1000)]
        public string title { get; set; }

        [StringLength(1000)]
        public string about { get; set; }

        public int? experience { get; set; }

        [StringLength(1000)]
        public string desc_experience { get; set; }

        [StringLength(255)]
        public string education { get; set; }

        [StringLength(1000)]
        public string desc_education { get; set; }

        [StringLength(100)]
        public string address { get; set; }

        [StringLength(50)]
        public string country { get; set; }

        [StringLength(50)]
        public string city { get; set; }

        [StringLength(50)]
        public string meta { get; set; }

        public bool? hide { get; set; }

        public int? order { get; set; }

        public DateTime? datebegin { get; set; }

        public virtual account account { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<job_application> job_application { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<seeker_keyword> seeker_keyword { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<seeker_profile_keyword> seeker_profile_keyword { get; set; }
    }
}
