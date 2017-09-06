CREATE TABLE [dbo].[RoutineStep]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Cancel] [int] NULL,
[Edit] [int] NULL,
[Next] [int] NULL,
[Ok] [int] NULL,
[RoutineId] [int] NOT NULL,
[Step] [int] NOT NULL,
[Title] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoutineStep] ADD CONSTRAINT [PK_RoutineStep] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoutineStep_RoutineId] ON [dbo].[RoutineStep] ([RoutineId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RoutineStep] ADD CONSTRAINT [FK_RoutineStep_Routine_RoutineId] FOREIGN KEY ([RoutineId]) REFERENCES [dbo].[Routine] ([Id]) ON DELETE CASCADE
GO
