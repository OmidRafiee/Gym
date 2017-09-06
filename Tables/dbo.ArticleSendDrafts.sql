CREATE TABLE [dbo].[ArticleSendDrafts]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ArticleId] [int] NOT NULL,
[MainAuthorBank] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainAuthorEmail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainAuthorMobile] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainAuthorName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainAuthorSheba] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MainAuthorWorkAddress] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SendDate] [datetime2] NOT NULL,
[UserId] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleSendDrafts] ADD CONSTRAINT [PK_ArticleSendDrafts] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticleSendDrafts_ArticleId] ON [dbo].[ArticleSendDrafts] ([ArticleId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleSendDrafts] ADD CONSTRAINT [FK_ArticleSendDrafts_Article_ArticleId] FOREIGN KEY ([ArticleId]) REFERENCES [dbo].[Article] ([Id]) ON DELETE CASCADE
GO
