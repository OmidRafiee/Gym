CREATE TABLE [dbo].[Group]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[ArticleId] [int] NULL,
[Title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Group] ADD CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Group_ArticleId] ON [dbo].[Group] ([ArticleId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Group] ADD CONSTRAINT [FK_Group_Article_ArticleId] FOREIGN KEY ([ArticleId]) REFERENCES [dbo].[Article] ([Id])
GO
