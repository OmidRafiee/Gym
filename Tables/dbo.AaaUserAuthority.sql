CREATE TABLE [dbo].[AaaUserAuthority]
(
[UaId] [int] NOT NULL IDENTITY(1, 1),
[UaAuthorityCode] [int] NOT NULL,
[UaConvertComment] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UaIsDeny] [bit] NOT NULL,
[UaUsId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaUserAuthority] ADD CONSTRAINT [PK_AaaUserAuthority] PRIMARY KEY CLUSTERED  ([UaId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AaaUserAuthority_UaUsId] ON [dbo].[AaaUserAuthority] ([UaUsId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaUserAuthority] ADD CONSTRAINT [FK_AaaUserAuthority_AaaUsers_UaUsId] FOREIGN KEY ([UaUsId]) REFERENCES [dbo].[AaaUsers] ([UsId]) ON DELETE CASCADE
GO
