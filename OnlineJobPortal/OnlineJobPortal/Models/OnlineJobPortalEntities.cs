using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace OnlineJobPortal.Models
{
    public partial class OnlineJobPortalEntities : DbContext
    {
        public OnlineJobPortalEntities()
            : base("name=OnlineJobPortalEntities")
        {
            // code here
        }

        public virtual DbSet<account> accounts { get; set; }
        public virtual DbSet<blog> blogs { get; set; }
        public virtual DbSet<blog_keyword> blog_keyword { get; set; }
        public virtual DbSet<company_profile> company_profile { get; set; }
        public virtual DbSet<industry> industries { get; set; }
        public virtual DbSet<job_application> job_application { get; set; }
        public virtual DbSet<job_experience> job_experience { get; set; }
        public virtual DbSet<job_level> job_level { get; set; }
        public virtual DbSet<job_position> job_position { get; set; }
        public virtual DbSet<job_post> job_post { get; set; }
        public virtual DbSet<job_post_activity> job_post_activity { get; set; }
        public virtual DbSet<job_post_keyword> job_post_keyword { get; set; }
        public virtual DbSet<job_status> job_status { get; set; }
        public virtual DbSet<job_type> job_type { get; set; }
        public virtual DbSet<keyword> keywords { get; set; }
        public virtual DbSet<menu> menus { get; set; }
        public virtual DbSet<role> roles { get; set; }
        public virtual DbSet<seeker_keyword> seeker_keyword { get; set; }
        public virtual DbSet<seeker_profile> seeker_profile { get; set; }
        public virtual DbSet<seeker_profile_keyword> seeker_profile_keyword { get; set; }
        public virtual DbSet<user_log> user_log { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<account>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.phone_number)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<account>()
                .HasMany(e => e.company_profile)
                .WithRequired(e => e.account)
                .HasForeignKey(e => e.account_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<account>()
                .HasMany(e => e.job_post_activity)
                .WithRequired(e => e.account)
                .HasForeignKey(e => e.user_account_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<account>()
                .HasMany(e => e.seeker_profile)
                .WithRequired(e => e.account)
                .HasForeignKey(e => e.account_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<account>()
                .HasOptional(e => e.user_log)
                .WithRequired(e => e.account);

            modelBuilder.Entity<blog>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.content_1)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.content_2)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.background_image)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.featured_image)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .HasMany(e => e.blog_keyword)
                .WithRequired(e => e.blog)
                .HasForeignKey(e => e.blog_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<blog_keyword>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<company_profile>()
                .Property(e => e.company_background)
                .IsUnicode(false);

            modelBuilder.Entity<company_profile>()
                .Property(e => e.company_image)
                .IsUnicode(false);

            modelBuilder.Entity<company_profile>()
                .Property(e => e.company_logo)
                .IsUnicode(false);

            modelBuilder.Entity<company_profile>()
                .Property(e => e.company_website_url)
                .IsUnicode(false);

            modelBuilder.Entity<company_profile>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<company_profile>()
                .HasMany(e => e.job_post)
                .WithRequired(e => e.company_profile)
                .HasForeignKey(e => e.company_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<industry>()
                .Property(e => e.image)
                .IsUnicode(false);

            modelBuilder.Entity<industry>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<industry>()
                .HasMany(e => e.company_profile)
                .WithOptional(e => e.industry)
                .HasForeignKey(e => e.industry_id);

            modelBuilder.Entity<industry>()
                .HasMany(e => e.keywords)
                .WithRequired(e => e.industry)
                .HasForeignKey(e => e.industry_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_application>()
                .Property(e => e.resume)
                .IsUnicode(false);

            modelBuilder.Entity<job_application>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_experience>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_experience>()
                .HasMany(e => e.job_post)
                .WithRequired(e => e.job_experience)
                .HasForeignKey(e => e.job_experience_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_level>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_level>()
                .HasMany(e => e.job_post)
                .WithRequired(e => e.job_level)
                .HasForeignKey(e => e.job_level_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_position>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_position>()
                .HasMany(e => e.job_post)
                .WithRequired(e => e.job_position)
                .HasForeignKey(e => e.job_position_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_post>()
                .Property(e => e.job_title)
                .IsUnicode(false);

            modelBuilder.Entity<job_post>()
                .Property(e => e.job_verify)
                .IsUnicode(false);

            modelBuilder.Entity<job_post>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_post>()
                .HasMany(e => e.job_application)
                .WithRequired(e => e.job_post)
                .HasForeignKey(e => e.job_post_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_post>()
                .HasMany(e => e.job_post_activity)
                .WithRequired(e => e.job_post)
                .HasForeignKey(e => e.job_post_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_post>()
                .HasMany(e => e.job_post_keyword)
                .WithRequired(e => e.job_post)
                .HasForeignKey(e => e.job_post_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_post_activity>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_post_keyword>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_status>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_status>()
                .HasMany(e => e.job_post)
                .WithRequired(e => e.job_status)
                .HasForeignKey(e => e.job_status_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<job_type>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<job_type>()
                .HasMany(e => e.job_post)
                .WithRequired(e => e.job_type)
                .HasForeignKey(e => e.job_type_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<keyword>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<keyword>()
                .HasMany(e => e.blog_keyword)
                .WithRequired(e => e.keyword)
                .HasForeignKey(e => e.keyword_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<keyword>()
                .HasMany(e => e.job_post_keyword)
                .WithRequired(e => e.keyword)
                .HasForeignKey(e => e.keyword_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<keyword>()
                .HasMany(e => e.seeker_keyword)
                .WithRequired(e => e.keyword)
                .HasForeignKey(e => e.keyword_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<keyword>()
                .HasMany(e => e.seeker_profile_keyword)
                .WithRequired(e => e.keyword)
                .HasForeignKey(e => e.keyword_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<menu>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<role>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<role>()
                .HasMany(e => e.accounts)
                .WithRequired(e => e.role)
                .HasForeignKey(e => e.role_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<seeker_keyword>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.wallpaper)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.avatar)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.avatar_profile)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.about)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.desc_experience)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.education)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.desc_education)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<seeker_profile>()
                .HasMany(e => e.job_application)
                .WithRequired(e => e.seeker_profile)
                .HasForeignKey(e => e.seeker_profile_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<seeker_profile>()
                .HasMany(e => e.seeker_keyword)
                .WithRequired(e => e.seeker_profile)
                .HasForeignKey(e => e.seeker_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<seeker_profile>()
                .HasMany(e => e.seeker_profile_keyword)
                .WithRequired(e => e.seeker_profile)
                .HasForeignKey(e => e.seeker_profile_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<seeker_profile_keyword>()
                .Property(e => e.meta)
                .IsUnicode(false);

            modelBuilder.Entity<user_log>()
                .Property(e => e.meta)
                .IsUnicode(false);
        }
    }
}
