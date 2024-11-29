USE MASTER;
DROP DATABASE IF EXISTS [OnlineJobPortal];
CREATE DATABASE [OnlineJobPortal];
USE [OnlineJobPortal];

DROP TABLE IF EXISTS [dbo].[menu]
CREATE TABLE [dbo].[menu] (
    [id] [INT] IDENTITY(1,1) NOT NULL,
    [name] [NVARCHAR](100) NOT NULL,
	[parentId] [INT] NOT NULL,
	[type] [INT] NOT NULL,
    [image] [NVARCHAR](255) DEFAULT NULL,	

    [meta] VARCHAR(50) DEFAULT NULL,
    [hide] BIT DEFAULT NULL,
    [order] INT DEFAULT NULL,
    [datebegin] DATETIME DEFAULT NULL,
    CONSTRAINT PK_Menu PRIMARY KEY ([id])
);

-- Menu
SET IDENTITY_INSERT [dbo].[menu] ON 
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (1, N'Home', 0, 1, NULL, N'home', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (2, N'Find a job', 0, 1, NULL, N'find-a-job/jobs-list', 1, 2, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (3, N'Companies', 0, 1, NULL, N'find-a-company/companies-grid', 1, 3, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (4, N'News', 0, 1, NULL, N'news', 1, 4, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (5, N'Register', 0, 1, NULL, N'', 1, 5, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (6, N'Personal Account', 5, 1, NULL, N'auth/register/personal-account', 1, 6, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (7, N'Company Account', 5, 1, NULL, N'auth/register/company-account', 1, 7, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))

-- INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (5, N'About Us', 0, 1, NULL, N'about-us', 1, 5, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
-- INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (6, N'Contact Us', 0, 1, NULL, N'contact-us', 1, 6, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (8, N'Dashboard', 0, 2, 'dashboard.svg', N'dashboard', 1, 1, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (9, N'Candidates', 0, 2, 'candidates.svg', N'candidates', 1, 2, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (10, N'My Jobs', 0, 2, 'jobs.svg', N'job-list', 1, 3, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (11, N'Tasks List', 0, 2, 'tasks.svg', N'my-tasks-list', 1, 4, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (12, N'My Company', 0, 2, 'settings.svg', N'company-settings', 1, 5, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (13, N'Logout', 0, 2, 'logout.svg', N'logout', 1, 6, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))

INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (14, N'Dashboard', 0, 3, 'dashboard.svg', N'dashboard', 1, 5, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (15, N'Candidates', 0, 3, 'candidates.svg', N'candidates', 1, 6, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (16, N'Recruiters', 0, 3, 'recruiters.svg', N'recruiters', 1, 7, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (17, N'Job Posts', 0, 3, 'jobs.svg', N'job-post', 1, 8, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (18, N'Verify Queue', 0, 3, 'tasks.svg', N'verify-queue', 1, 9, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))
INSERT [dbo].[menu] ([id], [name], [parentId], [type], [image], [meta], [hide], [order], [datebegin]) VALUES (19, N'Logout', 0, 3, 'logout.svg', N'logout', 1, 10, CAST(N'2023-03-09 00:00:00' AS SmallDateTime))

SET IDENTITY_INSERT [dbo].[menu] OFF

/* Managing Users */

DROP TABLE IF EXISTS [roles];
CREATE TABLE [roles] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(100) NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Role PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [account];
CREATE TABLE [account] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [role_id] TINYINT NOT NULL,
  [email] VARCHAR(100) NOT NULL,
  [username] NVARCHAR(45) NOT NULL,
  [password] VARCHAR(60) NOT NULL,
  [is_active] BIT DEFAULT NULL,
  [phone_number] VARCHAR(100) DEFAULT NULL,
  [reset_password_code] NVARCHAR(100) DEFAULT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_User PRIMARY KEY ([id]),
  CONSTRAINT FK_Role_User
    FOREIGN KEY ([role_id]) REFERENCES [roles] ([id])
);

DROP TABLE IF EXISTS [user_log];
CREATE TABLE [user_log] (
  [user_account_id] BIGINT NOT NULL,
  [last_login_date] DATETIME DEFAULT NULL,
  [last_job_apply_date] DATETIME DEFAULT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_User_Log PRIMARY KEY ([user_account_id]),
  CONSTRAINT FK_User_Account_Id_User_Log
    FOREIGN KEY ([user_account_id]) REFERENCES [account] ([id])
);

/* Company Profile */

DROP TABLE IF EXISTS [industry];
CREATE TABLE [industry] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [image] VARCHAR(50) DEFAULT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Industry PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [keyword];
CREATE TABLE [keyword] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [industry_id] BIGINT NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Keyword PRIMARY KEY ([id]),
  CONSTRAINT FK_Keyword_Industry FOREIGN KEY ([industry_id]) REFERENCES [industry]([id])
);

DROP TABLE IF EXISTS [company_profile];
CREATE TABLE [company_profile] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [account_id] BIGINT NOT NULL,
  [name] NVARCHAR(100) NOT NULL,
  [slogan] NVARCHAR(500) DEFAULT NULL,
  [welcome] NVARCHAR(4000) DEFAULT NULL,
  [essential] NVARCHAR(1000) DEFAULT NULL,
  [recruitment] NVARCHAR(1000) DEFAULT NULL,
  [people] NVARCHAR(1000) DEFAULT NULL,
  [company_background] VARCHAR(255) DEFAULT NULL,
  [company_image] VARCHAR(255) DEFAULT NULL,
  [company_logo] VARCHAR(255) DEFAULT NULL,
  [establishment_date] DATETIME DEFAULT NULL,
  [company_website_url] VARCHAR(255) DEFAULT NULL, --change to not null later when real data
  [industry_id] BIGINT DEFAULT NULL,
  [address] NVARCHAR(100) DEFAULT NULL,
  [country] NVARCHAR(50) NOT NULL,
  [city] NVARCHAR(50) NOT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Company PRIMARY KEY ([id]),

  CONSTRAINT FK_Company_Industry FOREIGN KEY ([industry_id]) REFERENCES [industry]([id]),
  CONSTRAINT FK_Company_Profile_Account_Id 
	FOREIGN KEY ([account_id]) REFERENCES [account] ([id])
);

/* Job Seeker Profiles */

DROP TABLE IF EXISTS [seeker_profile];
CREATE TABLE [seeker_profile] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [account_id] BIGINT NOT NULL,
  [current_salary] BIGINT DEFAULT NULL,
  [low_salary_range] BIGINT DEFAULT NULL,
  [high_salary_range] BIGINT DEFAULT NULL,
  [first_name] NVARCHAR(45) NOT NULL,
  [last_name] NVARCHAR(60) NOT NULL,
  [date_of_birth] DATETIME DEFAULT NULL,
  [gender] BIT DEFAULT NULL,
  [wallpaper] VARCHAR(255) DEFAULT NULL,
  [avatar] VARCHAR(255) DEFAULT NULL,
  [avatar_profile] VARCHAR(255) DEFAULT NULL,
  [title] NVARCHAR(1000) DEFAULT NULL,
  [about] NVARCHAR(1000) DEFAULT NULL,
  [experience] INT DEFAULT NULL,
  [desc_experience] NVARCHAR(1000) DEFAULT NULL,
  [education] NVARCHAR(255) DEFAULT NULL,
  [desc_education] NVARCHAR(1000) DEFAULT NULL,
  [address] NVARCHAR(100) DEFAULT NULL,
  [country] NVARCHAR(50) DEFAULT NULL,
  [city] NVARCHAR(50) DEFAULT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Seeker_Profile PRIMARY KEY ([id]),
  CONSTRAINT FK_Seeker_Profile_Account_Id
    FOREIGN KEY ([account_id]) REFERENCES [account] ([id]),
);

DROP TABLE IF EXISTS [seeker_profile_keyword];
CREATE TABLE [seeker_profile_keyword] (
  [seeker_profile_id] BIGINT NOT NULL,
  [keyword_id] BIGINT NOT NULL,
  [proficency] INT NOT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Seeker_Profile_Keyword PRIMARY KEY (seeker_profile_id, keyword_id),
  CONSTRAINT FK_Seeker_Profile_Keyword_Seeker_Profile
    FOREIGN KEY ([seeker_profile_id]) REFERENCES [seeker_profile] ([id]),
  CONSTRAINT FK_Seeker_Profile_Keyword_Keyword
    FOREIGN KEY ([keyword_id]) REFERENCES [keyword] ([id])
);

/* Posting and Looking Up Jobs */

DROP TABLE IF EXISTS [job_type];
CREATE TABLE [job_type] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Type PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [job_position]; --senior, junior,...
CREATE TABLE [job_position] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Position PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [job_level]; --intern, entry,mid,...
CREATE TABLE [job_level] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Level PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [job_experience]; -- years
CREATE TABLE [job_experience] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Experience PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [job_status];  --onsite/remote
CREATE TABLE [job_status] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [name] NVARCHAR(50) NOT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Status PRIMARY KEY ([id])
);

DROP TABLE IF EXISTS [job_post];
CREATE TABLE [job_post] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [job_title] VARCHAR(50) NOT NULL,
  [company_id] BIGINT NOT NULL,
  [job_type_id] TINYINT NOT NULL,
  [job_position_id] TINYINT NOT NULL,
  [job_level_id] TINYINT NOT NULL,
  [job_experience_id] TINYINT NOT NULL,
  [job_status_id] TINYINT NOT NULL,
  [is_anonymous] BIT DEFAULT 0,
  [job_welcome] NVARCHAR(1000) DEFAULT NULL,
  [job_essential] NVARCHAR(1000) DEFAULT NULL,
  [job_preferred] NVARCHAR(1000) DEFAULT NULL,
  [job_desc] NVARCHAR(4000) DEFAULT NULL,
  [job_salary] FLOAT NOT NULL,
  [is_active] BIT DEFAULT 1,
  [job_verify] VARCHAR(255) DEFAULT 'waiting',  --for admin (waiting, confirmed, declined)
  [address] NVARCHAR(100) DEFAULT NULL,
  [country] NVARCHAR(50) NOT NULL,
  [city] NVARCHAR(50) NOT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Post PRIMARY KEY ([id]),
  CONSTRAINT FK_Company_Id
    FOREIGN KEY ([company_id]) REFERENCES [company_profile] ([id]),
  CONSTRAINT FK_Job_Post_Job_Type
    FOREIGN KEY ([job_type_id]) REFERENCES [job_type] ([id]),
  CONSTRAINT FK_Job_Post_Job_Position
    FOREIGN KEY ([job_position_id]) REFERENCES [job_position] ([id]),
  CONSTRAINT FK_Job_Post_Job_Experience
    FOREIGN KEY ([job_experience_id]) REFERENCES [job_experience] ([id]),
	CONSTRAINT FK_Job_Post_Job_Level
    FOREIGN KEY ([job_level_id]) REFERENCES [job_level] ([id]),
  CONSTRAINT FK_Job_Post_Job_Status
    FOREIGN KEY ([job_status_id]) REFERENCES [job_status] ([id])
);

DROP TABLE IF EXISTS [blog];
CREATE TABLE [blog] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [title] VARCHAR(255) NOT NULL,
  [content_1] VARCHAR(8000) NOT NULL,
  [content_2] VARCHAR(8000) NOT NULL,
  [background_image] VARCHAR(255) NOT NULL,
  [featured_image] VARCHAR(255) NOT NULL,
  [read_time] INT NOT NULL,

  [meta] VARCHAR(255) DEFAULT NULL,
  [hide] BIT DEFAULT 1,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Blog PRIMARY KEY (id)
);

DROP TABLE IF EXISTS [job_post_keyword];
CREATE TABLE [job_post_keyword] (
  [job_post_id] BIGINT NOT NULL,
  [keyword_id] BIGINT NOT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Post_Keyword PRIMARY KEY (job_post_id, keyword_id),
  CONSTRAINT FK_Job_Post_Keyword_Job_Post
    FOREIGN KEY ([job_post_id]) REFERENCES [job_post] ([id]),
  CONSTRAINT FK_Job_Post_Keyword_Keyword
    FOREIGN KEY ([keyword_id]) REFERENCES [keyword] ([id])
);

DROP TABLE IF EXISTS [seeker_keyword];
CREATE TABLE [seeker_keyword] (
  [seeker_id] BIGINT NOT NULL,
  [keyword_id] BIGINT NOT NULL,
  [percent] BIGINT NOT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Seeker_Keyword PRIMARY KEY (seeker_id, keyword_id),
  CONSTRAINT FK_Seeker_Keyword_Seeker
    FOREIGN KEY ([seeker_id]) REFERENCES [seeker_profile]([id]),
  CONSTRAINT FK_Seeker_Keyword_Keyword
    FOREIGN KEY ([keyword_id]) REFERENCES [keyword] ([id])
);

DROP TABLE IF EXISTS [blog_keyword];
CREATE TABLE [blog_keyword] (
  [blog_id] BIGINT NOT NULL,
  [keyword_id] BIGINT NOT NULL,

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_blog_Keyword PRIMARY KEY (blog_id, keyword_id),
  CONSTRAINT FK_blog_Keyword_blog
    FOREIGN KEY ([blog_id]) REFERENCES [blog] ([id]),
  CONSTRAINT FK_blog_Keyword_Keyword
    FOREIGN KEY ([keyword_id]) REFERENCES [keyword] ([id])
);

/*
DROP TABLE IF EXISTS [job_post_skill_set];
CREATE TABLE [job_post_skill_set] (
  [skill_set_id] TINYINT NOT NULL,  -- 
  [job_post_id] BIGINT NOT NULL,
  [skill_level] TINYINT DEFAULT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Post_Skill_Set PRIMARY KEY ([skill_set_id], [job_post_id]),
  CONSTRAINT FK_Job_Post_Skill_Set_Job_Post
    FOREIGN KEY ([job_post_id]) REFERENCES [job_post] ([id]),
  CONSTRAINT FK_Job_Post_Skill_Set_Skill_Set
    FOREIGN KEY ([skill_set_id]) REFERENCES [skill_set] ([id])
);
*/

/*
DROP TABLE IF EXISTS [job_location];
CREATE TABLE [job_location] (
  [id] TINYINT NOT NULL IDENTITY(1, 1),
  [street_address] NVARCHAR(50) DEFAULT NULL,
  [city] NVARCHAR(50) DEFAULT NULL,
  [state] NVARCHAR(50) DEFAULT NULL,
  [country] NVARCHAR(50) NOT NULL,  -- Enforce required field
  [zip] NVARCHAR(50) DEFAULT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Location PRIMARY KEY ([id])
);
*/

DROP TABLE IF EXISTS [job_post_activity];
CREATE TABLE [job_post_activity] (
  [user_account_id] BIGINT NOT NULL,
  [job_post_id] BIGINT NOT NULL,
  [apply_date] DATETIME DEFAULT NULL,
  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Post_Activity PRIMARY KEY ([user_account_id], [job_post_id]),
  CONSTRAINT FK_Job_Post_Activity_Job_Post
    FOREIGN KEY ([job_post_id]) REFERENCES [job_post] ([id]),
  CONSTRAINT FK_Job_Post_Activity_Account
    FOREIGN KEY ([user_account_id]) REFERENCES [account] ([id])
);

DROP TABLE IF EXISTS [job_application];
CREATE TABLE [job_application] (
  [id] BIGINT NOT NULL IDENTITY(1, 1),
  [seeker_profile_id] BIGINT NOT NULL,
  [job_post_id] BIGINT NOT NULL,
  [application_date] DATETIME DEFAULT NULL,
  [resume] VARCHAR(255) DEFAULT NULL,
  [cover_letter] NVARCHAR(4000) DEFAULT NULL,
  [application_status] TINYINT DEFAULT NULL,  -- (e.g., Submitted, In Review, Rejected, Interview Scheduled)

  [meta] VARCHAR(50) DEFAULT NULL,
  [hide] BIT DEFAULT NULL,
  [order] INT DEFAULT NULL,
  [datebegin] DATETIME DEFAULT NULL,
  CONSTRAINT PK_Job_Application PRIMARY KEY ([id]),
  FOREIGN KEY ([seeker_profile_id]) REFERENCES [seeker_profile] ([id]),
  FOREIGN KEY ([job_post_id]) REFERENCES [job_post] ([id])
);

-- Role
INSERT INTO [roles] (name, [meta], [hide], [order], [datebegin]) VALUES ('recruiter', N'recruiter', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [roles] (name, [meta], [hide], [order], [datebegin]) VALUES ('employee', N'employee', 1, 2, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [roles] (name, [meta], [hide], [order], [datebegin]) VALUES ('admin', N'admin', 1, 3, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

-- Account
INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter1@example.com', 'recruiter1', 'hashed_password_1', 1, '1234567890', N'recruiter1', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter2@example.com', 'recruiter2', 'hashed_password_2', 1, '1234567890', N'recruiter2', 1, 2, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter3@example.com', 'recruiter3', 'hashed_password_3', 1, '1234567890', N'recruiter3', 1, 3, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter4@example.com', 'recruiter4', 'hashed_password_4', 1, '1234567890', N'recruiter4', 1, 4, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter5@example.com', 'recruiter5', 'hashed_password_5', 1, '1234567890', N'recruiter5', 1, 5, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter6@example.com', 'recruiter6', 'hashed_password_6', 1, '1234567890', N'recruiter6', 1, 6, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter7@example.com', 'recruiter7', 'hashed_password_7', 1, '1234567890', N'recruiter7', 1, 7, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter8@example.com', 'recruiter8', 'hashed_password_8', 1, '1234567890', N'recruiter8', 1, 8, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter9@example.com', 'recruiter9', 'hashed_password_9', 1, '1234567890', N'recruiter9', 1, 9, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter10@example.com', 'recruiter10', 'hashed_password_10', 1, '1234567890', N'recruiter10', 1, 10, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter11@example.com', 'recruiter11', 'hashed_password_11', 1, '1234567890', N'recruiter11', 1, 11, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter12@example.com', 'recruiter12', 'hashed_password_12', 1, '1234567890', N'recruiter12', 1, 12, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter13@example.com', 'recruiter13', 'hashed_password_13', 1, '1234567890', N'recruiter13', 1, 13, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (1, 'recruiter14@example.com', 'recruiter14', 'hashed_password_14', 1, '1234567890', N'recruiter14', 1, 14, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

-- Seeker account - password: Seeker123
INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'nghiaan7610@gmail.com', 'nghiaan7610', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '0794865179', N'nghiaan7610', 1, 15, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'nghiaantdtu@gmail.com', 'nghiaantdtu', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '0794865179', N'nghiaantdtu', 1, 16, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'seeker3@gmail.com', 'seeker3', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '9876543210', N'seeker3', 1, 17, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'seeker4@gmail.com', 'seeker4', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '9876543210', N'seeker4', 1, 18, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'seeker5@gmail.com', 'seeker5', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '9876543210', N'seeker5', 1, 19, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'seeker6@gmail.com', 'seeker6', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '9876543210', N'seeker6', 1, 20, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'seeker7@gmail.com', 'seeker7', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '9876543210', N'seeker7', 1, 21, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (2, 'seeker8@gmail.com', 'seeker8', 'd87ba83bf74f898be86afbd77f9b74be8620e795', 1, '9876543210', N'seeker8', 1, 22, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [account] (role_id, email, username, password, is_active, phone_number, [meta], [hide], [order], [datebegin])
VALUES (3, 'admin1@gmail.com', 'Admin1', '123123', 1, '9876543210', N'seeker8', 1, 22, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

-- Industry
INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('IT', 'lightning.svg', N'it', 1, 1, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('Healthcare', 'lightning.svg', N'healthcare', 1, 2, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('Finance', 'finance.svg', N'finance', 1, 3, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('Education', 'human.svg', N'education', 1, 4, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('Retail', 'retail.svg', N'retail', 1, 5, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('Manufacturing', 'management.svg', N'manufacturing', 1, 6, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [industry] (name, [image], [meta], [hide], [order], [datebegin])
VALUES ('Construction', 'security.svg', N'construction', 1, 7, CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

--Company profile
-- Information Technology
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
1,
N'AliStudio Team', 
N'Our Mission to make working life simple',

-- welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.',

-- essential knowledge, skills, experience 
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

--recruitment
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.',
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.',

'img-1.png', 'company-1.png', 'brand-1.png', 'https://www.google.com', 1, 
'United States', 'Mountain View', N'aliStudio-team',
1, 1,
CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  2, 
  N'Acme Software Solutions',
  N'When you care enough to send the very best',

  -- Welcome message
  N'Acme Software Solutions is a fast-growing software development company with a passion for innovation. We empower businesses with cutting-edge technology solutions that drive growth and efficiency. We offer a collaborative and exciting work environment where talented individuals can thrive. 
  Join us and be part of a team that is revolutionizing the software landscape!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in software development (3+ years)
  • Proficiency in programming languages like Java, Python, or C#
  • Experience with web development frameworks (Spring, Django, etc) a plus
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Excellent problem-solving and analytical skills
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

  -- Recruitment message (can be similar or different from welcome message)
  N'Acme Software Solutions is seeking talented software developers to join our growing team. We offer a competitive compensation package, comprehensive benefits, and the opportunity to work on challenging and rewarding projects. If you are a passionate and skilled developer who thrives in a collaborative environment, we encourage you to apply!',

  -- People section (brief description of company culture)
  N'At Acme Software Solutions, we believe in fostering a culture of innovation, collaboration, and continuous learning. We offer our employees opportunities for professional development, competitive salaries and benefits, and a fun and engaging work environment. We value our employees and their contributions to our success.
  Acme Software Solutions was founded in 2015 by a group of passionate entrepreneurs with a vision to create innovative software solutions that empower businesses.',
  
  'img-2.png', 'company-2.png', 'brand-2.png', 'https://www.acme-software.com', 1,
  'Canada', 'Toronto', 'acme-software-solutions',
  1, 2,
  CAST(N'2020-01-22 00:00:00' AS SmallDateTime)
);

-- Healthcare
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  3,
  N'Hopewell Health Clinic',
  N'15 minutes can save you 15% or more on car insurance',

  -- Welcome message
  N'Welcome to Hopewell Health Clinic, where we are dedicated to providing exceptional and compassionate healthcare to our patients. We offer a comprehensive range of medical services in a warm and welcoming environment. Our team of experienced and caring healthcare professionals is committed to your health and well-being.',

  -- Essential knowledge, skills, experience (tailor to specific roles)
  N' (This section will vary depending on the specific healthcare role being advertised. Here are some examples):
    * For Nurses:
        • Registered Nurse (RN) license in good standing
        • Minimum 2 years of experience in a clinical setting (adjust as needed)
        • Strong assessment, communication, and interpersonal skills
        • Compassionate and patient-centered approach to care

    * For Doctors:
        • Doctor of Medicine (MD) degree or equivalent
        • Board certification in relevant specialty (adjust as needed)
        • Minimum 5 years of clinical experience (adjust as needed)
        • Strong leadership and communication skills',

  -- Recruitment message
  N'Hopewell Health Clinic is seeking talented and compassionate healthcare professionals to join our team. We offer a competitive salary and benefits package, opportunities for professional development, and a supportive work environment. If you are passionate about providing high-quality care and making a difference in people lives, we encourage you to apply!',

  -- People section (brief description of company culture)
  N'At Hopewell Health Clinic, we believe in creating a positive and collaborative work environment where our employees feel valued and respected. We are committed to providing our team with the resources and support they need to deliver exceptional care to our patients. We offer opportunities for professional development and career advancement.
  Hopewell Health Clinic was founded in 2010 with a mission to provide accessible and high-quality healthcare to the community. We are committed to staying at the forefront of medical advancements and offering our patients the latest treatments and technologies.',
  
  'img-3.png', 'company-3.png', 'brand-3.png', 'https://www.hopewellclinic.com', 2,
  'United States', 'San Francisco', 'hopewell-clinic',
  1, 3,
  CAST(N'2017-06-15 00:00:00' AS SmallDateTime)
);

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  4,
  N'Medipharm Pharmaceuticals',
  N'We Bring Good Things to Life',

  -- Welcome message
  N'Medipharm Pharmaceuticals is a leading global healthcare company dedicated to developing and delivering innovative life-changing medications. We are passionate about improving lives and pushing the boundaries of medical science. Join our team and be part of something extraordinary!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the pharmaceutical industry (3+ years)
  • Ph.D. in a relevant field (Pharmacology, Chemistry, Biology, etc) or equivalent experience
  • Strong understanding of drug discovery and development processes
  • Excellent research and analytical skills
  • Effective communication and collaboration abilities
  • Ability to work effectively in a fast-paced and dynamic environment',

  -- Recruitment message
  N'Medipharm Pharmaceuticals is seeking talented scientists and researchers to join our team. We offer a competitive compensation and benefits package, opportunities to work on cutting-edge projects, and a collaborative work environment. If you are passionate about making a difference in the world and have a strong scientific background, we encourage you to apply!',

  -- People section (brief description of company culture)
  N'At Medipharm Pharmaceuticals, we foster a culture of innovation, collaboration, and scientific excellence. We offer our employees opportunities for professional development, competitive salaries and benefits, and the chance to work on groundbreaking research that has the potential to improve millions of lives.
  Founded in 1985, Medipharm Pharmaceuticals has a long history of developing innovative medications that have transformed the treatment of various diseases. We are committed to ethical research practices and social responsibility.',
  
  'img-4.png', 'company-4.png', 'brand-4.png', 'https://www.medipharm.com', 2,
  'France', 'Paris', 'medipharm-pharmaceuticals',
  1, 4,
  CAST(N'1985-01-17 00:00:00' AS SmallDateTime)
);

-- Finance
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  5,
  N'Prosperity Financial Group',
  N'It Keeps Going, and Going, and Going',

  -- Welcome message
  N'Welcome to Prosperity Financial Group, where we empower individuals and businesses to achieve their financial goals. We offer a comprehensive suite of financial services, including investment management, wealth planning, and retirement planning. Our team of experienced and qualified financial professionals is dedicated to providing personalized and strategic financial advice.',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the financial services industry (3+ years)
  • Series 7 and 63 FINRA licenses or equivalent (adjust as needed)
  • Strong understanding of financial markets and investment products
  • Excellent analytical and problem-solving skills
  • Effective communication and interpersonal skills
  • Ability to build strong relationships with clients and understand their financial needs',

  -- Recruitment message
  N'Prosperity Financial Group is seeking talented and experienced financial advisors to join our growing team. We offer a competitive compensation and benefits package, ongoing training and development opportunities, and the chance to make a real difference in the lives of your clients. If you are passionate about helping people achieve financial success, we encourage you to apply!',

  -- People section (brief description of company culture)
  N'At Prosperity Financial Group, we foster a collaborative and client-centric work environment. We value our employees expertise and dedication to providing exceptional service. We offer opportunities for professional development and career advancement, and we are committed to helping our employees achieve their own financial goals.
  Prosperity Financial Group was founded in 2005 with a mission to empower individuals and businesses to make informed financial decisions. We believe in building long-term relationships with our clients and providing them with the tools and resources they need to achieve financial security.',
  
  'img-5.png', 'company-5.png', 'brand-5.png', 'https://www.prosperityfinancial.com', 3,
  'United States', 'New York', 'prosperity-financial-group', 
  1, 5,
  CAST(N'2005-07-12 00:00:00' AS SmallDateTime)
);

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  6,
  N'FinTech Solutions Inc.',
  N'The Breakfast of Champions',

  -- Welcome message
  N'FinTech Solutions Inc. is a leading innovator in the financial technology industry. We develop cutting-edge financial products and services that make managing your money easier, faster, and more secure. Join our team and be at the forefront of the financial revolution!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the FinTech industry (2+ years)
  • Strong understanding of financial services and technology trends
  • Experience with developing and implementing financial software applications
  • Excellent problem-solving and analytical skills
  • Experience with Agile development methodologies (a plus)
  • Effective communication and collaboration skills
  • Passion for innovation and making a difference in the financial landscape',

  -- Recruitment message
  N'FinTech Solutions Inc. is seeking talented software developers, product managers, and financial analysts to join our growing team. We offer a competitive compensation and benefits package, a fast-paced and dynamic work environment, and the opportunity to work on groundbreaking projects that will shape the future of finance. If you are passionate about technology and finance, we encourage you to apply!',

  -- People section (brief description of company culture)
  N'At FinTech Solutions Inc., we foster a culture of innovation, collaboration, and agility. We value creativity, problem-solving skills, and a willingness to learn and adapt. We offer opportunities for professional development and career advancement, and we encourage our employees to think outside the box and challenge the status quo.
  FinTech Solutions Inc. was founded in 2018 by a group of passionate entrepreneurs with a vision to revolutionize the financial services industry through technology. We are committed to developing user-friendly and secure financial solutions that empower people to take control of their finances.',
  
  'img-6.png', 'company-6.png', 'brand-6.png', 'https://www.fintechsolutions.com', 3,
  'United Kingdom', 'London', 'fintech-solutions-inc',
  1, 6,
  CAST(N'2018-11-05 00:00:00' AS SmallDateTime)
);

-- Education
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  7,
  N'EdTech Academy',
  N'When it absolutely, positively has to be there overnight',

  -- Welcome message
  N'Welcome to EdTech Academy, where we are passionate about making high-quality education accessible to everyone. We offer a variety of engaging and interactive online courses across diverse subjects. Join us and be part of a movement that is transforming education!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the education or e-learning industry (3+ years)
  • Expertise in developing and delivering online course content
  • Strong understanding of instructional design principles
  • Excellent communication and writing skills
  • Ability to create engaging and interactive learning experiences
  • Familiarity with learning management systems (LMS) a plus
  • Passion for education and a commitment to student success',

  -- Recruitment message
  N'EdTech Academy is seeking talented instructional designers, curriculum developers, and subject matter experts to join our team. We offer a competitive compensation and benefits package, the opportunity to work on innovative educational projects, and the chance to make a real difference in the lives of learners around the world. If you are passionate about education and have a knack for creating engaging online content, we encourage you to apply!',

  -- People section (brief description of company culture)
  N'At EdTech Academy, we foster a collaborative and learner-centered work environment. We value creativity, innovation, and a commitment to providing high-quality educational experiences. We offer opportunities for professional development and career advancement, and we encourage our employees to explore new approaches to online learning.
  EdTech Academy was founded in 2012 with the mission to make education accessible, affordable, and flexible. We leverage technology to create engaging online courses that cater to diverse learning styles and needs.',
  
  'img-7.png', 'company-7.png', 'brand-7.png', 'https://www.edtechacademy.com', 4,
  'United States', 'Austin', 'edtech-academy',
  1, 7,
  CAST(N'2012-04-21 00:00:00' AS SmallDateTime)
);

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  8,
  N'Evergreen State College',
  N'Knowledge is Power, Embrace Education',

  -- Welcome message
  N'Welcome to Evergreen State College, a public liberal arts college known for its innovative curriculum and focus on interdisciplinary learning. We offer a diverse range of undergraduate and graduate programs across the humanities, social sciences, natural sciences, and arts. Join our vibrant academic community and explore your passions!',

  -- Essential knowledge, skills, experience (not applicable for universities)
  N'• Proven experience in the education industry (1+ years)
  • Expertise in developing and delivering course content
  • Excellent communication and writing skills
  • Ability to create engaging and interactive learning experiences
  • Passion for education and a commitment to student success',

  -- Recruitment message
  N'Evergreen State College is seeking passionate and dedicated faculty members to join our growing community. We offer competitive salaries and benefits, opportunities for research and scholarship, and a supportive learning environment. We are particularly interested in candidates who are committed to innovative teaching methods and interdisciplinary collaboration. If you are a scholar with a passion for inspiring the next generation of learners, we encourage you to apply!',

  -- People section (highlights of university culture)
  N'At Evergreen State College, we foster a collaborative and inclusive learning environment where students are encouraged to think critically and creatively. We value academic excellence, social responsibility, and a commitment to lifelong learning. Our faculty are dedicated to providing personalized attention and mentorship to our students, helping them achieve their academic and personal goals.
  Evergreen State College was founded in 1970 with a mission to provide a unique and transformative educational experience. We are committed to social justice, environmental sustainability, and fostering a diverse and inclusive campus community.',
  
  'img-8.png', 'company-8.png', 'brand-8.png', 'https://www.evergreen.edu', 4,
  'United States', 'Olympia', 'evergreen-state-college',
  1, 8,
  CAST(N'1970-09-15 00:00:00' AS SmallDateTime)
);

-- Retail
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  9,
  N'Green Earth Market',
  N'A celebration of family and community',

  -- Welcome message
  N'Welcome to Green Earth Market, your one-stop shop for all things natural and organic! We offer a wide variety of fresh produce, sustainable groceries, and eco-friendly products. We are passionate about providing our customers with healthy and environmentally responsible choices.',

  -- Essential knowledge, skills, experience
  N'• Experience in the retail industry (preferred)
  • Excellent customer service skills
  • Strong communication and interpersonal skills
  • Ability to work effectively in a fast-paced environment
  • Knowledge of organic and natural products (a plus)
  • Passion for sustainability and healthy living',

  -- Recruitment message
  N'Green Earth Market is seeking enthusiastic and customer-oriented team members to join our growing team. We offer a competitive compensation and benefits package, a positive work environment, and the opportunity to make a difference in your community. If you are passionate about healthy living and sustainability, we encourage you to apply!',

  -- People section (highlights of company culture)
  N'At Green Earth Market, we foster a positive and collaborative work environment where our employees feel valued and respected. We are committed to providing our team with opportunities for professional development and growth. We believe in creating a fun and engaging shopping experience for our customers, while also promoting sustainable practices.

  Green Earth Market was founded in 2010 with a mission to provide high-quality, organic, and locally-sourced products to our community. We are committed to supporting local farmers, sustainable agriculture, and environmental responsibility.',
  'img-9.png', 'company-9.png', 'brand-9.png', 'https://www.greenearthmarket.com', 5,
  'Canada', 'Vancouver', 'green-earth-market',
  1, 9,
  CAST(N'2010-10-26 00:00:00' AS SmallDateTime)
);

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  10,
  N'TechStyle',
  N'Together we are stronger',

  -- Welcome message
  N'Welcome to TechStyle, your destination for the latest and greatest tech gadgets and accessories! We offer a curated selection of smartphones, laptops, tablets, headphones, and more, from top brands you trust. We are passionate about helping our customers discover the perfect tech to enhance their lives.',

  -- Essential knowledge, skills, experience
  N'• Experience in the consumer electronics industry (preferred)
  • Strong product knowledge of tech gadgets and accessories
  • Excellent customer service skills
  • Ability to explain technical features in an understandable way
  • Experience with sales and point-of-sale systems (a plus)
  • Passion for technology and staying up-to-date on the latest trends',

  -- Recruitment message
  N'TechStyle is seeking tech-savvy and customer-focused sales associates to join our team. We offer a competitive compensation and benefits package, opportunities for commission earnings, and a fast-paced and dynamic work environment. If you are passionate about technology and love helping people find the perfect tech solutions, we encourage you to apply!',

  -- People section (highlights of company culture)
  N'At TechStyle, we foster a fun and collaborative work environment where our employees are encouraged to learn and grow. We provide ongoing product training and development opportunities to ensure our team stays ahead of the curve. We believe in creating a welcoming and informative shopping experience for our customers, helping them discover the tech that best suits their needs.
  TechStyle was founded in 2015 with a mission to make cutting-edge technology accessible and enjoyable for everyone. We offer a curated selection of high-quality tech products at competitive prices, along with exceptional customer service.',
  
  'img-10.png', 'company-10.png', 'brand-10.png', 'https://www.techstyle.com', 5,
  'United States', 'Los Angeles', 'tech-style',
  1, 10,
  CAST(N'2015-03-18 00:00:00' AS SmallDateTime)
);

-- Manufacturing
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  11,
  N'Innovation Motors',
  N'Teams make dreams and more',

  -- Welcome message
  N'Welcome to Innovation Motors, a leading manufacturer of electric vehicles (EVs) committed to sustainability and innovation. We design, develop, and manufacture high-performance EVs that are changing the way we drive. Join our team and be part of the future of transportation!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the manufacturing industry (3+ years)
  • Experience in automotive manufacturing or a related field (a plus)
  • Strong understanding of manufacturing processes and quality control procedures
  • Excellent problem-solving and analytical skills
  • Ability to work effectively in a team environment
  • Familiarity with lean manufacturing principles (a plus)',

  -- Recruitment message
  N'Innovation Motors is seeking talented engineers, production associates, and quality control specialists to join our growing team. We offer a competitive compensation and benefits package, opportunities for professional development, and the chance to work on cutting-edge technology that is making a positive impact on the environment. If you are passionate about innovation and sustainable transportation, we encourage you to apply!',

  -- People section (highlights of company culture)
  N'At Innovation Motors, we foster a culture of collaboration, innovation, and continuous improvement. We value our employees expertise and dedication to quality. We offer opportunities for professional development and career advancement, and we are committed to building a diverse and inclusive workplace.
  Innovation Motors was founded in 2020 with a vision to revolutionize the automotive industry with sustainable and high-performance electric vehicles. We are committed to ethical manufacturing practices and environmental responsibility.',
  
  'img-11.png', 'company-11.png', 'brand-1.png', 'https://www.innovationmotors.com', 6,
  'Germany', 'Berlin', 'innovation-motors',
  1, 11,
  CAST(N'2020-12-01 00:00:00' AS SmallDateTime)
);

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  12,
  N'Precision Instruments Inc.',
  N'What we do together can make a difference',

  -- Welcome message
  N'Welcome to Precision Instruments Inc., a leading manufacturer of high-quality scientific instruments used in research and development across various fields. We are dedicated to providing scientists and researchers with the tools they need to make groundbreaking discoveries. Join our team and be part of the innovation process!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the manufacturing industry (2+ years)
  • Experience in precision machining or a related field (a plus)
  • Strong understanding of quality control procedures and metrology
  • Excellent attention to detail and commitment to accuracy
  • Ability to work effectively in a team environment and meet deadlines
  • Familiarity with computer-aided design (CAD) and manufacturing (CAM) software (a plus)',

  -- Recruitment message
  N'Precision Instruments Inc. is seeking talented machinists, quality control inspectors, and design engineers to join our team. We offer a competitive compensation and benefits package, opportunities for professional development, and the chance to contribute to the advancement of scientific research. If you are passionate about precision and quality, and enjoy working with cutting-edge technology, we encourage you to apply!',

  -- People section (highlights of company culture)
  N'At Precision Instruments Inc., we foster a culture of excellence, innovation, and collaboration. We value our employees expertise, dedication to quality, and commitment to continuous improvement. We offer opportunities for professional development and career advancement, and we believe in creating a supportive and rewarding work environment.
  Precision Instruments Inc. was founded in 1965 with a mission to provide scientists and researchers with the most precise and reliable instruments available. We are committed to continuous innovation and upholding the highest quality standards in the industry.',
  
  'img-12.png', 'company-12.png', 'brand-2.png', 'https://www.precisioninstruments.com', 6,
  'Japan', 'Tokyo', 'precision-instruments-inc',
  1, 12,
  CAST(N'1965-08-12 00:00:00' AS SmallDateTime)
);

-- Construction
INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  13,
  N'Sustainable Builders Inc.',
  N'Alone we are small, but teams can stand near giants',

  -- Welcome message
  N'Welcome to Sustainable Builders Inc., a construction company dedicated to building a greener future. We specialize in sustainable construction practices and energy-efficient buildings. Join our team and help us create environmentally responsible structures that make a positive impact!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the construction industry (3+ years)
  • Expertise in sustainable construction methods (LEED certification a plus)
  • Experience in residential or commercial construction (specify based on company focus)
  • Strong understanding of building codes and regulations
  • Excellent project management and communication skills
  • Ability to work effectively in a team environment and meet deadlines',

  -- Recruitment message
  N'Sustainable Builders Inc. is seeking talented carpenters, project managers, and sustainability specialists to join our team. We offer a competitive compensation and benefits package, opportunities for professional development, and the chance to be at the forefront of sustainable construction. If you are passionate about the environment and building high-quality, energy-efficient structures, we encourage you to apply!',

  -- People section (highlights of company culture)
  N'At Sustainable Builders Inc., we foster a culture of collaboration, innovation, and environmental responsibility. We value our employees expertise, dedication to quality craftsmanship, and commitment to sustainable practices. We offer opportunities for professional development and career advancement, and we believe in building a safe and rewarding work environment.
  Sustainable Builders Inc. was founded in 2010 with a mission to promote sustainable building practices and create environmentally friendly structures. We are committed to using recycled materials, energy-efficient technologies, and responsible construction methods.',
  
  'img-13.png', 'company-13.png', 'brand-3.png', 'https://www.sustainablebuilders.com', 7,
  'United States', 'San Francisco', 'sustainable-builders-inc',
  1, 13,
  CAST(N'2010-04-21 00:00:00' AS SmallDateTime)
);

INSERT INTO [company_profile] (account_id, name, slogan, welcome, essential, recruitment, people, company_background, company_image, company_logo, company_website_url, industry_id, country, city, [meta], [hide], [order], [datebegin])
VALUES (
  14,
  N'SkyRise Construction',
  N'Talent may get lucky, but teamwork is built to win',

  -- Welcome message
  N'Welcome to SkyRise Construction, a leader in high-rise construction projects. We specialize in building skyscrapers, office buildings, and other large-scale structures. Join our team and be part of shaping the skylines of tomorrow!',

  -- Essential knowledge, skills, experience
  N'• Proven experience in the construction industry (5+ years, high-rise experience a plus)
  • Expertise in construction management and project planning for large-scale projects
  • Strong understanding of structural engineering principles and safety protocols
  • Excellent communication and collaboration skills to work with architects, engineers, and subcontractors
  • Proficient in construction management software (BIM, etc)
  • Ability to work effectively in a fast-paced and demanding environment',

  -- Recruitment message
  N'SkyRise Construction is seeking experienced project managers, structural engineers, and safety specialists to join our team. We offer a competitive compensation and benefits package, opportunities for professional development, and the chance to work on challenging and rewarding high-rise construction projects. If you are a skilled professional with a passion for building and shaping skylines, we encourage you to apply!',

  -- People section (highlights of company culture)
  N'At SkyRise Construction, we foster a culture of excellence, innovation, and safety. We value our employees expertise, dedication to quality craftsmanship, and commitment to meeting deadlines. We offer opportunities for professional development and career advancement, and we believe in creating a collaborative and rewarding work environment.
  SkyRise Construction was founded in 1985 with a vision to become a leader in high-rise construction. We are committed to using cutting-edge technologies, innovative construction methods, and maintaining the highest safety standards in the industry.',
  
  'img-14.png', 'company-14.png', 'brand-4.png', 'https://www.skyriseconstruction.com', 7,
  'United Arab Emirates', 'Dubai', 'skyrise-construction', 1,
  14,
  CAST(N'1985-11-19 00:00:00' AS SmallDateTime)
);

--Seeker profile
-- Job seeker (software dev)
INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
15,
75000,
65000,
85000,
N'Nghĩa Ân',
N'Phạm Trần',
'1993-12-18',
'img.png',
'user1.png',
'candidate-1.png',
'Graphic Designer', 
'Hello there! My name is Nghia An. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
', 

4, 
'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor’s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

'Master',
'• Necessitatibus quibusdam facilis
• Velit unde aliquam et voluptas reiciendis non sapiente labore
• Commodi quae ipsum quas est itaque
• Lorem ipsum dolor sit amet, consectetur adipisicing elit
• Deleniti asperiores blanditiis nihil quia officiis dolor',

N'Việt Nam', N'Hồ Chí Minh', N'19, Nguyễn Hữu Thọ, Quận 7',
N'nghia-an-pham-tran',
1, 3, 
CAST(N'2018-03-09 00:00:00' AS SmallDateTime));

-- Job seeker (Nurse)
INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  16,
  90000,  -- Current salary
  80000,  -- Low salary range
  100000, -- High salary range
  N'Ân',
  N'Nghĩa',
  '1998-09-23',
  'img.png',
  'user2.png',
  'candidate-2.png',
  'Software Engineer',
  'I am a highly motivated and results-oriented software engineer with 7+ years of experience in designing, developing, and implementing complex software solutions. Proven ability to work effectively in a fast-paced environment and collaborate with cross-functional teams. Expertise in various programming languages and technologies including Java, Python, Spring Boot, and AWS.

  I am a passionate advocate for clean code and maintainable software. I am always eager to learn new technologies and improve my skills. I am a team player and enjoy working with others to achieve common goals. In my free time, I enjoy [mention hobbies or interests briefly, around 50 characters].',

  7,  -- Years of experience

  '• Experience in designing, developing, and implementing complex enterprise applications
  • Proficient in object-oriented programming (OOP) concepts and design patterns
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Experience working in Agile development environments
  • Experience with unit testing and integration testing frameworks
  • Familiarity with cloud platforms like AWS, Azure, or GCP
  • Excellent problem-solving and analytical skills
  • Strong communication and collaboration skills',

  'Bachelor',

  '• Relevant coursework in algorithms
  • Relevant coursework indata structures
  • Relevant coursework in software engineering
  • Graduated with honors',

  N'Việt Nam', N'Long An', N'Thị trấn Cần Giuộc, Huyện Cần Giuộc',
  'an-nghia',
  1, 2,
  CAST(N'2020-05-12 00:00:00' AS SmallDateTime)
);

-- Job seeker (teaching professor)
INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  -- Replace 20 with the actual account ID for this user
  17,
  95000,  -- Current salary (example, adjust based on your data)
  85000,  -- Low salary range
  105000, -- High salary range
  'Amelia',
  'Lopez',
  '1978-09-01',
  'img.png',
  'user3.png',
  'candidate-3.png',
  'Professor of Computer Science',
  'Highly motivated and experienced Professor of Computer Science with 15+ years of teaching and research experience at the university level. Proven ability to develop and deliver engaging lectures, create effective course materials, and mentor students. Passionate about fostering a love of learning and helping students achieve their academic goals. Expertise in [mention specific areas of computer science expertise, artificial intelligence, software engineering].',

  12,  -- Years of experience

  '• Developed and taught a variety of undergraduate and graduate courses in computer science
  • Mentored graduate students on research projects, resulting in several publications in top academic journals
  • Secured grant funding to support research initiatives
  • Received positive student evaluations for teaching effectiveness and mentorship
  • Actively involved in professional organizations and conferences',

  'PhD',

  '• Dissertation focused on Artificial Intelligent
  • Dissertation focused on Deep Learning
  • Dissertation focused on Neural network',

  'United States', 'Los Angeles', NULL,
  'amelia-lopez',
  0, 4,
  CAST(N'2022-02-14 00:00:00' AS SmallDateTime)
)

INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  -- Replace 19 with the actual account ID for this user
  18,
  70000,  -- Current salary
  65000,  -- Low salary range
  80000, -- High salary range
  'Olivia',
  'Garcia',
  '1990-05-22',
  'img.png',
  'user4.png',
  'candidate-4.png',
  'Registered Nurse',
  'I am a compassionate and dedicated Registered Nurse with 5+ years of experience in a fast-paced hospital setting. Proven ability to provide high-quality care to patients and collaborate effectively with doctors and other healthcare professionals. Skilled in assessment, medication administration, patient education, and maintaining accurate medical records.
  
   I am passionate about patient advocacy and ensuring positive patient outcomes.',

  5,  -- Years of experience

  '• Experience in a variety of clinical settings, including medical-surgical, pediatrics, and emergency room
  • Strong assessment skills and ability to identify patient needs
  • Proficient in administering medications, performing CPR, and other nursing interventions
  • Excellent communication and interpersonal skills to build rapport with patients and families
  • Ability to prioritize tasks, manage time effectively, and work independently
  • Commitment to maintaining a sterile and safe environment
  • Strong teamwork skills and ability to collaborate with other healthcare professionals',

  'Bachelor',

  '• Graduated with honors
  • Relevant coursework in anatomy
  • Relevant coursework in physiology
  • Relevant coursework in pharmacology
  • Relevant coursework in nursing care',

  'France', 'Paris', NULL,
  'olivia-garcia',
  1, 3,
  CAST(N'2023-11-19 00:00:00' AS SmallDateTime)
);

-- Job seeker (Financial analyst)
INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  19,
  110000,  -- Current salary (example, adjust based on your data)
  100000,  -- Low salary range
  120000, -- High salary range
  'Michael',
  'Brown',
  '1985-11-12',
  'img.png',
  'user5.png',
  'candidate-5.png',
  'Financial Analyst',
  'Results-oriented Financial Analyst with 8+ years of experience in financial modeling, investment analysis, and risk management. Proven ability to analyze financial data, identify trends, and develop insightful recommendations to support strategic decision-making. Skilled in utilizing various financial modeling tools and techniques. Adept at communicating complex financial information to both technical and non-technical audiences.',
  
  8,  -- Years of experience

  '• Conducted in-depth financial analysis to assess investment opportunities and recommend allocation strategies
  • Developed and maintained comprehensive financial models to forecast revenue, expenses, and profitability
  • Performed risk assessments to identify and mitigate potential financial risks
  • Created compelling presentations and reports to communicate financial findings to stakeholders
  • Strong analytical and problem-solving skills with a keen eye for detail
  • Excellent communication and interpersonal skills to collaborate effectively with cross-functional teams',

  'Master',

  '• Relevant coursework in financial accounting, corporate finance, investment analysis, and risk management
  • Achieved a GPA of 3.9 
  • Participated in student-run investment clubs or financial analysis competitions',

  'United Kingdom', 'London', NULL,
  'michael-brown',
  1, 5, 
  CAST(N'2021-07-05 00:00:00' AS SmallDateTime)
);

-- Job seeker (Electrical engineer)
INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  -- Replace 22 with the actual account ID for this user
  20,
  85000,  -- Current salary (example, adjust based on your data)
  75000,  -- Low salary range
  95000, -- High salary range
  'Brandon',
  'Walker',
  '1987-03-04',
  'img.png',
  'user6.png',
  'candidate-6.png',
  'Electrical Engineer',
  'Highly motivated and results-oriented Electrical Engineer with 2+ years of experience in the construction industry. Proven ability to design, install, and maintain electrical systems for various commercial and residential projects. Strong understanding of electrical codes and safety regulations. Skilled in using electrical design software (AutoCAD, etc) and troubleshooting electrical problems.
  
   Excellent communication and collaboration skills to work effectively with contractors, architects, and other stakeholders.',
  
  2,  -- Years of experience

  '• Designed and reviewed electrical plans for commercial and residential buildings
  • Performed electrical calculations to ensure system capacity and safety
  • Oversaw the installation of electrical systems by subcontractors
  • Inspected and tested electrical systems to ensure compliance with codes
  • Troubleshooted and resolved electrical problems on construction sites
  • Maintained detailed documentation of electrical systems for future reference
  • Collaborated with architects and contractors to ensure electrical systems met project specifications',

  'Bachelor',

  '• Relevant coursework in electrical circuits, power systems, and control systems
  • Final year project focused on energy-efficient building designs',

  'Germany', 'Berlin', NULL,
  'brandon-walker',
  1, 6,
  CAST(N'2020-12-01 00:00:00' AS SmallDateTime)
);

-- Job seeker (Customer Service Representative)
INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  -- Replace 23 with the actual account ID for this user
  21,
  55000,  -- Current salary (example, adjust based on your data)
  50000,  -- Low salary range
  60000, -- High salary range
  'Stephanie',
  'Nguyen',
  '1995-08-19',
  'img.png',
  'user7.png',
  'candidate-7.png',
  'Customer Service Representative',
  'Enthusiastic and customer-focused Customer Service Representative with 3+ years of experience exceeding customer expectations in a fast-paced environment. Proven ability to resolve customer inquiries and complaints promptly and professionally. Skilled in active listening, problem-solving, and de-escalation techniques. Passionate about building positive customer relationships and ensuring customer satisfaction.',
  
  3,  -- Years of experience

  '• Resolved customer inquiries and complaints via phone, email, and chat in a timely and efficient manner.
  • Provided accurate and helpful information about products and services.
  • Identified and addressed customer needs effectively.
  • Troubleshooted technical problems and found solutions.
  • De-escalated customer frustration and maintained a positive and professional demeanor.
  • Exceeded customer expectations by going the extra mile to ensure satisfaction.
  • Documented customer interactions and maintained accurate records.',

  'Master',

  '• Relevant coursework in customer service.
  • Relevant coursework in communication.
  • Relevant coursework in conflict resolution.',

  'VietNam', 'Ho Chi Minh', NULL,
  'stephanie-nguyen',
  1, 7,
  CAST(N'2022-06-23 00:00:00' AS SmallDateTime)
);

