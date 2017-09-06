CREATE TABLE [dbo].[ArticleSendAuthors]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ArticleId] [int] NOT NULL,
[Email] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TelePhone] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleSendAuthors] ADD CONSTRAINT [PK_ArticleSendAuthors] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ArticleSendAuthors_ArticleId] ON [dbo].[ArticleSendAuthors] ([ArticleId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArticleSendAuthors] ADD CONSTRAINT [FK_ArticleSendAuthors_Article_ArticleId] FOREIGN KEY ([ArticleId]) REFERENCES [dbo].[Article] ([Id]) ON DELETE CASCADE
GO
