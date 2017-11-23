CREATE TABLE [dbo].[RoutineLog]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Action] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ActionDate] [datetime2] NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EntityId] [int] NOT NULL,
[RoutineId] [int] NOT NULL,
[RoutineRoleTitle] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Step] [int] NOT NULL,
[UserId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoutineLog] ADD CONSTRAINT [PK_RoutineLog] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoutineLog_RoutineId] ON [dbo].[RoutineLog] ([RoutineId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoutineLog_UserId] ON [dbo].[RoutineLog] ([UserId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoutineLog] ADD CONSTRAINT [FK_RoutineLog_AaaUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AaaUsers] ([UsId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoutineLog] ADD CONSTRAINT [FK_RoutineLog_Routine_RoutineId] FOREIGN KEY ([RoutineId]) REFERENCES [dbo].[Routine] ([Id]) ON DELETE CASCADE
GO
