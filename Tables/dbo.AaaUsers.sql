CREATE TABLE [dbo].[AaaUsers]
(
[UsId] [int] NOT NULL IDENTITY(1, 1),
[IsScienceCommittee] [bit] NOT NULL,
[UsApprovedDate] [datetime2] NULL,
[UsCancerParamValue1] [int] NULL,
[UsCancerParamValue2] [int] NULL,
[UsCancerParamValue3] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsCancerParamValue4] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsCancerUsId] [int] NULL,
[UsExpireDate] [datetime2] NULL,
[UsFullName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsIsActive] [bit] NULL,
[UsLastLoginDate] [datetime2] NULL,
[UsNationalCode] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsParamValue1] [int] NULL,
[UsParamValue2] [int] NULL,
[UsParamValue3] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsParamValue4] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsPassword] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsPassword1] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsRegisterDate] [datetime2] NULL,
[UsUserName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaUsers] ADD CONSTRAINT [PK_AaaUsers] PRIMARY KEY CLUSTERED  ([UsId]) ON [PRIMARY]
GO
