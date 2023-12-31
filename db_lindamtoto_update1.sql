USE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/29/2023 6:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSentimentsDbset]    Script Date: 3/29/2023 6:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSentimentsDbset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConversationId] [nvarchar](max) NULL,
	[DynamicId] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[SentimentStatus] [nvarchar](max) NULL,
	[DateofCreation] [datetime2](7) NULL,
	[DateofStatusChange] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserSentimentsDbset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230113115729_initialization', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230113121545_addprofileclass', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230113162406_updateprofileclass', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230113183041_addeventsmanagerclass', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230114073747_updateprofileclass_v2', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230115102723_addconsultationsclass', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322105059_addlikesclass', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230323194034_addlikesclass_V2', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230329121346_addusersentimentsclass', N'6.0.15')
GO
SET IDENTITY_INSERT [dbo].[UserSentimentsDbset] ON 

INSERT [dbo].[UserSentimentsDbset] ([Id], [ConversationId], [DynamicId], [UserId], [SentimentStatus], [DateofCreation], [DateofStatusChange], [IPAddress]) VALUES (5, N'1460', N'sentiment-id-1460-strongly-disagree', N'5e78b24d-be63-4d5b-8e02-39d2cc745a1e', N'Strongly_Disagree', CAST(N'2023-03-29T15:10:21.6200474' AS DateTime2), CAST(N'2023-03-29T15:10:27.2166379' AS DateTime2), N'127.0.0.1')
INSERT [dbo].[UserSentimentsDbset] ([Id], [ConversationId], [DynamicId], [UserId], [SentimentStatus], [DateofCreation], [DateofStatusChange], [IPAddress]) VALUES (6, N'1458', N'sentiment-id-1458-only-neutral', N'5e78b24d-be63-4d5b-8e02-39d2cc745a1e', N'Neutral', CAST(N'2023-03-29T15:10:31.8272967' AS DateTime2), CAST(N'2023-03-29T15:10:33.5511466' AS DateTime2), N'127.0.0.1')
INSERT [dbo].[UserSentimentsDbset] ([Id], [ConversationId], [DynamicId], [UserId], [SentimentStatus], [DateofCreation], [DateofStatusChange], [IPAddress]) VALUES (7, N'1456', N'sentiment-id-1456-strongly-agree', N'5e78b24d-be63-4d5b-8e02-39d2cc745a1e', N'Strongly_Agree', CAST(N'2023-03-29T15:10:37.0217269' AS DateTime2), CAST(N'2023-03-29T15:10:39.7410321' AS DateTime2), N'127.0.0.1')
SET IDENTITY_INSERT [dbo].[UserSentimentsDbset] OFF
GO
