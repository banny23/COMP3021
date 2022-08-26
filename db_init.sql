USE [HkuSupportPlusDB]
GO
/****** Object:  Table [dbo].[affecteduserrole]    Script Date: 2022/8/26 10:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[affecteduserrole](
	[id] [char](36) NOT NULL,
	[name] [varchar](20) NULL,
 CONSTRAINT [PK_affecteduserrole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[body]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[body](
	[id] [char](36) NOT NULL,
	[key] [varchar](100) NULL,
	[engkey] [varchar](100) NULL,
	[tckey] [nvarchar](100) NULL,
	[sckey] [nvarchar](100) NULL,
	[maxLevel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carer]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carer](
	[id] [char](36) NOT NULL,
	[carerCode] [varchar](20) NULL,
	[carerName] [varchar](50) NULL,
	[loginName] [varchar](20) NULL,
	[password] [varchar](max) NULL,
	[biologicalPassword] [varchar](max) NULL,
	[gender] [char](1) NULL,
	[ename] [varchar](50) NULL,
	[cname] [varchar](50) NULL,
	[nickname] [varchar](50) NULL,
	[phoneNumber] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[language] [int] NULL,
	[isActive] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK__carer__3213E83FD0A72CCD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[case]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[case](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[hospitalId] [char](36) NULL,
	[departmentId] [char](36) NULL,
	[symptomAlerts] [int] NULL,
	[createdBy] [char](36) NULL,
	[createdDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[status] [char](36) NULL,
	[action] [char](36) NULL,
 CONSTRAINT [PK_case] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caseaction]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caseaction](
	[id] [char](36) NOT NULL,
	[action] [varchar](100) NULL,
	[sort] [int] NULL,
 CONSTRAINT [PK_caseaction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caselog]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caselog](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[nurseId] [char](36) NULL,
	[caseId] [char](36) NULL,
	[statusId] [char](36) NULL,
	[actionId] [char](36) NULL,
	[actionDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_caselog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[casestatus]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[casestatus](
	[id] [char](36) NOT NULL,
	[status] [varchar](100) NULL,
 CONSTRAINT [PK_casestatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[casesymptomreport]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[casesymptomreport](
	[id] [char](36) NOT NULL,
	[caseId] [char](36) NULL,
	[symptomReportId] [char](36) NULL,
	[unfillReportId] [char](36) NULL,
 CONSTRAINT [PK_casesymptomreport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caseunfillreport]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caseunfillreport](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[lastFillDate] [datetime] NULL,
	[refillDate] [datetime] NULL,
 CONSTRAINT [PK_caseunfillreport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[changehospitalrecord]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[changehospitalrecord](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[originalHopistalId] [char](36) NULL,
	[originalDepartmentId] [char](36) NULL,
	[newHopistalId] [char](36) NULL,
	[newDepartmentId] [char](36) NULL,
	[applyDateTime] [datetime] NULL,
	[applyBy] [char](36) NULL,
	[acceptDateTime] [datetime] NULL,
	[acceptBy] [char](36) NULL,
	[rejectDateTime] [datetime] NULL,
	[rejectBy] [char](36) NULL,
	[remark] [nvarchar](1000) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_changehospitalrecord] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [char](36) NOT NULL,
	[departmentCode] [varchar](50) NULL,
	[ename] [varchar](50) NULL,
	[cname] [varchar](50) NULL,
	[gender] [char](1) NULL,
	[hospitalId] [char](36) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[languageId] [char](36) NULL,
	[isActive] [bit] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK__departme__3213E83FC144F0D8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[healthinformationrecord]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[healthinformationrecord](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[healthInformationType] [char](36) NULL,
	[value] [decimal](6, 2) NULL,
	[stressReason] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[createdDateTime] [datetime] NULL,
 CONSTRAINT [PK__healthin__3213E83F9E6D6C9A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[healthinformationtype]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[healthinformationtype](
	[id] [char](36) NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK__healthin__3213E83F37BBAA42] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hospital]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hospital](
	[id] [char](36) NOT NULL,
	[hospitalCode] [varchar](10) NULL,
	[name] [varchar](50) NULL,
	[phoneNumber] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[address] [varchar](100) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[isDeleted] [bit] NULL,
	[chatwoot_inboxId] [int] NULL,
	[chatwoot_inboxIdentifier] [varchar](50) NULL,
 CONSTRAINT [PK__hospital__3213E83FE134C208] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inactivecarerreason]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inactivecarerreason](
	[id] [char](36) NOT NULL,
	[carerId] [char](36) NULL,
	[reason] [varchar](max) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
 CONSTRAINT [PK__inactive__3213E83FA3A8FF0B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inactivenursereason]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inactivenursereason](
	[id] [char](36) NOT NULL,
	[nurseId] [char](36) NULL,
	[reason] [varchar](max) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
 CONSTRAINT [PK__inactive__3213E83F7D408A4E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inactivepatientreason]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inactivepatientreason](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[reason] [varchar](max) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
 CONSTRAINT [PK__inactive__3213E83FAC49BF58] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[language]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language](
	[id] [char](36) NOT NULL,
	[code] [varchar](10) NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK__language__3213E83F68507171] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nurse]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nurse](
	[id] [char](36) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](max) NULL,
	[gender] [char](1) NULL,
	[hospitalId] [char](36) NULL,
	[departmentId] [char](36) NULL,
	[roleId] [char](36) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[languageId] [char](36) NULL,
	[isActive] [bit] NULL,
	[isActivated] [bit] NULL,
	[isDeleted] [bit] NULL,
	[chatwoot_agentId] [int] NULL,
	[chatwoot_agentUid] [varchar](50) NULL,
 CONSTRAINT [PK__nurse__3213E83F54197320] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nurseactionlog]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nurseactionlog](
	[id] [char](36) NOT NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[nurseActionType] [char](36) NULL,
	[affectedUserRole] [char](36) NULL,
	[affectedUserId] [char](36) NULL,
	[argument] [varchar](max) NULL,
	[fromValue] [varchar](1000) NULL,
	[toValue] [varchar](1000) NULL,
 CONSTRAINT [PK_nurseactionlog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nurseactiontype]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nurseactiontype](
	[id] [char](36) NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK_nurseactiontype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nurserole]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nurserole](
	[id] [char](36) NOT NULL,
	[name] [varchar](50) NULL,
	[level] [int] NULL,
 CONSTRAINT [PK__nurserol__3213E83FE6B7D449] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otp]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otp](
	[id] [char](36) NOT NULL,
	[phoneNumber] [varchar](50) NOT NULL,
	[opt] [char](6) NOT NULL,
	[isSend] [bit] NULL,
	[userType] [varchar](20) NULL,
	[createdDateTime] [datetime] NULL,
	[updatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__otp__3213E83F6AA1B678] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paindetail]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paindetail](
	[id] [char](36) NOT NULL,
	[reportId] [char](36) NULL,
	[bodyId] [char](36) NULL,
	[level] [int] NULL,
	[threshold] [int] NULL,
	[remark] [nvarchar](200) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
 CONSTRAINT [PK__paindeta__3213E83FFB601C5C] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patient]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patient](
	[id] [char](36) NOT NULL,
	[patientCode] [varchar](20) NULL,
	[patientName] [varchar](50) NULL,
	[loginName] [varchar](20) NULL,
	[password] [varchar](max) NULL,
	[biologicalPassword] [varchar](max) NULL,
	[ename] [varchar](50) NULL,
	[cname] [varchar](50) NULL,
	[nickname] [varchar](50) NULL,
	[gender] [char](1) NULL,
	[dateOfBirth] [datetime] NULL,
	[phoneNumber] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[carerId] [char](36) NULL,
	[relationshipId] [char](36) NULL,
	[hospitalId] [char](36) NULL,
	[departmentId] [char](36) NULL,
	[studyPeriod] [int] NULL,
	[studyPeriodEndTime] [datetime] NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[language] [char](36) NULL,
	[isActive] [bit] NULL,
	[isDeleted] [bit] NULL,
	[status] [int] NULL,
	[chatwoot_contactId] [int] NULL,
	[chatwoot_contactIdentifier] [char](36) NULL,
	[chatwoot_conversationId] [int] NULL,
	[chatwoot_conversationIdentifier] [char](36) NULL,
 CONSTRAINT [PK__patient__3213E83FBB4020A8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patientdevice]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patientdevice](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NOT NULL,
	[platform] [varchar](50) NULL,
	[appToken] [varchar](max) NULL,
	[createTime] [datetime] NULL,
	[updateTime] [datetime] NULL,
 CONSTRAINT [PK_patientDevice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[relationship]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relationship](
	[id] [char](36) NOT NULL,
	[relationshipType] [varchar](50) NULL,
	[etext] [varchar](50) NULL,
	[ctext] [varchar](50) NULL,
 CONSTRAINT [PK__relation__3213E83FF537EE40] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stressreason]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stressreason](
	[id] [char](36) NOT NULL,
	[key] [varchar](10) NULL,
 CONSTRAINT [PK__stressre__3213E83F5C777B2A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[symptom]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[symptom](
	[id] [char](36) NOT NULL,
	[symptomTypeId] [char](36) NULL,
	[key] [varchar](100) NULL,
	[maxLevel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[symptomdetail]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[symptomdetail](
	[id] [char](36) NOT NULL,
	[reportId] [char](36) NULL,
	[symptomId] [char](36) NULL,
	[level] [int] NULL,
	[threshold] [int] NULL,
	[remark] [nvarchar](200) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
 CONSTRAINT [PK__SymptomD__3213E83F86CBEBF7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[symptomreport]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[symptomreport](
	[id] [char](36) NOT NULL,
	[patientId] [char](36) NULL,
	[hospitalId] [char](36) NULL,
	[departmentId] [char](36) NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
	[remark] [nvarchar](500) NULL,
 CONSTRAINT [PK__SymptomR__3213E83F068C9FDE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[symptomtype]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[symptomtype](
	[id] [char](36) NOT NULL,
	[type] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[threshold]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[threshold](
	[id] [char](36) NOT NULL,
	[symptomTypeId] [char](36) NULL,
	[hospitalId] [char](36) NULL,
	[level] [int] NULL,
	[createdDateTime] [datetime] NULL,
	[createdBy] [char](36) NULL,
	[updatedDateTime] [datetime] NULL,
	[updatedBy] [char](36) NULL,
 CONSTRAINT [PK__threshol__3213E83F1AA16F88] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webhook]    Script Date: 2022/8/26 10:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webhook](
	[id] [char](36) NOT NULL,
	[jsonStr] [nvarchar](max) NULL,
	[sender] [varchar](100) NULL,
	[receiver] [varchar](100) NULL,
	[successCount] [int] NULL,
	[failureCount] [int] NULL,
	[createTime] [datetime] NULL,
	[exception] [nvarchar](max) NULL,
 CONSTRAINT [PK_webhook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hospital ID of patient' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'hospitalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Department ID of patient' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'departmentId'
GO

INSERT INTO symptomtype (id,[type]) VALUES
	 (N'78c041c9-c63a-4edf-8817-cbca905b5f41',N'pain'),
	 (N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'physical'),
	 (N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'mental');

INSERT INTO symptom (id,symptomTypeId,[key],maxLevel) VALUES
	 (N'0af8903f-d31a-4499-b6e9-63055c7ff4a6',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'shortnessOfBreath',NULL),
	 (N'131ed10c-abff-4cae-9ca4-a701662f3152',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'anxious',NULL),
	 (N'1e384e02-be3c-43fc-918c-73c71bd9f2e2',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'sharingFeeling',NULL),
	 (N'3531e7c1-9fb2-41b6-ac40-38222d1ded3a',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'poorMobility',NULL),
	 (N'4878cb2a-607b-412d-913b-d30f54963b34',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'drowsiness',NULL),
	 (N'4cc74bfa-ae15-43e9-b865-7045e0657e14',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'weaknessOrLackOfEnergy',NULL),
	 (N'5c53ae47-b32f-4e15-9188-f38e17dcccb0',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'depressed',NULL),
	 (N'759fb95d-9d61-47bb-9337-5e36ef77bf29',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'constipation',NULL),
	 (N'82e146ff-3821-4e82-81f6-d1d3dfc51bb5',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'getInformation',NULL),
	 (N'AEC26059-35FD-4CF7-ACEB-A67760C90B55',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'noneOfTheAbove',NULL);
INSERT INTO symptom (id,symptomTypeId,[key],maxLevel) VALUES
	 (N'af4ca8fb-8fc7-402c-b346-6679b9e58a5c',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'other',NULL),
	 (N'b065daa4-6623-4664-ac1b-0de1ee1f006c',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'nausea',NULL),
	 (N'b627d5f9-1594-42e0-aec9-32b9a96ec6da',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'family',NULL),
	 (N'ba4af3a9-932a-44a3-9376-ede4feb3c021',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'praticalProblems',NULL),
	 (N'e0c05ac0-7cd7-4649-9cbb-cfe655207032',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'vomiting',NULL),
	 (N'e641ea5a-33b0-4e76-a0ba-680e0902d576',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'poorAppetite',NULL),
	 (N'ec273738-dfbf-4418-864a-3d38cdbd9b90',N'8b01d686-5784-4cbd-b17c-420d1dc60486',N'soreOrDryMouth',NULL),
	 (N'f9715b16-d5e5-43dd-927f-e0ba05f51c04',N'ad81c37b-fb3d-4059-ac6b-c5b307de9a7c',N'peace',NULL);

INSERT INTO stressreason (id,[key]) VALUES
	 (N'13156f3e-4c4d-413d-b74d-94a207a422bc',N'emotional'),
	 (N'2dff0a93-f8b8-4596-8846-ee5a7a86bbab',N'religion'),
	 (N'3cc61ee2-3863-4e09-9a0a-fb785a2a4470',N'actual'),
	 (N'59b9f38c-a618-4c01-bd35-c52b9b9e8029',N'physical'),
	 (N'a76d2c25-5ab5-441f-9150-486d82278773',N'other'),
	 (N'c3960849-b3e9-4b63-a32f-bed1c052aef5',N'family');

INSERT INTO relationship (id,relationshipType,etext,ctext) VALUES
	 (N'13d24a1f-0d83-4839-8ce7-836eee8a3822',N'patient_carer',N'Son',NULL),
	 (N'36b69673-882e-4fd3-b8e9-3918cff85c27',N'patient_carer',N'Spouse/Partner',NULL),
	 (N'4f3e106d-ff6b-4f91-b6b6-2e1f6fd21fbf',N'patient_carer',N'OAH staff',NULL),
	 (N'883e9f27-ff78-4aa2-8387-6302f5985380',N'patient_carer',N'Helper',NULL),
	 (N'8cc7cf5c-eeee-452f-947e-9b563940f001',N'patient_carer',N'Daughter',NULL),
	 (N'a441a240-140e-497d-a997-836b0bd95660',N'patient_carer',N'Other relatives',NULL),
	 (N'c16bb02d-707a-4a29-a8d1-1160988cba5d',N'patient_carer',N'Mother',NULL),
	 (N'c64f9e61-7420-47e4-8939-a7453cf27938',N'patient_carer',N'Father',NULL),
	 (N'cf187a6b-bdc4-475c-9e4c-1ff91511ea6d',N'patient_carer',N'Siblings',NULL);

INSERT INTO nurserole (id,name,[level]) VALUES
	 (N'7f437bcf-a878-467b-8cdd-1f44b7c4f75d',N'HKU Admin',1),
	 (N'a9060902-deff-44be-bff5-0e421b587817',N'Nurse',3),
	 (N'ff2f1df9-88bb-4d4a-8d89-d534ad0ac89c',N'Nurse Admin',2);

INSERT INTO nurseactiontype (id,name) VALUES
	 (N'0e5bee8f-42c0-43c5-8554-b6cc1c3ee653',N'Change password'),
	 (N'0ff5b728-f53e-4845-a0ac-0c22263037c3',N'Follow up action'),
	 (N'1db536d2-da59-40be-ab20-2829f1aaf338',N'Edit carer information'),
	 (N'22a0167a-c600-4ca0-83b4-f2c87942db97',N'Change nurse status'),
	 (N'278e0131-c573-4502-837a-7fa84d045c49',N'Accept change hospital'),
	 (N'2b60aaf3-0143-4f92-ae05-b7f753335c74',N'Delete hospital'),
	 (N'3230ecb2-3f02-4998-a36c-fe9a0f320d5b',N'Activate account'),
	 (N'328d10b9-d792-4f9e-a3d6-9b955eb3d8cb',N'Edit threshold'),
	 (N'34f08afb-682e-4071-be5e-74913aff7331',N'Create hospital'),
	 (N'3801f05b-570c-48a5-becc-458fb51a626f',N'Login');
INSERT INTO nurseactiontype (id,name) VALUES
	 (N'41e5d99f-84e9-41a5-aa17-efea2a633ffe',N'Change carer'),
	 (N'489af9c9-b254-4425-9a39-b79054bb0aa2',N'Settle'),
	 (N'5c6df896-ebf4-49bb-89e1-da2cbdde5b12',N'Edit patient information'),
	 (N'5eac0563-1445-4dc7-9ec9-f8772d400912',N'Delete department'),
	 (N'6b610263-28c7-469d-b3dd-e16a8a805d59',N'Delete nurse'),
	 (N'6d095dfb-cb8c-4190-ac8e-27c30fd15d18',N'Delete patient'),
	 (N'8b3109f5-ea78-4444-b6c6-168236585344',N'Edit hospital'),
	 (N'8c8b9b7c-a79e-48aa-be98-1a34ee4a709c',N'Delete carer'),
	 (N'8d6d8756-37dc-49f5-b63f-2bcb62a3655a',N'Forgot Password'),
	 (N'994aefbe-2127-48f7-94fc-ce74bc75c7a2',N'To e-consult');
INSERT INTO nurseactiontype (id,name) VALUES
	 (N'a8af7c0f-48fa-4d36-b93a-46aa67cda591',N'Withdraw change hospital request'),
	 (N'b13a66c3-6a49-4345-8dc4-f6da5db4d8a2',N'Edit department'),
	 (N'c3ca656e-32e4-494d-aa78-993fdedf2a29',N'Request change hospital'),
	 (N'c55c9dce-4f45-4750-b83b-3677db04fbd8',N'Reject change hospital'),
	 (N'd7a31ec1-ab3a-4978-8b49-ae4a26579846',N'Create patient'),
	 (N'df54f064-dd3f-43d4-b4c8-184c1a9950f7',N'Change carer status'),
	 (N'e1be9d6e-b40f-486c-9d05-9e39f4be8287',N'Assign patient'),
	 (N'ecf4d8cf-e2af-426a-befe-90d18da0bf6b',N'Create nurse'),
	 (N'ed1e1f2f-842f-4d9c-977c-967cadae7eea',N'Create department'),
	 (N'efd134d6-5810-4e73-b2fc-03d84e773844',N'Change patient status');

INSERT INTO healthinformationtype (id,name) VALUES
	 (N'09199188-a995-4841-a91e-7f9f111ddd00',N'temperature'),
	 (N'4e35d91b-776e-4dee-b1c0-6b405a9a0ac3',N'blood pressure systolic'),
	 (N'79ed186d-3d20-4c51-8e0e-a070ab475a05',N'blood oxygen'),
	 (N'7cae5d73-1ce7-4a55-a8ba-2163f7f3edf8',N'stress'),
	 (N'82bdd664-3396-4661-9086-c615cca33474',N'heartbeat'),
	 (N'91b6b5de-e598-4cf7-9799-0be44cce03db',N'blood pressure diastolic'),
	 (N'd4f52095-544b-41ce-bca3-5c26a528e3c1',N'blood sugar'),
	 (N'e9b23bb9-7595-4f58-a257-52d832248897',N'weight'),
	 (N'f25895f4-41f4-4dda-b1ef-3859346aa1c3',N'height');

INSERT INTO casestatus (id,status) VALUES
	 (N'77312377-c9b5-4735-aae4-ed1bf05f59ea',N'Requires Follow-up'),
	 (N'cb5001da-ee7c-4c69-8e5d-af0efd49f7a4',N'Following-up'),
	 (N'f4710517-19c5-437e-9ce3-980cb5ccd190',N'Settle');

INSERT INTO caseaction (id,[action],sort) VALUES
	 (N'21d5421c-1af8-4ef8-96f6-0d2a51bff2c9',N'Advance outpatient clinic appointment',5),
	 (N'40b9d51f-c99e-4351-a9d9-308eafc67eb5',N'Ask patient for admission or go to A&E/ Others',6),
	 (N'672362ab-d319-443a-a5ee-300b985df392',N'Arrange home care nurse visit',4),
	 (N'89b14d3c-e939-456e-96fb-b0240393b17f',N'Pause symptom diary reminder for 7 days',7),
	 (N'8d78cb0c-8363-4bcb-8d4e-f9ddacbd8028',N'Reassurance through telephone call',2),
	 (N'9e70b715-9c21-49cf-9880-a3a44cab4530',N'Settled through apps: e-consult',1),
	 (N'c3a5d6c4-f9d5-477c-8fe7-07cd4a9aca17',N'Need to ask doctor for advice and issue settled over phone',3);

INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'0398c9f5-6611-4ec9-aff0-50c0055190b6',N'rightShin',N'Right shin',N'右脛',N'右胫',NULL),
	 (N'04aaf300-e293-43f2-8785-3091a6be58cc',N'rightWrist',N'Right wrist',N'右手腕',N'右手腕',NULL),
	 (N'04e13346-0707-4b8c-bafc-4bcedf6a43d7',N'leftShin',N'Left shin',N'左脛',N'左胫',NULL),
	 (N'09469e62-c073-4a9d-b828-d42a4f20c751',N'leftFoot',N'Left foot',N'左腳',N'左脚',NULL),
	 (N'0c77bbdf-f723-4411-b42b-c88e3c6be0a1',N'mouth',N'Mouth',N'嘴',N'嘴',NULL),
	 (N'0fb00f7c-026b-4f29-abbb-785d9e940ce4',N'midUpperBack',N'Mid upper back',N'中上背部',N'中上背部',NULL),
	 (N'103dd036-82bd-4a40-a17d-7fea55048031',N'rightForehead',N'Right forehead',N'右前額',N'右前额',NULL),
	 (N'146b9b1b-9ca0-41b1-87a4-81c4399deceb',N'backOfLeftHand',N'Back of left hand',N'左手背',N'左手背',NULL),
	 (N'19d75231-1ef7-4f75-af5f-7531c6a8352c',N'backOfLeftArm',N'Back of left arm',N'左上臂後側',N'左上臂后侧',NULL),
	 (N'1a9a0081-5454-4cb3-a227-3f14c778196c',N'rightFoot',N'Right foot',N'右腳',N'右脚',NULL);
INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'1aaf6753-3136-438d-89ba-9d185de00aa1',N'posteriorHead',N'Posterior head',N'後頭',N'后头',NULL),
	 (N'22e66edf-9875-46d5-9285-fe25a1df2bd4',N'rightElbow',N'Right elbow',N'右手肘',N'右手肘',NULL),
	 (N'26ef82b5-e38a-4297-878a-d36700a237bc',N'leftCalf',N'Left calf',N'左小腿',N'左小腿',NULL),
	 (N'27c299fd-5dcd-47a8-baad-a9e974b45957',N'rightCheek',N'Right cheek',N'右臉頰',N'右脸颊',NULL),
	 (N'3de6805b-4774-43c4-9ec4-0bf377829ac5',N'rightHeel',N'Right heel',N'右腳跟',N'右脚跟',NULL),
	 (N'3e2020f3-cfa7-4195-8327-af31164be368',N'leftChest',N'Left chest',N'左胸',N'左胸',NULL),
	 (N'406c330a-c198-437f-9097-124b2d393eee',N'rightUpperBack',N'Right upper back',N'右上背部',N'右上背部',NULL),
	 (N'4a79918e-f261-4432-b52c-aa5aa2787162',N'backOfLeftForearm',N'Back of left forearm',N'左前臂後側',N'左前臂后侧',NULL),
	 (N'533a9c38-e541-4cca-8a3b-6168dba31fce',N'anteriorNeck',N'Anterior neck',N'前頸',N'前頸',NULL),
	 (N'5a0f8ab1-7613-4b40-9de1-aa02278a0230',N'backOfRightForearm',N'Back of right forearm',N'右前臂後側',N'右前臂后侧',NULL);
INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'5f1dc3bc-c611-4138-ae59-8a1f74402d02',N'leftMidBack',N'Left mid back',N'左中背部',N'左中背部',NULL),
	 (N'617ee80b-07a3-43f7-9d08-1a947dbc1d3c',N'rightLowerAbdomen',N'Right lower abdomen',N'右下腹',N'右下腹',NULL),
	 (N'6c6fe55d-3149-40be-904c-d6352871b0b3',N'rightEar',N'Right ear',N'右耳',N'右耳',NULL),
	 (N'6e2f8776-0f4a-4a9d-825f-6343586109f9',N'backOfRightHand',N'Back of right hand',N'右手背',N'右手背',NULL),
	 (N'6f6dca94-ea8f-4360-9e52-bf28b46e2271',N'rightPalm',N'Right palm',N'右手掌',N'右手掌',NULL),
	 (N'74d42c28-cd19-4e8e-8a50-64e7a2eea770',N'leftWrist',N'Left wrist',N'左手腕',N'左手腕',NULL),
	 (N'78b9a3f0-43bd-4301-992c-0770ac63f7a1',N'leftKnee',N'Left knee',N'左膝蓋',N'左膝盖',NULL),
	 (N'7a795fa6-15ef-4ca6-9d3a-605b75f608aa',N'rightForearm',N'Right forearm',N'右前臂',N'右前臂',NULL),
	 (N'7c7ccd79-cd27-408e-a29d-ad478def987d',N'backOfLeftThigh',N'Back of left thigh',N'左大腿後側',N'左大腿后侧',NULL),
	 (N'8039743b-5555-4006-a3ad-0ac2fc3590a1',N'leftElbow',N'Left elbow',N'左手肘',N'左手肘',NULL);
INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'816a02ab-fcaa-463f-868e-c3e05246c62b',N'rightAnkle',N'Right ankle',N'右腳踝',N'右脚踝',NULL),
	 (N'8728329a-82b9-4097-91e5-129cdd3b2c57',N'leftPalm',N'Left palm',N'左手掌',N'左手掌',NULL),
	 (N'8b7b1816-a0b3-4e6d-9105-90fb8e4218e0',N'leftLowerAbdomen',N'Left lower abdomen',N'左下腹',N'左下腹',NULL),
	 (N'8c39b8a4-7570-4039-bcbe-e386b4d95057',N'backOfRightThigh',N'Back of right thigh',N'右大腿後側',N'右大腿后侧',NULL),
	 (N'92c272c7-e046-471d-bb8c-b1c0df9fccf6',N'backOfRightArm',N'Back of right arm',N'右上臂後側',N'右上臂后侧',NULL),
	 (N'96932d16-cddd-4aeb-bb77-0629a673dad1',N'leftEar',N'Left ear',N'左耳',N'左耳',NULL),
	 (N'9f243166-2203-48ec-a8e4-c81f7320c35a',N'leftForehead',N'Left forehead',N'左前額',N'左前额',NULL),
	 (N'a0db06cc-f056-44b0-a60a-1f697335b8e7',N'rightArm',N'Right arm',N'右臂',N'右臂',NULL),
	 (N'b94c58bc-76d7-490d-b9ec-ebf15d759b58',N'rightChest',N'Right chest',N'右胸',N'右胸',NULL),
	 (N'b9874b45-03f7-41af-9b5f-f06bf101cce1',N'leftHeel',N'Left heel',N'左腳跟',N'左脚跟',NULL);
INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'b99d021b-e0f2-41b8-8a43-a91fea663ab9',N'nose',N'Nose',N'鼻子',N'鼻子',NULL),
	 (N'b9dba468-c6dc-4e33-929d-ecdb41aacc93',N'rightKnee',N'Right knee',N'右膝蓋',N'右膝盖',NULL),
	 (N'bc500659-e0d2-42ca-9c7e-d5091b6b7389',N'leftThigh',N'Left thigh',N'左大腿',N'左大腿',NULL),
	 (N'bcb6e624-305f-4555-a580-6e9b52c60383',N'rightUpperAbdomen',N'Right upper abdomen',N'右上腹',N'右上腹',NULL),
	 (N'c089b9ba-9521-4424-b5db-1774fa6799e4',N'leftUpperBack',N'Left upper back',N'左上背部',N'左上背部',NULL),
	 (N'c321e149-af16-45a6-bd6b-ca5b2a3bfad9',N'rightMidBack',N'Right mid back',N'右中背部',N'右中背部',NULL),
	 (N'cf3b00ac-04bc-4483-9c2a-78a9716da952',N'rightCalf',N'Right calf',N'右小腿',N'右小腿',NULL),
	 (N'd2fa4318-8963-47aa-88dd-e508cfb515f3',N'leftArm',N'Left arm',N'左臂',N'左臂',NULL),
	 (N'd8827331-0d4e-4f43-8054-f55922323be2',N'rightPelvis',N'Right pelvis',N'右骨盆',N'右骨盆',NULL),
	 (N'd9a98916-bff0-43d5-a04f-0aa0fffaf237',N'centralMidBack',N'Central mid back',N'中背部',N'中背部',NULL);
INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'da2cf8c1-5400-406d-ae5c-9b16cfca31ed',N'leftForearm',N'Left forearm',N'左前臂',N'左前臂',NULL),
	 (N'dc6402dd-7889-4d73-972d-e430060465cc',N'leftPelvis',N'Left pelvis',N'左骨盆',N'左骨盆',NULL),
	 (N'dd4cbb91-2054-4fff-8792-f8cea5803a41',N'leftCheek',N'Left cheek',N'左臉頰',N'左脸颊',NULL),
	 (N'ddf99080-2358-46cf-b6be-d78ebcd2e89f',N'leftUpperAbdomen',N'Left upper abdomen',N'左上腹',N'左上腹',NULL),
	 (N'dffd2ae2-56bb-4892-8d27-826524f69530',N'centralLowerBack',N'Central lower back',N'中下背部',N'中下背部',NULL),
	 (N'e43130a8-c658-4e5c-9700-38dc5c91184f',N'leftAnkle',N'Left ankle',N'左腳踝',N'左脚踝',NULL),
	 (N'e69a83c3-e2d3-4835-a47a-8a5cfbfad9f0',N'midForehead',N'Mid forehead',N'中前額',N'中前额',NULL),
	 (N'e6e011db-5d3c-4912-9fd7-378d5087bbed',N'rightShoulder',N'Right shoulder',N'右肩',N'右肩',NULL),
	 (N'ead87f17-2968-4662-aceb-e82a9bb9c666',N'rightLowerBack',N'Right lower back',N'右下背部',N'右下背部',NULL),
	 (N'f02493f2-ba2c-4c4a-af3e-bde1c0f384a3',N'rightButtock',N'Right buttock',N'右臀部',N'右臀部',NULL);
INSERT INTO body (id,[key],engkey,tckey,sckey,maxLevel) VALUES
	 (N'f28eacde-52d8-4c45-9bdd-22022050340a',N'leftLowerBack',N'Left lower back',N'左下背部',N'左下背部',NULL),
	 (N'f933b17f-6f1f-4f5d-94ce-fd7728d640a5',N'posteriorNeck',N'Posterior neck',N'後頸',N'后颈',NULL),
	 (N'f97fbc34-1c7f-41c4-a5f0-766a3774d75d',N'leftButtock',N'Left buttock',N'左臀部',N'左臀部',NULL),
	 (N'fbf6200d-f890-483c-a566-5619d9f892c2',N'leftShoulder',N'Left shoulder',N'左肩',N'左肩',NULL),
	 (N'fd739b5a-b523-44cc-984a-17871f85de9a',N'rightThigh',N'Right thigh',N'右大腿',N'右大腿',NULL);

INSERT INTO affecteduserrole (id,name) VALUES
	 (N'2b3cffee-1cf8-42bc-8ce0-49bfbb551c49',N'Nurse'),
	 (N'9c85da01-dcf8-4895-acfb-6fb8d8436c26',N'Patient'),
	 (N'd2195aea-360b-414c-a58b-f5f7fb3586a7',N'Carer');


insert into nurse (id,[name],email,[password],gender,hospitalId,roleId,createdDateTime,createdBy,isActive,isDeleted)
values ('07879b0c-808a-4a49-856e-1c7287c8e911','admin','admin@med.hku.hk','E10ADC3949BA59ABBE56E057F20F883E','M','01e2a6e9-a903-4855-9012-950a983b1410','7f437bcf-a878-467b-8cdd-1f44b7c4f75d','2022-08-26 10:10:10','07879b0c-808a-4a49-856e-1c7287c8e911',1,0)

insert into hospital (id,hospitalCode,[name],email,createdDateTime,createdBy,isDeleted,chatwoot_inboxId,chatwoot_inboxIdentifier)
values ('01e2a6e9-a903-4855-9012-950a983b1410','001','admin hospital','admin@med.hku.hk','2022-08-26 10:10:10','07879b0c-808a-4a49-856e-1c7287c8e911',0,18,'X46ixkTgjKsNBtmVuo8AN3mw')

