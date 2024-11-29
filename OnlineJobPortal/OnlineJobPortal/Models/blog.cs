namespace OnlineJobPortal.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("blog")]
    public partial class blog
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public blog()
        {
            blog_keyword = new HashSet<blog_keyword>();
        }

        public long id { get; set; }

        [Required]
        [StringLength(255)]
        public string title { get; set; }

        [Required]
        [StringLength(8000)]
        public string content_1 { get; set; }

        [Required]
        [StringLength(8000)]
        public string content_2 { get; set; }

        [Required]
        [StringLength(255)]
        public string background_image { get; set; }

        [Required]
        [StringLength(255)]
        public string featured_image { get; set; }

        public int read_time { get; set; }

        [StringLength(255)]
        public string meta { get; set; }

        public bool? hide { get; set; }

        public int? order { get; set; }

        public DateTime? datebegin { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<blog_keyword> blog_keyword { get; set; }
    }
}
