CREATE TABLE [dbo].[ArticleSend]
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
ALTER TABLE [dbo].[ArticleSend] ADD CONSTRAINT [PK_ArticleSend] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticleSend_ArticleId] ON [dbo].[ArticleSend] ([ArticleId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleSend] ADD CONSTRAINT [FK_ArticleSend_Article_ArticleId] FOREIGN KEY ([ArticleId]) REFERENCES [dbo].[Article] ([Id]) ON DELETE CASCADE
GO
