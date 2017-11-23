CREATE TABLE [dbo].[RoutineRole]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[AuthorityCode] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DashboardEnum] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoutineId] [int] NOT NULL,
[SendSteps] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Step] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoutineRole] ADD CONSTRAINT [PK_RoutineRole] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoutineRole_RoutineId] ON [dbo].[RoutineRole] ([RoutineId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoutineRole] ADD CONSTRAINT [FK_RoutineRole_Routine_RoutineId] FOREIGN KEY ([RoutineId]) REFERENCES [dbo].[Routine] ([Id]) ON DELETE CASCADE
GO