INSERT INTO [seeker_profile] (account_id, current_salary, low_salary_range, high_salary_range, first_name, last_name, date_of_birth, wallpaper, avatar, avatar_profile, title, about, experience, desc_experience, education, desc_education, country, city, [address], [meta], [hide], [order], [datebegin])
VALUES (
  22,
  90000,  -- Current salary (example, adjust based on your data)
  80000,  -- Low salary range
  100000, -- High salary range
  'Maria',
  'Rodriguez',
  '1989-04-10',
  'img.png',
  'user8.png',
  'candidate-8.png',
  'Manufacturing Engineer',
  'Results-oriented Manufacturing Engineer with 7+ years of experience in optimizing production processes and ensuring product quality in a fast-paced manufacturing environment. Proven ability to analyze production data, identify areas for improvement, and implement effective solutions to increase efficiency and reduce costs. Strong understanding of lean manufacturing principles and Six Sigma methodologies. Excellent communication and collaboration skills to work effectively with cross-functional teams.',

  7,  -- Years of experience

  '• Analyzed production data to identify inefficiencies and bottlenecks
  • Developed and implemented process improvements to increase production output and reduce waste
  • Conducted root cause analysis to identify and address quality control issues
  • Worked with production teams to ensure adherence to quality standards and safety procedures
  • Implemented lean manufacturing principles to optimize production processes
  • Utilized Six Sigma methodologies to improve product quality and reduce defects
  • Managed and maintained production documentation and records',

  'Bachelor',

  '• Relevant coursework in manufacturing processes, quality control, and industrial automation
  • Final year project focused on optimizing production line efficiency',

  'Japan', 'Tokyo', NULL,
  'maria-rodriguez',
  1, 8,
  CAST(N'2021-01-18 00:00:00' AS SmallDateTime)
);

