JobBox - Job Portal Website
=======

Technologies
-----------
**Front-end:** HTML, CSS, Bootstrap, JavaScript, jQuery

**Back-end:** ASP.NET MVC, ORM (Entity Framework), SQL Server

Overview
-----------
JobBox is a dynamic and user-friendly job portal designed to bridge the gap between job seekers and employers, offering tailored features for various user roles, ensuring a seamless and efficient job search and recruitment process.

Key Features:
1. **For Job Seekers:**

    * **Profile management:** easily create and update profiles with personal information, skills, and work experience with customizable layouts

    * **CV upload:** Upload resumes on top of your profiles for recruiters to see.

    * **Job search:** Advanced search filters to find job postings that match specific criteria.

    * **Application tracking:** Keep track of job applications and their statuses.

2. **For Employers:**

    * **Job Posting:** Create and manage job listings with detailed descriptions and requirements.

    * **Profile Search:** Search for potential candidates and view their profiles.

    * **Applicant Management:** Able to review applications to all of your job posts so you can accept/reject, or contact your prospective employees.

3. **Admin Panel:**

    * **User Management:** Oversee and manage all user accounts, ensuring a secure and effective platform.

    * **Job Post Verification:** Verify and approve job postings to maintain quality and authenticity.

    * **CRUD Operations:** Perform administrative Create, Read, Update, and Delete operations on all aspects of the portal to ensure data integrity and up-to-date information.

Local Running Setup
-------------------
1. **Prerequisites:** 
    * Integrated Development Environment (IDE): Visual Studio
    * Database server: MS SQL Server Management

2. **Database setup & Confirgure:**
   * Open MS SQL Server Management, run file "database.sql" to create database with sample records for the website
   * Open file Web.config, modify the connection strings.

3. **Run the application:**
   * After creating the database, you can run the project to see the website.
   * Some default account for accessing the job portal
     * Seeker account:
       * username: seeker1
       * password: Password1
     * Admin account (go to: "/admin/login"):
       * username: Admin1
       * password: Password1
   * Other than these sample accounts, you are free to create more.