--Job type
INSERT INTO [job_type] (name, [meta], [hide], [order], [datebegin])
VALUES ('Full-Time', N'full-time', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_type] (name, [meta], [hide], [order], [datebegin])
VALUES ('Part-Time', N'part-time', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_type] (name, [meta], [hide], [order], [datebegin])
VALUES ('Contract', N'contract', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

--Job position
INSERT INTO [job_position] (name, [meta], [hide], [order], [datebegin])
VALUES ('Senior', N'senior', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_position] (name, [meta], [hide], [order], [datebegin])
VALUES ('Junior', N'junior', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_position] (name, [meta], [hide], [order], [datebegin])
VALUES ('Fresher', N'fresher', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

--Job level
INSERT INTO [job_level] (name, [meta], [hide], [order], [datebegin])
VALUES ('Entry-level', N'entry-level', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_level] (name, [meta], [hide], [order], [datebegin])
VALUES ('Mid-level', N'mid-level', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_level] (name, [meta], [hide], [order], [datebegin])
VALUES ('Senior', N'senior', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

--Job experience
INSERT INTO [job_experience] (name, [meta], [hide], [order], [datebegin])
VALUES ('1 years', N'1-years', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_experience] (name, [meta], [hide], [order], [datebegin])
VALUES ('2 years', N'2-years', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_experience] (name, [meta], [hide], [order], [datebegin])
VALUES ('3 years', N'3-years', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_experience] (name, [meta], [hide], [order], [datebegin])
VALUES ('4 years', N'4-years', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

--Job status
INSERT INTO [job_status] (name, [meta], [hide], [order], [datebegin])
VALUES ('Remote', N'remote', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_status] (name, [meta], [hide], [order], [datebegin])
VALUES ('Onsite', N'onsite', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [job_status] (name, [meta], [hide], [order], [datebegin])
VALUES ('Hybird', N'hybird', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Keyword
-- Information Technology keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Software Dev', 1, N'software-dev', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Web Design', 1, N'web-design', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Cybersecurity', 1, N'cybersecurity', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Data Science', 1, N'data-science', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Java', 1, N'java', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Cloud', 1, N'cloud', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Python', 1, N'python', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Azure', 1, N'azure', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('IT', 1, N'it', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Healthcare keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Nursing', 2, N'nursing', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Research', 2, N'research', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Healthcare', 2, N'healthcare', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Science', 2, N'science', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Hospital', 2, N'hospital', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Medicine', 2, N'medicine', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Pharmaceutical', 2, N'pharmaceutical', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Public Health', 2, N'public-health', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Radiology', 2, N'radiology', 1, 9, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Pharmacy', 2, N'pharmacy', 1, 10, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Physician', 2, N'physician', 1, 10, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Laboratory', 2, N'laboratory', 1, 10, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Surgeon', 2, N'surgeon', 1, 10, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
-- Finance keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Accounting', 3, N'accounting', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Banking', 3, N'banking', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Investment', 3, N'investment', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Analyst', 3, N'analyst', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Services', 3, N'services', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Loan', 3, N'loan', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Teller', 3, N'teller', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Finance', 3, N'finance', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Financial Plan', 3, N'financial-plan', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Internal Audit', 3, N'internal-audit', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Anti Laundering', 3, N'anti-laundering', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Wealth Management', 3, N'wealth-management', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Risk Management', 3, N'risk-managment', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Education keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Teacher', 4, N'teacher', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Professor', 4, N'professor', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Education', 4, N'education', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('PhD', 4, N'phd', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Edu Technology', 4, N'edu-technology', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));  -- Changed 'EduTech' to 'Edu Technology' for clarity
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Teaching Assistant', 4, N'teaching-assistant', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Higher Education', 4, N'higher-education', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Library', 4, N'library', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
-- Retail keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Sales', 5, N'sales', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('E-commerce', 5, N'e-commerce', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Operations', 5, N'operations', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Management', 5, N'management', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Marketing', 5, N'marketing', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Customer Service', 5, N'customer-service', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Logistics', 5, N'logistics', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Communication', 5, N'communication', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Recruiting', 5, N'recruiting', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Retail', 5, N'retail', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Cashier', 5, N'cashier', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
-- Manufacturing keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Engineering', 6, N'engineering', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Manufacturing', 6, N'manufacturing', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Electronic', 6, N'electronic', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Aerospace', 6, N'aerospace', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Aviation', 6, N'aviation', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Production', 6, N'production', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Quality Control', 6, N'quality-control', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Supply Chain', 6, N'supply-chain', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Driver', 6, N'driver', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Warehouse', 6, N'warehouse', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Robotics', 6, N'robotics', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Battery', 6, N'battery', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Construction keywords
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Project Management', 7, N'project-management', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Construction Management', 7, N'construction-management', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Civil Engineering', 7, N'civil-engineering', 1, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Architecture', 7, N'architecture', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Infrastructure', 7, N'infrastructure', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Construction', 7, N'construction', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('HR', 7, N'hr', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Quantity survey', 7, N'quantity-survey', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Welding', 7, N'welding', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Carpentry', 7, N'carpentry', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Electrical', 7, N'electrical', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
INSERT INTO [keyword] (name, industry_id, [meta], [hide], [order], [datebegin])
VALUES ('Mechanical', 7, N'mechanical', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

--Job post

-- Information Technology (Google)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Engineer', 1, 1, 2, 2, 2, 1,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

150000.00, 'United States', 'Mountain View', NULL,  N'software-engineer', 1, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Data Analyst (Full-Time, Senior, Mid-Level, 2+ years experience, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Data Analyst', 1, 1, 1, 2, 3, 1,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

120000.00, 'Canada', 'Toronto', NULL, N'data-analyst', 1, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- User Experience Designer (Full-Time, Junior, Entry-Level, 1 year experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'User Experience Designer', 1, 1, 2, 1, 1, 2, 

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

100000.00, 'United States', 'San Francisco', NULL, N'ux-designer', 1, 3, CAST(GETDATE() AS SmallDateTime));

-- Software Developer (Contract, Senior, Mid-Level, 3+ years experience, Hybrid)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Developer', 1, 3, 1, 2, 4, 3, 
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

150000.00, 'France', 'Paris', NULL, N'software-developer', 1, 4, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Quality Assurance Engineer (Full-Time, Fresher, Entry-Level, No experience required, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Quality Assurance Engineer', 1, 1, 3, 1, 1, 1, 
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

80000.00, 'United States', 'New York', NULL, N'qa-engineer', 1, 5, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Product Manager (Full-Time, Senior, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Product Manager', 1, 1, 1, 2, 3, 2, 
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

130000.00, 'United Kingdom', 'London', NULL, N'product-manager', 1, 6, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Sales Associate (Part-Time, Junior, Entry-Level, No experience required, Hybrid)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Sales Associate', 1, 2, 2, 1, 1, 3, 
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

50000.00, 'United States', 'Austin', NULL, N'sales-associate', 1, 7, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Fresher, Entry-Level, No experience required, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Service Representative', 1, 1, 3, 1, 1, 1,
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

45000.00, 'United States', 'Olympia', NULL, N'customer-service-rep', 1, 8, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Marketing Manager (Full-Time, Senior, Mid-Level, 3+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Marketing Manager', 1, 1, 1, 2, 4, 2, 

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

110000.00, 'Canada', 'Vancouver', NULL, N'marketing-manager', 1, 9, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- IT Support Specialist (Contract, Junior, Entry-Level, 1 year experience, Hybrid)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'IT Support Specialist', 1, 3, 2, 1, 2, 3,
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

60000.00, 'United States', 'Los Angeles', NULL, N'it-support-specialist', 1, 10, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Information Technology (Microsoft)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Cloud Architect', 2, 1, 2, 3, 3, 2,
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

180000.00, 'Germany', 'Berlin', NULL, N'cloud-architect', 0, 11, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Software Engineer (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Engineer', 2, 1, 2, 2, 3, 1,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

160000.00, 'Japan', 'Tokyo', NULL, N'software-engineer', 1, 12, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Data Scientist (Full-Time, Senior, Mid-Level, 3+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Data Scientist', 2, 1, 1, 2, 4, 2,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

170000.00, 'United Arab Emirates', 'Dubai', NULL, N'data-scientist', 1, 13, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Program Manager (Full-Time, Senior, Senior, 4+ years experience, Hybrid)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Program Manager', 2, 1, 1, 3, 4, 3,
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

140000.00, 'VietNam', 'Ho Chi Minh', NULL, N'program-manager', 1, 14, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- User Experience Designer (Full-Time, Junior, Entry-Level, 1 year experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'User Experience Designer', 2, 1, 2, 1, 1, 2,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

100000.00, 'VietNam', 'Ha Noi', NULL, N'ux-designer', 1, 15, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Security Engineer (Contract, Senior, Mid-Level, 3+ years experience, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Security Engineer', 2, 3, 1, 2, 4, 1,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

150000.00, 'VietNam', 'Thua Thien Hue', NULL, N'security-engineer', 1, 16, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Software Development Engineer in Test (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Hybrid)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Development Engineer in Test (SDET)', 2, 1, 2, 2, 3, 3,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

130000.00, 'VietNam', 'Da Lat', NULL, N'sdet', 1, 17, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Business Systems Analyst (Full-Time, Junior, Entry-Level, No experience required, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Business Systems Analyst', 2, 1, 3, 1, 1, 2, 

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

90000.00, 'VietNam', 'Hai Phong', NULL, N'business-analyst', 1, 18, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Sales Representative (Part-Time, Junior, Entry-Level, No experience required, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Sales Representative', 2, 2, 2, 1, 1, 1,

-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

60000.00, 'United States', 'Mountain View', NULL, N'sales-representative', 1, 19, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Success Manager (Full-Time, Senior, Mid-Level, 3+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Success Manager', 2, 1, 1, 2, 4, 2, 
-- job welcome
N'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.

The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms..',

-- job essential
N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch',

-- job preffered
 N'• Proven experience in software designing (3+ years)
  • Strong understanding of software development lifecycle (SDLC) methodologies
  • Effective communication and teamwork abilities
  • Passion for learning and staying up-to-date with the latest technologies',

-- job description
N'Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc) that solve real user problems through the user experience.
Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.',

120000.00, 'Canada', 'Toronto', NULL, N'customer-success-manager', 1, 20, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Healthcare (Pfizer)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Research Scientist', 3, 1, 1, 3, 2, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

120000.00, 'United States', 'San Francisco', NULL, N'research-scientist', 0, 21, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Clinical Research Associate (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Clinical Research Associate (CRA)', 3, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

100000.00, 'France', 'Paris', NULL, N'clinical-research-associate', 1, 22, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Medical Doctor (Full-Time, Senior, Senior, 4+ years experience, Onsite) 
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Medical Doctor', 3, 1, 1, 3, 4, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

200000.00, 'United States', 'New York', NULL, N'medical-doctor', 1, 23, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Registered Nurse (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Registered Nurse (RN)', 3, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

80000.00, 'United Kingdom', 'London', NULL, N'registered-nurse', 1, 24, CAST(GETDATE() AS SmallDateTime));

-- Healthcare Data Analyst (Full-Time, Junior, Entry-Level, 1 year experience, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Healthcare Data Analyst', 3, 1, 2, 1, 1, 1,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

70000.00, 'United States', 'Austin', NULL, N'healthcare-data-analyst', 1, 25, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Pharmacist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Pharmacist', 3, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

90000.00, 'United States', 'Olympia', NULL, N'pharmacist', 1, 26, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Sales Representative (Pharmaceuticals) (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Sales Representative (Pharmaceuticals)', 3, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

110000.00, 'Canada', 'Vancouver', NULL, N'pharmaceutical-sales-rep', 1, 27, CAST(GETDATE() AS SmallDateTime));

-- Medical Laboratory Scientist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Medical Laboratory Scientist (MLS)', 3, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

85000.00, 'United States', 'Los Angeles', NULL, N'medical-lab-scientist', 1, 28, CAST(GETDATE() AS SmallDateTime));

-- Health Information Manager (Full-Time, Senior, Mid-Level, 3+ years experience, Remote)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Health Information Manager (HIM)', 3, 1, 1, 2, 4, 1,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

90000.00, 'Germany', 'Berlin', NULL, N'health-information-manager', 1, 29, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Healthcare Marketing Manager (Full-Time, Senior, Mid-Level, 3+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Healthcare Marketing Manager', 3, 1, 1, 2, 4, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

120000.00, 'Japan', 'Tokyo', NULL, N'healthcare-marketing-manager', 1, 30, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Healthcare (Mayo Clinic)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Registered Nurse', 4, 3, 2, 2, 3, 1,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

80000.00, 'United Arab Emirates', 'Dubai', NULL, N'registered-nurse', 0, 31, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Physician (Full-Time, Senior, Senior, 4+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Physician', 4, 1, 1, 3, 4, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

220000.00, 'VietNam', 'Ho Chi Minh', NULL, N'physician', 1, 32, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Surgeon (Full-Time, Senior, Senior, 4+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Surgeon', 4, 1, 1, 3, 4, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

250000.00, 'VietNam', 'Ha Noi', NULL, N'surgeon', 1, 33, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Medical Assistant (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Medical Assistant', 4, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

60000.00, 'VietNam', 'Thua Thien Hue', NULL, N'medical-assistant', 1, 34, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Licensed Practical Nurse (LPN) (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Licensed Practical Nurse (LPN)', 4, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

55000.00, 'VietNam', 'Da Lat', NULL, N'licensed-practical-nurse', 1, 35, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Healthcare IT Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Healthcare IT Analyst', 4, 1, 2, 2, 3, 2, 
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

85000.00, 'VietNam', 'Hai Phong', NULL, N'healthcare-it-analyst', 1, 36, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Radiology Technologist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Radiology Technologist', 4, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

75000.00, 'United States', 'Mountain View', NULL, N'radiology-technologist', 1, 37, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Pharmacist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Pharmacist', 4, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

90000.00, 'Canada', 'Toronto', NULL, N'pharmacist', 1, 38, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Physical Therapist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Physical Therapist', 4, 1, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

80000.00, 'United States', 'San Francisco', NULL, N'physical-therapist', 1, 39, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Healthcare Recruiter (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Onsite)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Healthcare Recruiter', 4, 2, 2, 2, 3, 2,
-- job welcome
N'The healthcare team is dedicated to providing exceptional care to our patients. We are seeking a compassionate and skilled [Job Title] to join our growing team.

The ideal candidate will have a strong commitment to patient well-being and a passion for [Area of Healthcare]. This candidate will have experience working in a fast-paced healthcare environment and collaborating with a diverse team of professionals.',

-- job essential
N'• A minimum of 4 years of experience as a nurse or a related healthcare profession
• A valid USA license to practice Family medicine
• Strong clinical skills and a comprehensive understanding of healing principles
• Excellent communication and interpersonal skills, with the ability to build rapport with patients and colleagues
• Compassionate and empathetic demeanor, with a focus on patient-centered care
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to work independently and as part of a team
• Proficient in electronic health record (EHR) systems',

-- job preferred
N'• Experience working in a healthcare setting (hospital, clinic, etc) is a plus
• Bilingual (English and Japanese) is a plus
• Certifications in neural network is a plus',

-- job description
N'Patient Care: Conduct comprehensive assessments, develop individualized care plans, and provide high-quality care to patients.
Collaboration: Collaborate effectively with physicians, nurses, and other healthcare professionals to ensure optimal patient outcomes.
Documentation: Maintain accurate and detailed patient records in accordance with HIPAA regulations.
Education: Educate patients on their condition, treatment options, and self-care strategies.
Quality Improvement: Continuously strive to improve the quality of care provided by participating in quality improvement initiatives.',

70000.00, 'France', 'Paris', NULL, N'healthcare-recruiter', 1, 40, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Finance (JPMorgan Chase)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Investment Banker', 5, 1, 1, 3, 4, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

200000.00, 'United States', 'New York', NULL, N'investment-banker', 0, 41, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Financial Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Financial Analyst', 5, 1, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

100000.00, 'United Kingdom', 'London', NULL, N'financial-analyst', 1, 42, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Commercial Banker (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Commercial Banker', 5, 1, 2, 2, 3, 2, 
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

120000.00, 'United States', 'Austin', NULL, N'commercial-banker', 1, 43, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Wealth Management Advisor (Full-Time, Senior, Mid-Level, 3+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Wealth Management Advisor', 5, 1, 2, 2, 4, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

150000.00, 'United States', 'Olympia', NULL, N'wealth-management-advisor', 1, 44, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Risk Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, New York City)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Risk Analyst', 5, 1, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.', 

110000.00, 'Canada', 'Vancouver', NULL, N'risk-analyst', 1, 45, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Business Analyst (Financial Services) (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Business Analyst (Financial Services)', 5, 1, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

90000.00, 'United States', 'Los Angeles', NULL, N'business-analyst-financial-services', 1, 46, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Software Engineer (Financial Services) (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Engineer (Financial Services)', 5, 2, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

130000.00, 'Germany', 'Berlin', NULL, N'software-engineer-financial-services', 1, 47, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Data Analyst (Financial Services) (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Data Analyst (Financial Services)', 5, 2, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

100000.00, 'Japan', 'Tokyo', NULL, N'data-analyst-financial-services', 1, 48, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Internal Auditor (Financial Services) (Full-Time, Senior, Senior, 3+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Internal Auditor (Financial Services)', 5, 1, 3, 3, 4, 2, 
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

120000.00, 'United Arab Emirates', 'Dubai', NULL, N'internal-auditor-financial-services', 1, 49, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Anti-Money Laundering (AML) Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, New York City)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Anti-Money Laundering (AML) Analyst', 5, 1, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

95000.00, 'VietNam', 'Ho Chi Minh', NULL, N'aml-analyst', 1, 50, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Finance (Bank of America)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Financial Analyst', 6, 1, 2, 2, 2, 1,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

90000.00, 'VietNam', 'Ha Noi', NULL, N'financial-analyst', 0, 51, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Branch Manager (Full-Time, Senior, Mid-Level, 3+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Branch Manager', 6, 2, 1, 2, 4, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

80000.00, 'VietNam', 'Thua Thien Hue', NULL, N'branch-manager', 1, 52, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Loan Officer (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Loan Officer', 6, 2, 2, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

75000.00, 'VietNam', 'Da Lat', NULL, N'loan-officer', 1, 53, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Teller (Full-Time, Entry-Level, Entry-Level, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Teller', 6, 2, 3, 1, 1, 1,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

40000.00, 'VietNam', 'Hai Phong', NULL, N'teller', 1, 54, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Credit Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Charlotte, North Carolina)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Credit Analyst', 6, 1, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

95000.00, 'United States', 'Mountain View', NULL, N'credit-analyst', 1, 55, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Wealth Management Advisor (Full-Time, Senior, Mid-Level, 3+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Wealth Management Advisor', 6, 1, 2, 2, 4, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

150000.00, 'Canada', 'Toronto', NULL, N'wealth-management-advisor', 1, 56, CAST(GETDATE() AS SmallDateTime));

-- Mortgage Loan Officer (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Mortgage Loan Officer', 6, 2, 2, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

80000.00, 'United States', 'San Francisco', NULL, N'mortgage-loan-officer', 1, 57, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Business Banker (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Business Banker', 6, 1, 2, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

120000.00, 'France', 'Paris', NULL, N'commercial-banker', 1, 58, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Fraud Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Charlotte, North Carolina)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Fraud Analyst', 6, 1, 3, 2, 3, 2,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

90000.00, 'United States', 'New York', NULL, N'fraud-analyst', 1, 59, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Entry-Level, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Service Representative', 6, 2, 3, 1, 1, 1,
-- job welcome
N'The Finance team is a dynamic group of professionals dedicated to helping our clients achieve their financial goals. We are seeking a talented and motivated [Job Title] to join our growing team.

The ideal candidate will be a highly analytical individual with a passion for finance and a strong understanding of financial products and services. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A bachelors degree in Finance, Accounting, or a related field
• Minimum of 2 years of experience in a relevant financial services role (banking, investment, etc)
• Strong analytical and problem-solving skills
• Excellent communication and interpersonal skills, with the ability to explain complex financial concepts in a clear and concise manner
• Proficiency in financial modeling and analysis tools (Excel, Bloomberg, etc)
• Strong attention to detail and accuracy
• Ability to work independently and as part of a team
• Excellent time management skills and the ability to meet deadlines',

-- job preferred
N'• Series 7 or other relevant financial licenses is a plus
• Experience with Investment is a plus
• Strong understanding of financial regulations (KYC, AML, etc) is a plus',

-- job description
'Client Relationship Management: Build and maintain strong relationships with clients, understand their financial needs, and provide personalized financial advice.
Financial Analysis: Conduct financial analysis, research investment opportunities, and develop tailored financial plans for clients.
Product Knowledge: Maintain a deep understanding of financial products and services offered by the company and stay up-to-date on current market trends.
Account Management: Manage client accounts, ensure accurate record-keeping, and provide ongoing support to clients.
Reporting: Prepare accurate and timely reports for clients and internal stakeholders.',

45000.00, 'United Kingdom', 'London', NULL, N'customer-service-representative', 1, 60, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Education (Harvard University)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Professor', 7, 3, 3, 3, 4, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

180000.00, 'United States', 'Austin', NULL, N'professor', 0, 61, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Teaching Assistant (Full-Time, Entry-Level, Entry-Level, No experience required, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Teaching Assistant', 7, 3, 1, 1, 1, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',
30000.00, 'United States', 'Olympia', NULL, N'teaching-assistant', 1, 62, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Research Assistant (Full-Time, Entry-Level, Entry-Level, No experience required, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Research Assistant', 7, 3, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

32000.00, 'Canada', 'Vancouver', NULL, N'research-assistant', 1, 63, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Academic Advisor (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Academic Advisor', 7, 2, 1, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

55000.00, 'United States', 'Los Angeles', NULL, N'academic-advisor', 1, 64, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Admissions Counselor (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Admissions Counselor', 7, 2, 1, 2, 3, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

60000.00, 'Germany', 'Berlin', NULL, N'admissions-counselor', 1, 65, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Librarian (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Librarian', 7, 2, 2, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

65000.00, 'Japan', 'Tokyo', NULL, N'librarian', 1, 66, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- IT Specialist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'IT Specialist', 7, 2, 3, 2, 2, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

70000.00, 'United Arab Emirates', 'Dubai', NULL, N'it-specialist', 1, 67, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Financial Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Financial Analyst', 7, 1, 3, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

80000.00, 'VietNam', 'Ho Chi Minh', NULL, N'financial-analyst', 1, 68, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Marketing and Communications Specialist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Marketing and Communications Specialist', 7, 2, 2, 2, 3, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

75000.00, 'VietNam', 'Ha Noi', NULL, N'marketing-communications-specialist', 1, 69, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Financial Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Substitue professor', 7, 2, 3, 2, 3, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

50000.00, 'VietNam', 'Thua Thien Hue', NULL, N'substitue-professor', 1, 70, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Education (MIT)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Research Assistant', 8, 1, 1, 2, 1, 2, 
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

90000.00, 'VietNam', 'Da Lat', NULL, N'research-assistant', 0, 71, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Postdoctoral Researcher (Full-Time, Postdoctoral, Postdoctoral, No experience required, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Postdoctoral Researcher', 8, 3, 3, 3, 1, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

70000.00, 'VietNam', 'Hai Phong', NULL, N'postdoctoral-researcher', 1, 72, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Lecturer (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Lecturer', 8, 3, 3, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

100000.00, 'United States', 'Mountain View', NULL, N'lecturer', 1, 73, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Teaching Assistant (Full-Time, Entry-Level, Entry-Level, No experience required, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Teaching Assistant', 8, 3, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

30000.00, 'Canada', 'Toronto', NULL, N'teaching-assistant', 1, 74, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Research Scientist (Full-Time, Senior, Senior, 5+ years experience, Various Departments)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Research Scientist', 8, 1, 2, 3, 2, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

150000.00, 'United States', 'San Francisco', NULL, N'research-scientist', 1, 75, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Admissions Counselor (Part-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Admissions Counselor', 8, 2, 1, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

60000.00, 'France', 'Paris', NULL, N'admissions-counselor', 1, 76, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Librarian (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Librarian', 8, 1, 2, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

68000.00, 'United States', 'New York', NULL, N'librarian', 1, 77, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- IT Specialist (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'IT Specialist', 8, 1, 3, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

72000.00, 'United Kingdom', 'London', NULL, N'it-specialist', 1, 78, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Financial Analyst (Full-Time, Mid-Level, Mid-Level, 2+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Financial Analyst', 8, 1, 3, 2, 3, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

85000.00, 'United States', 'Austin', NULL, N'financial-analyst', 1, 79, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Financial Analyst (Full-Time, Mid-Level, Mid-Level, 1+ years experience, Cambridge, Massachusetts)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Career Counselor', 8, 1, 2, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a transformative educational experience for our students. We are seeking a passionate and dedicated professor to join our growing team.

The ideal candidate will have a strong commitment to education and a passion for History. This candidate will have experience working in an educational environment and enjoy collaborating with a diverse team of faculty and staff.',

-- job essential

N'• A minimum of 8 years of experience as a professor or a related educational profession
• A masters degree in History or a related field
• Strong communication and interpersonal skills, with the ability to build rapport with students, faculty, and staff
• Excellent organizational skills and the ability to manage multiple tasks effectively
• Ability to develop and deliver engaging and effective curriculum materials
• Proficiency in educational technology tools and learning management systems (LMS)
• Commitment to student success and a dedication to fostering a positive learning environment',
-- job preferred

N'• Experience teaching at the secondary level (a plus)
• Ph.D. in History or a related field (a plus)
• Bilingual (English and Vietnamese) (a plus)',
-- job description

N'Instruction: Develop and deliver engaging and effective instruction that aligns with curriculum standards.
Assessment: Design and implement assessments to measure student learning and inform instructional practices.
Student Support: Provide academic and emotional support to students to promote their success.
Collaboration: Collaborate with colleagues to develop and implement effective educational programs.
Professional Development: Continuously strive to improve professional knowledge and skills by attending workshops and conferences.',

85000.00, 'United States', 'Olympia', NULL, N'career-counselor', 1, 80, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Retail Amazon
-- Software Development Engineer (Full-Time, Mid-Level, Software Development Engineer, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Development Engineer', 9, 1, 2, 2, 2, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

140000.00, 'Canada', 'Vancouver', NULL, N'software-development-engineer', 1, 81, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Product Manager (Full-Time, Mid-Level, Product Manager, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Product Manager', 9, 1, 2, 2, 3, 3, 
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

150000.00, 'United States', 'Los Angeles', NULL, N'product-manager', 1, 82, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Data Scientist (Full-Time, Senior, Data Scientist, 5+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Data Scientist', 9, 1, 3, 3, 4, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

180000.00, 'Germany', 'Berlin', NULL, N'data-scientist', 1, 83, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Warehouse Associate (Full-Time, Entry-Level, Warehouse Associate, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Warehouse Associate', 9, 1, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

40000.00, 'Japan', 'Tokyo', NULL, N'warehouse-associate', 1, 84, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Associate (Full-Time, Entry-Level, Customer Service, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Service Associate', 9, 1, 1, 1, 1, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

45000.00, 'United Arab Emirates', 'Dubai', NULL, N'customer-service-associate', 1, 85, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Delivery Driver (Full-Time, Entry-Level, Delivery Driver, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Delivery Driver', 9, 1, 1, 1, 1, 2, 
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

50000.00, 'VietNam', 'Ho Chi Minh', NULL, N'delivery-driver', 1, 86, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Supply Chain Analyst (Full-Time, Mid-Level, Supply Chain Analyst, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Supply Chain Analyst', 9, 1, 2, 2, 3, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

100000.00, 'VietNam', 'Ha Noi', NULL, N'supply-chain-analyst', 1, 87, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Marketing Manager (Full-Time, Mid-Level, Marketing Manager, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Marketing Manager', 9, 1, 3, 2, 3, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

120000.00, 'VietNam', 'Thua Thien Hue', NULL, N'marketing-manager', 1, 88, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Retail Manager (Full-Time, Mid-Level, Marketing Manager, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Retail Manager', 9, 1, 3, 2, 3, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

110000.00, 'VietNam', 'Da Lat', NULL, N'retail-manager', 1, 89, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Cashier (Full-Time, Mid-Level, Marketing Manager, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Cashier', 9, 2, 3, 2, 3, 3,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

80000.00, 'VietNam', 'Hai Phong', NULL, N'cashier-amazone', 1, 90, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- walmart
-- Store Manager (Full-Time, Mid-Level, Store Manager, 3+ years experience, Bentonville, Arkansas)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Store Manager', 10, 2, 3, 2, 3, 1,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

85000.00, 'United States', 'Mountain View', NULL, N'store-manager', 0, 91, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Assistant Store Manager (Full-Time, Entry-Level, Assistant Store Manager, 2+ years experience, Bentonville, Arkansas)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Assistant Store Manager', 10, 2, 3, 1, 3, 1,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

65000.00, 'Canada', 'Toronto', NULL, N'assistant-store-manager', 1, 92, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Department Associate (Full-Time, Entry-Level, Department Associate, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Department Associate', 10, 1, 1, 1, 1, 2, 
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

35000.00, 'United States', 'San Francisco', NULL, N'department-associate', 1, 93, CAST(GETDATE() AS SmallDateTime));

-- Cashier (Full-Time, Entry-Level, Cashier, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Cashier', 10, 2, 2, 1, 1, 2, 
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

30000.00, 'France', 'Paris', NULL, N'cashier', 01, 94, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Truck Driver (Full-Time, Entry-Level, Truck Driver, CDL A license required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Truck Driver', 10, 1, 2, 1, 3, 2,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

55000.00, 'United States', 'New York', NULL, N'truck-driver', 01, 95, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Inventory Specialist (Full-Time, Entry-Level, Inventory Specialist, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Inventory Specialist', 10, 1, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

38000.00, 'United Kingdom', 'London', NULL, N'inventory-specialist', 01, 96, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Service Representative', 10, 2, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

40000.00, 'United States', 'Austin', NULL, N'customer-service-representative', 01, 97, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Service Representative T1', 10, 2, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

40000.00, 'United States', 'Olympia', NULL, N'customer-service-representative', 01, 97, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Service Representative T2', 10, 2, 1, 1, 1, 2,
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

40000.00, 'Canada', 'Vancouver', NULL, N'customer-service-representative', 01, 97, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Service Representative T3', 10, 2, 1, 1, 1, 2, 
-- job welcome
N'The  team is committed to providing a positive and engaging shopping experience for our customers. We are seeking a passionate and energetic customer server representative to join our growing team.

The ideal candidate will have a strong customer focus and a desire to make a difference in the retail industry. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of friendly and dedicated colleagues.',

-- job essential

N'• A minimum of 1 years of experience in a retail sales role 
• Strong communication and interpersonal skills, with the ability to build rapport with customers and colleagues
• Excellent customer service skills, with a focus on exceeding customer expectations
• Ability to work independently and as part of a team to achieve sales goals
• Proficiency in cash register operation and point-of-sale (POS) systems
• Strong attention to detail and accuracy in merchandising and inventory management
• Availability to work flexible hours, including weekends and holidays',
-- job preferred

N'• Experience in retail (a plus)
• Bilingual (English and Spanish) (a plus)
• Previous leadership experience in a retail setting (a plus)',
-- job description

N'Customer Service: Provide exceptional customer service by greeting customers, answering questions, and assisting with product selection.
Sales: Achieve sales goals by actively promoting products and services to customers.
Cash Handling: Operate cash registers accurately and efficiently, following all company procedures.
Merchandising: Assist with maintaining a clean, organized, and visually appealing sales floor.
Inventory Management: Assist with inventory control, stocking shelves, and ensuring product availability.
Team Collaboration: Collaborate effectively with colleagues to achieve team goals and provide a positive work environment.',

40000.00, 'United States', 'Los Angeles', NULL, N'customer-service-representative', 01, 97, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Manufacturing Engineer (Tesla)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Manufacturing Engineer', 11, 1, 2, 3, 3, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

110000.00, 'Germany', 'Berlin', NULL, N'manufacturing-engineer', 01, 101, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Production Technician (Full-Time, Entry-Level, Production Technician, No experience required, Fremont, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Production Technician', 11, 1, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

50000.00, 'Japan', 'Tokyo', NULL, N'production-technician', 01, 102, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Quality Control Inspector (Full-Time, Entry-Level, Quality Control Inspector, No experience required, Fremont, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Quality Control Inspector', 11, 1, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

48000.00, 'United Arab Emirates', 'Dubai', NULL, N'quality-control-inspector', 01, 103, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Robotics Engineer (Full-Time, Mid-Level, Robotics Engineer, 2+ years experience, Palo Alto, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Robotics Engineer', 11, 1, 3, 2, 3, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

130000.00, 'VietNam', 'Ho Chi Minh', NULL, N'robotics-engineer', 01, 104, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Battery Engineer (Full-Time, Senior, Battery Engineer, 1+ years experience, Palo Alto, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Battery Engineer', 11, 1, 2, 3, 4, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

160000.00, 'VietNam', 'Ha Noi', NULL, N'battery-engineer', 01, 105, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Supply Chain Analyst (Full-Time, Mid-Level, Supply Chain Analyst, 2+ years experience, Fremont, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Supply Chain Analyst', 11, 1, 1, 2, 3, 2, 
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

105000.00, 'VietNam', 'Thua Thien Hue', NULL, N'supply-chain-analyst', 01, 106, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Software Engineer (Full-Time, Mid-Level, Software Engineer, 2+ years experience, Palo Alto, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Engineer', 11, 1, 2, 2, 3, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

125000.00, 'VietNam', 'Da Lat', NULL, N'software-engineer', 01, 107, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Sales Associate (Full-Time, Entry-Level, Sales Associate, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Sales Associate', 11, 2, 1, 1, 1, 2, 
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

60000.00, 'VietNam', 'Hai Phong', NULL, N'sales-associate', 01, 108, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Advisor (Full-Time, Entry-Level, Customer Service Advisor, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Service Advisor', 11, 2, 1, 1, 1, 2, 
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

45000.00, 'United States', 'Mountain View', NULL, N'customer-service-advisor', 01, 109, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Mechanic Tester (Full-Time, Senior, Mechanic Tester, 1+ years experience, Palo Alto, California)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Mechanic Tester', 11, 1, 2, 3, 3, 2, 
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

160000.00, 'Canada', 'Toronto', NULL, N'battery-engineer', 01, 110, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Manufacturing (Boeing)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Aerospace Engineer', 12, 1, 2, 3, 4, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

160000.00, 'United States', 'San Francisco', NULL, N'aerospace-engineer', 01, 111, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Manufacturing Engineer', 12, 1, 2, 2, 3, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

120000.00, 'France', 'Paris', NULL, N'manufacturing-engineer', 01, 112, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Quality Assurance Inspector', 12, 1, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

52000.00, 'United States', 'New York', NULL, N'quality-assurance-inspector', 01, 113, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Production Mechanic (Full-Time, Entry-Level, Production Mechanic, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Production Mechanic', 12, 1, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

58000.00, 'United Kingdom', 'London', NULL, N'production-mechanic', 01, 114, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Avionics Technician (Full-Time, Mid-Level, Avionics Technician, 3+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Avionics Technician', 12, 1, 2, 2, 3, 2, 
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

85000.00, 'United States', 'Austin', NULL, N'avionics-technician', 01, 115, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Software Engineer (Full-Time, Mid-Level, Software Engineer, 2+ years experience, Seattle, Washington)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Software Engineer', 12, 1, 2, 2, 3, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

125000.00, 'United States', 'Olympia', NULL, N'software-engineer', 01, 116, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Human Resources Specialist (Full-Time, Entry-Level, Human Resources Specialist, No experience required, Chicago, Illinois)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Human Resources Specialist', 12, 3, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

60000.00, 'Canada', 'Vancouver', NULL, N'human-resources-specialist', 01, 117, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Customer Service Representative', 12, 2, 1, 1, 1, 2, 
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

48000.00, 'United States', 'Los Angeles', NULL, N'customer-service-representative', 01, 118, CAST(GETDATE() AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Service Representative T1', 10, 2, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

40000.00, 'Germany', 'Berlin', NULL, N'customer-service-representative', 01, 97, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Customer Service Representative (Full-Time, Entry-Level, Customer Service Representative, No experience required, Various Locations)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Service Representative T2', 10, 2, 1, 1, 1, 2,
-- job welcome
N'The team is committed to delivering high-quality products to our customers. We are seeking a skilled and motivated manufacturing manager to join our growing team.

The ideal candidate will have a strong work ethic and a passion for manufacturing. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- job essential
N'• A minimum of 3 years of experience in a manufacturing environment 
• Strong attention to detail and a commitment to quality control
• Ability to operate and maintain manufacturing equipment
• Experience working in a team environment and following safety protocols
• Strong problem-solving and analytical skills
• Basic understanding of mechanical or electrical principles (a plus)
• Ability to work independently and meet deadlines',

-- job preferred
N'• Experience with Specific Manufacturing Process (a plus)
• Previous supervisory experience in a manufacturing setting (a plus)
• Certification in Relevant Manufacturing Certification (a plus)',

-- job description
N'Production: Operate and maintain manufacturing equipment to ensure efficient and high-quality production of goods.
Quality Control: Conduct quality checks on products to ensure they meet company standards.
Inventory Management: Assist with maintaining inventory levels and ensuring materials are readily available for production.
Machine Maintenance: Perform basic maintenance tasks on equipment and identify potential problems for repair.
Safety: Follow all safety protocols and procedures to ensure a safe work environment.
Teamwork: Collaborate effectively with colleagues to achieve production goals and maintain a positive work environment.',

40000.00, 'Japan', 'Tokyo', NULL, N'customer-service-representative', 1, 97, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Construction (China State Construction Engineering Corporation)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Civil Engineer', 13, 1, 2, 3, 3, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

90000.00, 'United Arab Emirates', 'Dubai', NULL, N'civil-engineer', 1, 121, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Construction Project Manager', 13, 2, 2, 2, 3, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

120000.00, 'VietNam', 'Ho Chi Minh', NULL, N'construction-project-manager', 1, 122, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Architect', 13, 1, 3, 2, 3, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

100000.00, 'VietNam', 'Ha Noi', NULL, N'architect', 1, 123, CAST(GETDATE() AS SmallDateTime));

-- Electrical Engineer (Full-Time, Mid-Level, Electrical Engineer, 3+ years experience, Shanghai, China)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Electrical	', 13, 1, 2, 2, 3, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

110000.00, 'VietNam', 'Thua Thien Hue', NULL, N'electrical-engineer', 1, 124, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Mechanical Engineer (Full-Time, Mid-Level, Mechanical Engineer, 3+ years experience, Shenzhen, China)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Mechanical Engineer', 13, 1, 2, 2, 3, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

105000.00, 'VietNam', 'Da Lat', NULL, N'mechanical-engineer', 1, 125, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Quantity Surveyor (Full-Time, Entry-Level, Quantity Surveyor, No experience required, Various Locations (China))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Quantity Surveyor', 13, 2, 1, 1, 1, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

65000.00, 'VietNam', 'Hai Phong', NULL, N'quantity-surveyor', 1, 126, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Carpenter (Full-Time, Entry-Level, Carpenter, No experience required, Various Locations (China))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Carpenter', 13, 2, 1, 1, 1, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

45000.00, 'United States', 'Mountain View', NULL, N'carpenter', 1, 127, CAST(GETDATE() AS SmallDateTime));

-- Welder (Full-Time, Entry-Level, Welder, No experience required, Various Locations (China))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Welder', 13, 3, 1, 1, 1, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

50000.00, 'Canada', 'Toronto', NULL, N'welder', 1, 128, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Welder (Full-Time, Entry-Level, Welder, No experience required, Various Locations (China))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Welder F1', 13, 3, 1, 1, 1, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

50000.00, 'United States', 'San Francisco', NULL, N'welder', 1, 128, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Welder (Full-Time, Entry-Level, Welder, No experience required, Various Locations (China))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Welder F2', 13, 3, 1, 1, 1, 2,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

50000.00, 'France', 'Paris', NULL, N'welder', 1, 128, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Construction (Saudi Arabian Bechtel Engineering Company)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Project Manager', 14, 1, 3, 3, 4, 3,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

130000.00, 'United States', 'New York', NULL, N'project-manager', 1, 131, CAST(GETDATE() AS SmallDateTime));

-- Construction (Saudi Arabian Bechtel Engineering Company)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Civil Engineer', 14, 1, 2, 2, 3, 3,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

110000.00, 'United Kingdom', 'London', NULL, N'civil-engineer', 1, 132, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Construction Site Supervisor', 14, 3, 2, 2, 1, 3,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

90000.00, 'United States', 'Austin', NULL, N'construction-site-supervisor', 1, 133, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Mechanical Engineer (Full-Time, Mid-Level, Mechanical Engineer, 3+ years experience, Jeddah, Saudi Arabia)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Mechanical Engineer', 14, 1, 2, 2, 3, 3,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

105000.00, 'United States', 'Olympia', NULL, N'mechanical-engineer', 1, 134, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Quantity Surveyor (Full-Time, Entry-Level, Quantity Surveyor, No experience required, Various Locations (Saudi Arabia))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Quantity Surveyor', 14, 3, 1, 1, 1, 3, 
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

60000.00, 'Canada', 'Vancouver', NULL, N'quantity-surveyor', 1, 135, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Carpenter (Full-Time, Entry-Level, Carpenter, No experience required, Various Locations (Saudi Arabia))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Carpenter', 14, 3, 1, 1, 1, 3,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

42000.00, 'United States', 'Los Angeles', NULL, N'carpenter', 1, 136, CAST(GETDATE() AS SmallDateTime));

-- Welder (Full-Time, Entry-Level, Welder, No experience required, Various Locations (Saudi Arabia))
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Welder', 14, 3, 1, 1, 1, 3, 
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

48000.00, 'Germany', 'Berlin', NULL, N'welder', 1, 137, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

-- Human Resources Specialist (Full-Time, Entry-Level, Human Resources Specialist, No experience required, Riyadh, Saudi Arabia)
INSERT INTO [job_post] (job_title, company_id, job_type_id, job_position_id, job_level_id, job_experience_id, job_status_id, job_welcome, job_essential, job_preferred, job_desc, job_salary, [country], [city], [address], [meta], [hide], [order], [datebegin])
VALUES (N'Human Resources Specialist', 14, 3, 1, 1, 1, 3,
-- Job Welcome
N'The team is dedicated to building high-quality structures and exceeding client expectations. We are seeking a skilled and motivated Electrician to join our growing team.

The ideal candidate will have a strong work ethic, a passion for construction, and a commitment to safety. This candidate will thrive in a fast-paced environment and enjoy collaborating with a team of experienced professionals.',

-- Job Essential
N'• A minimum of 6 years of experience in the construction industry (a plus in Electrical experience)
• Proven ability to read and interpret construction plans and blueprints
• Experience working in a safe and efficient manner, adhering to all safety regulations
• Strong communication and interpersonal skills, with the ability to collaborate effectively with colleagues and clients
• Ability to work independently and as part of a team to achieve project goals
• Excellent problem-solving skills and the ability to adapt to changing situations
• Strong physical fitness and stamina to perform physically demanding tasks',

-- Job Preferred
N'• Experience operating and maintaining construction equipment (a plus)
• Valid construction [ license (a plus)
• Experience in Specific Construction Project Type ',

-- Job Description
N'Construction: Perform various construction tasks as assigned, ensuring high-quality workmanship and adherence to project specifications.
Safety: Prioritize safety on the job site by following all safety protocols and procedures, and identifying potential hazards.
Teamwork: Collaborate effectively with colleagues, including supervisors, foremen, and other tradespeople, to achieve project goals on time and within budget.
Communication: Maintain clear and concise communication with supervisors, clients, and other stakeholders regarding project progress and any potential issues.
Problem-Solving: Identify and resolve construction challenges effectively, adapting to changing situations and finding practical solutions.
Quality Control: Participate in quality control measures to ensure the project meets all specifications and standards.',

65000.00, 'Japan', 'Tokyo', NULL, N'human-resources-specialist', 1, 138, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));

INSERT INTO [blog] ([title], [content_1], [content_2], [background_image], [featured_image], [read_time], [meta], [order], [datebegin])
VALUES (
  N'11 Tips to Help You Get New Clients Through Cold Calling',
  N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ornare pellentesque sollicitudin. Suspendisse potenti. Fusce ex risus, iaculis sit amet sapien nec, finibus malesuada mi. Proin at turpis eget sapien pulvinar luctus. Vestibulum bibendum pharetra lorem eu aliquam. In feugiat placerat risus, sed rutrum neque mattis sit amet. Nullam vestibulum ante ac quam tempor, id venenatis velit eleifend. Duis id iaculis risus, quis ullamcorper augue. Nunc tristique venenatis ipsum at euismod. Pellentesque id arcu est.',
  N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• 5+ years of industry experience in interactive design and / or visual design
• Excellent interpersonal skills 
• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor’s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.',
  N'background-1.png',
  N'featured-1.png',
  5,  -- Estimated reading time in minutes
  N'11-tips-to-help-you-get-new-clients-through-cold-calling',  -- Optional meta description
  1,  -- Default order
  CAST(N'2024-03-09 00:00:00' AS SmallDateTime)  -- Insert current date and time
);

INSERT INTO [blog] ( [title], [content_1], [content_2], [background_image], [featured_image], [read_time], [meta], [order], [datebegin])
VALUES (
  N'11 Tips to Help You Get New Clients Through Cold Calling',
  N'
Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.',
  N'• Aware of trends in mobile, communications, and collaboration
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• History of impacting shipping products with your work
• A Bachelor’s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ornare pellentesque sollicitudin. Suspendisse potenti. Fusce ex risus, iaculis sit amet sapien nec, finibus malesuada mi. Proin at turpis eget sapien pulvinar luctus. Vestibulum bibendum pharetra lorem eu aliquam. In feugiat placerat risus, sed rutrum neque mattis sit amet. Nullam vestibulum ante ac quam tempor, id venenatis velit eleifend. Duis id iaculis risus, quis ullamcorper augue. Nunc tristique venenatis ipsum at euismod. Pellentesque id arcu est.',
  N'background-2.png',
  N'featured-2.png',
  8,  -- Estimated reading time in minutes
  N'11-tips-to-help-you-get-new-clients-through-cold-calling',  -- Optional meta description
  1,  -- Default order
  CAST(N'2024-03-09 00:00:00' AS SmallDateTime)  -- Insert current date and time
);

INSERT INTO [blog] ( [title], [content_1], [content_2], [background_image], [featured_image], [read_time], [meta], [order], [datebegin])
VALUES (
  N'11 Tips to Help You Get New Clients Through Cold Calling',
  N'
  Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ornare pellentesque sollicitudin. Suspendisse potenti. Fusce ex risus, iaculis sit amet sapien nec, finibus malesuada mi. Proin at turpis eget sapien pulvinar luctus. Vestibulum bibendum pharetra lorem eu aliquam. In feugiat placerat risus, sed rutrum neque mattis sit amet. Nullam vestibulum ante ac quam tempor, id venenatis velit eleifend. Duis id iaculis risus, quis ullamcorper augue. Nunc tristique venenatis ipsum at euismod. Pellentesque id arcu est.',
  N'• A portfolio demonstrating well thought through and polished end to end customer journeys
• Excellent interpersonal skills 
• Ability to create highly polished design prototypes, mockups, and other communication artifacts
• The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
• A Bachelor’s Degree in Design (or related field) or equivalent professional experience
• Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.',
  N'background-3.png',
  N'featured-3.png',
  12,  -- Estimated reading time in minutes
  N'11-tips-to-help-you-get-new-clients-through-cold-calling',  -- Optional meta description
  1,  -- Default order
  CAST(N'2024-03-09 00:00:00' AS SmallDateTime)  -- Insert current date and time
);

--Job post keyword

-- Information Technology (Google)
/*
INSERT INTO [job_post_keyword] (job_post_id, keyword_id, [meta], [hide], [order], [datebegin])
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Software Dev'), N'tempMeta', 0, 1, CAST(N'2024-03-09 00:00:00' AS SmallDateTime)),
       (1, (SELECT id FROM [keyword] WHERE name = 'Java'), N'tempMeta', 0, 2, CAST(N'2024-03-09 00:00:00' AS SmallDateTime)),
       (1, (SELECT id FROM [keyword] WHERE name = 'Python'), N'tempMeta', 0, 3, CAST(N'2024-03-09 00:00:00' AS SmallDateTime));
*/

-- Information Technology (Google)
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Software Dev'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Java'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Python'));

-- Associate keywords with Data Analyst
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Data Science'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Cloud'));
-- Associate keyword with User Experience Designer
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Web Design'));

-- Associate keywords with Software Developer
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Software Dev'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Java'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Cloud'));

-- Associate keyword with Quality Assurance Engineer
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (5, (SELECT id FROM [keyword] WHERE name = 'Software Dev'));

-- Associate keyword with Product Manager
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (6, (SELECT id FROM [keyword] WHERE name = 'Data Science'));

-- Associate keyword with Sales Associate (optional)
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Finance'));

-- Associate keyword with Customer Service Representative (optional)
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (8, (SELECT id FROM [keyword] WHERE name = 'Communication'));

-- Associate keyword with Marketing Manager
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (9, (SELECT id FROM [keyword] WHERE name = 'Web Design'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (9, (SELECT id FROM [keyword] WHERE name = 'Marketing'));

-- Associate keyword with IT Support Specialist
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (10, (SELECT id FROM [keyword] WHERE name = 'Cloud'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (10, (SELECT id FROM [keyword] WHERE name = 'Communication'));


-- Associate keywords with Cloud Architect (Microsoft)
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (11, (SELECT id FROM [keyword] WHERE name = 'Cloud'));  INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (11, (SELECT id FROM [keyword] WHERE name = 'Azure'));

-- Associate keywords with Software Engineer (Microsoft)
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (12, (SELECT id FROM [keyword] WHERE name = 'Software Dev'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (12, (SELECT id FROM [keyword] WHERE name = 'Python'));

-- Associate keywords with Data Scientist
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (13, (SELECT id FROM [keyword] WHERE name = 'Data Science'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (13, (SELECT id FROM [keyword] WHERE name = 'Cloud'));

-- Associate keywords with Program Manager
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (14, (SELECT id FROM [keyword] WHERE name = 'Management'));

-- Associate keywords with User Experience Designer
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (15, (SELECT id FROM [keyword] WHERE name = 'Web Design'));

-- Associate keywords with Security Engineer
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (16, (SELECT id FROM [keyword] WHERE name = 'Cybersecurity'));

-- Associate keywords with Software Development Engineer in Test (SDET)
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (17, (SELECT id FROM [keyword] WHERE name = 'Software Dev'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (17, (SELECT id FROM [keyword] WHERE name = 'Java'));
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (17, (SELECT id FROM [keyword] WHERE name = 'Python'));

-- Associate keywords with Business Systems Analyst
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (18, (SELECT id FROM [keyword] WHERE name = 'Analyst'));

-- Associate keywords with Sales Representative
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (19, (SELECT id FROM [keyword] WHERE name = 'Sales'));

-- Associate keywords with Customer Success Manager
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
VALUES (20, (SELECT id FROM [keyword] WHERE name = 'Customer Service'));

-- Associate keywords with Research Scientist (Pfizer)
-- Associate keywords with Pfizer job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Research Scientist
VALUES (21, (SELECT id FROM [keyword] WHERE name = 'Research')),
(21, (SELECT id FROM [keyword] WHERE name = 'Pharmaceutical')),
(21, (SELECT id FROM [keyword] WHERE name = 'Science')),
-- Clinical Research Associate (CRA)
(22, (SELECT id FROM [keyword] WHERE name = 'Research')),
(22, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Medical Doctor
(23, (SELECT id FROM [keyword] WHERE name = 'Physician')),
(23, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Registered Nurse (RN)
(24, (SELECT id FROM [keyword] WHERE name = 'Nursing')),
(24, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Healthcare Data Analyst
(25, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
(25, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
-- Pharmacist
(26, (SELECT id FROM [keyword] WHERE name = 'Pharmacy')),
(26, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Sales Representative (Pharmaceuticals)
(27, (SELECT id FROM [keyword] WHERE name = 'Retail')),
(27, (SELECT id FROM [keyword] WHERE name = 'Pharmaceutical')),
-- Medical Laboratory Scientist (MLS)
(28, (SELECT id FROM [keyword] WHERE name = 'Laboratory')),
(28, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Health Information Manager (HIM)
(29, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
(29, (SELECT id FROM [keyword] WHERE name = 'Management')),
-- Healthcare Marketing Manager
(30, (SELECT id FROM [keyword] WHERE name = 'Marketing')),
(30, (SELECT id FROM [keyword] WHERE name = 'Healthcare'));

-- Associate keywords with Mayo Clinic job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Registered Nurse
VALUES (31, (SELECT id FROM [keyword] WHERE name = 'Nursing')),
(31, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
(31, (SELECT id FROM [keyword] WHERE name = 'Hospital')),
-- Physician
(32, (SELECT id FROM [keyword] WHERE name = 'Physician')),
(32, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Surgeon
(33, (SELECT id FROM [keyword] WHERE name = 'Surgeon')),
(33, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Medical Assistant
(34, (SELECT id FROM [keyword] WHERE name = 'Medicine')),
(34, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Licensed Practical Nurse (LPN)
(35, (SELECT id FROM [keyword] WHERE name = 'Nursing')),
(35, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Healthcare IT Analyst
(36, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
(36, (SELECT id FROM [keyword] WHERE name = 'IT')),
-- Radiology Technologist
(37, (SELECT id FROM [keyword] WHERE name = 'Radiology')),
(37, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Pharmacist
(38, (SELECT id FROM [keyword] WHERE name = 'Pharmacy')),
(38, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Physical Therapist
(39, (SELECT id FROM [keyword] WHERE name = 'Physician')),
(39, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
-- Healthcare Recruiter
(40, (SELECT id FROM [keyword] WHERE name = 'Healthcare')),
(40, (SELECT id FROM [keyword] WHERE name = 'Recruiting'));

-- Associate keywords with JPMorgan Chase job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Investment Banker
VALUES (41, (SELECT id FROM [keyword] WHERE name = 'Investment')),
(41, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Financial Analyst
(42, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(42, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Commercial BankerfWealth Management
(43, (SELECT id FROM [keyword] WHERE name = 'Banking')),
(43, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Wealth Management Advisor
(44, (SELECT id FROM [keyword] WHERE name = 'Wealth Management')),
(44, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Risk Analyst
(45, (SELECT id FROM [keyword] WHERE name = 'Risk Management')),
(45, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Business Analyst (Financial Services)
(46, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(46, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Software Engineer (Financial Services)
(47, (SELECT id FROM [keyword] WHERE name = 'Software Dev')),
(47, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Data Analyst (Financial Services)
(48, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(48, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Internal Auditor (Financial Services)
(49, (SELECT id FROM [keyword] WHERE name = 'Internal Audit')),
(49, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Anti-Money Laundering (AML) Analyst
(50, (SELECT id FROM [keyword] WHERE name = 'Anti Laundering')),
(50, (SELECT id FROM [keyword] WHERE name = 'Finance'));

-- Associate keywords with Bank of America job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Financial Analyst
VALUES (51, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(51, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Branch Manager
(52, (SELECT id FROM [keyword] WHERE name = 'Management')),
(52, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Loan Officer
(53, (SELECT id FROM [keyword] WHERE name = 'Loan')),
(53, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Teller
(54, (SELECT id FROM [keyword] WHERE name = 'Teller')),
(54, (SELECT id FROM [keyword] WHERE name = 'Banking')),
-- Credit Analyst
(55, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(55, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Wealth Management Advisor
(56, (SELECT id FROM [keyword] WHERE name = 'Wealth Management')),
(56, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Mortgage Loan Officer
(57, (SELECT id FROM [keyword] WHERE name = 'Loan')),
(57, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Business Banker
(58, (SELECT id FROM [keyword] WHERE name = 'Banking')),
(58, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Fraud Analyst
(59, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(59, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Customer Service Representative
(60, (SELECT id FROM [keyword] WHERE name = 'Services')),
(60, (SELECT id FROM [keyword] WHERE name = 'Banking'));

-- Associate keywords with Harvard University job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Professor
VALUES (61, (SELECT id FROM [keyword] WHERE name = 'Education')) ,
(61, (SELECT id FROM [keyword] WHERE name = 'Professor')),
(61, (SELECT id FROM [keyword] WHERE name = 'Research')),
-- Teaching Assistant
(62, (SELECT id FROM [keyword] WHERE name = 'Education')),
(62, (SELECT id FROM [keyword] WHERE name = 'Teacher')),
-- Research Assistant
(63, (SELECT id FROM [keyword] WHERE name = 'Education')),
(63, (SELECT id FROM [keyword] WHERE name = 'Research')),
-- Academic Advisor
(64, (SELECT id FROM [keyword] WHERE name = 'Education')),
(64, (SELECT id FROM [keyword] WHERE name = 'Higher Education')),
-- Admissions Counselor
(65, (SELECT id FROM [keyword] WHERE name = 'Education')),
(65, (SELECT id FROM [keyword] WHERE name = 'Higher Education')),
-- Librarian
(66, (SELECT id FROM [keyword] WHERE name = 'Library')),
(66, (SELECT id FROM [keyword] WHERE name = 'IT')),
-- IT Specialist
(67, (SELECT id FROM [keyword] WHERE name = 'IT')),
(67, (SELECT id FROM [keyword] WHERE name = 'Edu Technology')),
-- Financial Analyst
(68, (SELECT id FROM [keyword] WHERE name = 'Analyst')),
(68, (SELECT id FROM [keyword] WHERE name = 'Finance')),
-- Marketing and Communications Specialist
(69, (SELECT id FROM [keyword] WHERE name = 'Marketing')),
(69, (SELECT id FROM [keyword] WHERE name = 'Communication')),
-- Substitue Professor
(70, (SELECT id FROM [keyword] WHERE name = 'Education')),
(70, (SELECT id FROM [keyword] WHERE name = 'Professor'));

-- Associate keywords with Amazon job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Software Development Engineer
VALUES (81, (SELECT id FROM [keyword] WHERE name = 'Software Dev')),
(81, (SELECT id FROM [keyword] WHERE name = 'Engineering')),
-- Product Manager
(82, (SELECT id FROM [keyword] WHERE name = 'Management')),
-- Data Scientist
(83, (SELECT id FROM [keyword] WHERE name = 'Science')),
(83, (SELECT id FROM [keyword] WHERE name = 'Logistics')),
-- Warehouse Associate
(84, (SELECT id FROM [keyword] WHERE name = 'Warehouse')),
(84, (SELECT id FROM [keyword] WHERE name = 'Logistics')),
-- Customer Service Associate
(85, (SELECT id FROM [keyword] WHERE name = 'Customer Service')),
-- Delivery Driver
(86, (SELECT id FROM [keyword] WHERE name = 'Driver')),
(86, (SELECT id FROM [keyword] WHERE name = 'Logistics')),
-- Supply Chain Analyst
(87, (SELECT id FROM [keyword] WHERE name = 'Supply Chain')),
(87, (SELECT id FROM [keyword] WHERE name = 'Logistics')),
-- Marketing Manager
(88, (SELECT id FROM [keyword] WHERE name = 'Marketing')),
-- Retail Manager
(89, (SELECT id FROM [keyword] WHERE name = 'Retail')),
(89, (SELECT id FROM [keyword] WHERE name = 'Management')),
-- Cashier
(90, (SELECT id FROM [keyword] WHERE name = 'Retail')),
(90, (SELECT id FROM [keyword] WHERE name = 'Cashier'));

-- Associate keywords with Walmart job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Store Manager
VALUES (91, (SELECT id FROM [keyword] WHERE name = 'Retail')),
(91, (SELECT id FROM [keyword] WHERE name = 'Management')),
-- Assistant Store Manager
(92, (SELECT id FROM [keyword] WHERE name = 'Retail')),
(92, (SELECT id FROM [keyword] WHERE name = 'Management')),
-- Department Associate
(93, (SELECT id FROM [keyword] WHERE name = 'Retail')),
-- Cashier
(94, (SELECT id FROM [keyword] WHERE name = 'Retail')),
(94, (SELECT id FROM [keyword] WHERE name = 'Cashier')),
-- Truck Driver (CDL A license assumed to involve logistics)
(95, (SELECT id FROM [keyword] WHERE name = 'Driver')),
(95, (SELECT id FROM [keyword] WHERE name = 'Logistics')),
-- Inventory Specialist
(96, (SELECT id FROM [keyword] WHERE name = 'Logistics')),
(96, (SELECT id FROM [keyword] WHERE name = 'Warehouse')),
-- Customer Service Representative
(97, (SELECT id FROM [keyword] WHERE name = 'Customer Service'));

-- Associate keywords with Tesla job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Manufacturing
VALUES (101, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
(102, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
(103, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
(104, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
(105, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
(106, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
-- Engineering
(101, (SELECT id FROM [keyword] WHERE name = 'Engineering')),
(104, (SELECT id FROM [keyword] WHERE name = 'Engineering')),
(105, (SELECT id FROM [keyword] WHERE name = 'Engineering')),
-- Quality Control
(103, (SELECT id FROM [keyword] WHERE name = 'Quality Control')),
-- Robotics
(104, (SELECT id FROM [keyword] WHERE name = 'Robotics')),
-- Battery
(105, (SELECT id FROM [keyword] WHERE name = 'Battery')),
(110, (SELECT id FROM [keyword] WHERE name = 'Battery')),
-- Supply Chain
(106, (SELECT id FROM [keyword] WHERE name = 'Supply Chain')),
-- Software
(107, (SELECT id FROM [keyword] WHERE name = 'Software Dev')),
-- Sales
(108, (SELECT id FROM [keyword] WHERE name = 'Retail')),
-- Customer Service
(109, (SELECT id FROM [keyword] WHERE name = 'Customer Service')),
-- Mechanic Tester
(110, (SELECT id FROM [keyword] WHERE name = 'Engineering')),
(110, (SELECT id FROM [keyword] WHERE name = 'Quality Control'));

-- Associate keywords with Boeing job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Aerospace (for Aerospace Engineer)
VALUES(111, (SELECT id FROM [keyword] WHERE name = 'Aerospace')),
-- Manufacturing
(111, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
(112, (SELECT id FROM [keyword] WHERE name = 'Manufacturing')),
-- Quality Control
(113, (SELECT id FROM [keyword] WHERE name = 'Quality Control')),
-- Production (for Production Mechanic)
(114, (SELECT id FROM [keyword] WHERE name = 'Production')),
-- Avionics (for Avionics Technician)
(115, (SELECT id FROM [keyword] WHERE name = 'Aviation')),
-- Software
(116, (SELECT id FROM [keyword] WHERE name = 'Software Dev')),
-- Human Resources
(117, (SELECT id FROM [keyword] WHERE name = 'HR')),
-- Customer Service
(118, (SELECT id FROM [keyword] WHERE name = 'Services'));

-- Placeholder entries will need review for appropriate keywords
-- Associate keywords with CSCEC job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Construction (for all CSCEC jobs)
VALUES (121, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(122, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(123, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(124, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(125, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(126, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(127, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(128, (SELECT id FROM [keyword] WHERE name = 'Construction')),
-- Civil (for Civil Engineer)
(121, (SELECT id FROM [keyword] WHERE name = 'Civil Engineering')),
-- Engineering (for Civil Engineer, Electrical Engineer, Mechanical Engineer)
(122, (SELECT id FROM [keyword] WHERE name = 'Electrical')),
-- Project Management (for Construction Project Manager)
(122, (SELECT id FROM [keyword] WHERE name = 'Project Management')),
-- Architecture (for Architect)
(123, (SELECT id FROM [keyword] WHERE name = 'Architecture')),
-- Electrical (for Electrical Engineer)
(124, (SELECT id FROM [keyword] WHERE name = 'Electrical')),
-- Mechanical (for Mechanical Engineer)
(125, (SELECT id FROM [keyword] WHERE name = 'Mechanical')),
-- Quantity Surveying (for Quantity Surveyor)
(126, (SELECT id FROM [keyword] WHERE name = 'Quantity survey')),
-- Carpentry (for Carpenter)
(127, (SELECT id FROM [keyword] WHERE name = 'Carpentry')),
-- Welding (for Welder)
(128, (SELECT id FROM [keyword] WHERE name = 'Welding'));

-- Associate keywords with SABEC job postings
INSERT INTO [job_post_keyword] (job_post_id, keyword_id)
-- Construction (for all SABEC jobs except HR Specialist)
VALUES (131, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(132, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(133, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(134, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(135, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(136, (SELECT id FROM [keyword] WHERE name = 'Construction')),
(137, (SELECT id FROM [keyword] WHERE name = 'Construction')),
/*
-- Project Management (for Project Manager)
(131, (SELECT id FROM [keyword] WHERE name = 'Project Management')),
-- Civil (for Civil Engineer)
(132, (SELECT id FROM [keyword] WHERE name = 'Civil Engineering')),
-- Engineering (for Civil Engineer and Mechanical Engineer)
(132, (SELECT id FROM [keyword] WHERE name = 'Electrical')),
(134, (SELECT id FROM [keyword] WHERE name = 'Electrical')),
-- Construction Site Supervision (for Construction Site Supervisor)
(133, (SELECT id FROM [keyword] WHERE name = 'Construction Management')),
-- Mechanical (for Mechanical Engineer)
(134, (SELECT id FROM [keyword] WHERE name = 'Mechanical')),
-- Quantity Surveying (for Quantity Surveyor)
(135, (SELECT id FROM [keyword] WHERE name = 'Quantity Survey')),
-- Carpentry (for Carpenter)
(136, (SELECT id FROM [keyword] WHERE name = 'Carpentry')),
-- Welding (for Welder)
(137, (SELECT id FROM [keyword] WHERE name = 'Welding')),
-- Human Resources (for Human Resources Specialist)

*/
(138, (SELECT id FROM [keyword] WHERE name = 'HR'));

-- Placeholder entries will need review for appropriate keywords

--blog keywords:
INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Software Dev'));
INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Java'));
INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Python'));

INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Healthcare'));
INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Research'));

INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Investment'));
INSERT INTO [blog_keyword] (blog_id, keyword_id)
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Loan'));

-- seeker keywords
--seeker 1
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Web Design'), 100);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Software Dev'), 90);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Python'), 60);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (1, (SELECT id FROM [keyword] WHERE name = 'Azure'), 85);

-- seeker 2
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Java'), 70);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Cloud'), 90);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Python'), 95);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Azure'), 100);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'IT'), 85);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (2, (SELECT id FROM [keyword] WHERE name = 'Cybersecurity'), 85);
-- seeker 3
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Nursing'), 80);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Medicine'), 75);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Physician'), 60);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Pharmacy'), 80);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Laboratory'), 95);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (3, (SELECT id FROM [keyword] WHERE name = 'Healthcare'), 100);

-- seeker 4
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Banking'), 90);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Investment'), 85);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Finance'), 80);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (4, (SELECT id FROM [keyword] WHERE name = 'Teller'), 100);

-- seeker 5
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (5, (SELECT id FROM [keyword] WHERE name = 'PhD'), 100);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (5, (SELECT id FROM [keyword] WHERE name = 'Professor'), 96);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (5, (SELECT id FROM [keyword] WHERE name = 'Teacher'), 100);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (5, (SELECT id FROM [keyword] WHERE name = 'Library'), 80);

-- seeker 6
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (6, (SELECT id FROM [keyword] WHERE name = 'Marketing'), 80);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (6, (SELECT id FROM [keyword] WHERE name = 'Recruiting'), 85);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (6, (SELECT id FROM [keyword] WHERE name = 'Communication'), 85);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (6, (SELECT id FROM [keyword] WHERE name = 'Logistics'), 80);

-- seeker 7
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Aerospace'), 80);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Aviation'), 80);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Robotics'), 90);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Battery'), 90);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Engineering'), 100);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (7, (SELECT id FROM [keyword] WHERE name = 'Electronic'), 85);
-- seeker 8
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (8, (SELECT id FROM [keyword] WHERE name = 'Architecture'), 60);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (8, (SELECT id FROM [keyword] WHERE name = 'Infrastructure'), 95);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (8, (SELECT id FROM [keyword] WHERE name = 'Welding'), 85);
INSERT INTO [seeker_keyword] (seeker_id, keyword_id, [percent])
VALUES (8, (SELECT id FROM [keyword] WHERE name = 'Carpentry'), 80);

-- Job_application

INSERT INTO [job_application] (seeker_profile_id, job_post_id, application_date, [resume], cover_letter, application_status, meta, hide, [order], datebegin)
VALUES (8, 1, CAST(N'2024-05-22 00:00:00' AS SmallDateTime), '22-05-24-11-11-49-ngo-anh-tuan-software-engineer', N'Làm việc vì tương lai.', 0, 'ngo-anh-tuan-software-engineer', 1, 1, CAST(N'2024-05-22 00:00:00' AS SmallDateTime));