USE [master]
GO
/****** Object:  Database [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE]    Script Date: 3/27/2023 4:13:39 PM ******/
CREATE DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE', FILENAME = N'C:\Users\User\aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE_log', FILENAME = N'C:\Users\User\aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET DELAYED_DURABILITY = DISABLED 
GO
USE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/27/2023 4:13:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultationsDbset]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultationsDbset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Editor] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateofCreation] [datetime2](7) NULL,
	[DateofModification] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[ConversationId] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Speaker] [nvarchar](max) NULL,
	[Speech] [nvarchar](max) NULL,
 CONSTRAINT [PK_ConsultationsDbset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventsDbset]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventsDbset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateofCreation] [datetime2](7) NOT NULL,
	[IPAddress] [nvarchar](max) NULL,
	[EventType] [nvarchar](max) NULL,
	[EventName] [nvarchar](max) NULL,
	[EventID] [nvarchar](max) NULL,
	[EventModelName] [nvarchar](max) NULL,
	[OriginalPage] [nvarchar](max) NULL,
	[DestinationPage] [nvarchar](max) NULL,
 CONSTRAINT [PK_EventsDbset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikedResponsesDbset]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikedResponsesDbset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConversationId] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[LikeStatus] [nvarchar](max) NULL,
	[DateofCreation] [datetime2](7) NULL,
	[DateofStatusChange] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[DynamicId] [nvarchar](max) NULL,
 CONSTRAINT [PK_LikedResponsesDbset] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProfilesDbset]    Script Date: 3/27/2023 4:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfilesDbset](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Editor] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateofCreation] [datetime2](7) NULL,
	[DateofModification] [datetime2](7) NULL,
	[IPAddress] [nvarchar](max) NULL,
	[DateofBirth] [datetime2](7) NULL,
	[Gender] [nvarchar](max) NULL,
	[IDNumber] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[AllocatedRole] [nvarchar](max) NULL,
	[EventId] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProfilesDbset] PRIMARY KEY CLUSTERED 
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
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5e78b24d-be63-4d5b-8e02-39d2cc745a1e', N'ajode.tony@gmail.com', N'AJODE.TONY@GMAIL.COM', N'ajode.tony@gmail.com', N'AJODE.TONY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOxNpswr+XXH+ngzXHYje2PciNa4EPyBKlZhTvbfxvtxqe5NxA871tMaNFvsMbhTNQ==', N'O52OOU7XGUVMYK6VC4RJZJIR6HTCDYI6', N'f3c58146-0861-4b8f-8c78-1dd75db375be', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'tonyajodetony@gmail.com', N'TONYAJODETONY@GMAIL.COM', N'tonyajodetony@gmail.com', N'TONYAJODETONY@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEF8LEnLhLX+xGfQOfmfwhQKLLQj1LnSWuFKNWVOKWKUeiR/vPPgzGX40aR6lifDLew==', N'HR6NKBEMB25BCJ75DKVJWKMCLSXDRU3G', N'4fd92e89-35fb-4317-ba62-e904310bb189', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[LikedResponsesDbset] ON 

INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (32, N'334', N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'Yes', CAST(N'2023-03-23T22:12:12.9677727' AS DateTime2), CAST(N'2023-03-23T22:12:12.9679823' AS DateTime2), N'127.0.0.1', N'like-id-334')
INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (33, N'332', N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'Yes', CAST(N'2023-03-23T22:15:34.7004636' AS DateTime2), CAST(N'2023-03-23T22:15:34.7004684' AS DateTime2), N'127.0.0.1', N'like-id-332')
INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (34, N'330', N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'Yes', CAST(N'2023-03-23T22:20:31.4671437' AS DateTime2), CAST(N'2023-03-23T22:20:31.4671516' AS DateTime2), N'127.0.0.1', N'like-id-330')
INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (35, N'1343', N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'Yes', CAST(N'2023-03-24T10:27:23.6780277' AS DateTime2), CAST(N'2023-03-24T10:27:23.6782636' AS DateTime2), N'127.0.0.1', N'like-id-1343')
INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (36, N'1341', N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'No', CAST(N'2023-03-24T10:27:28.1201060' AS DateTime2), CAST(N'2023-03-24T10:27:34.1790958' AS DateTime2), N'127.0.0.1', N'like-id-1341')
INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (37, N'1347', N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'No', CAST(N'2023-03-24T10:50:16.2840139' AS DateTime2), CAST(N'2023-03-24T10:50:23.4306456' AS DateTime2), N'127.0.0.1', N'like-id-1347')
INSERT [dbo].[LikedResponsesDbset] ([Id], [ConversationId], [UserId], [LikeStatus], [DateofCreation], [DateofStatusChange], [IPAddress], [DynamicId]) VALUES (38, N'1446', N'5e78b24d-be63-4d5b-8e02-39d2cc745a1e', N'Yes', CAST(N'2023-03-25T23:45:00.5239979' AS DateTime2), CAST(N'2023-03-25T23:45:09.7979636' AS DateTime2), N'::1', N'like-id-1446')
SET IDENTITY_INSERT [dbo].[LikedResponsesDbset] OFF
GO
SET IDENTITY_INSERT [dbo].[ProfilesDbset] ON 

INSERT [dbo].[ProfilesDbset] ([Id], [UserId], [UserName], [Editor], [FirstName], [LastName], [DateofCreation], [DateofModification], [IPAddress], [DateofBirth], [Gender], [IDNumber], [PhoneNumber], [AllocatedRole], [EventId]) VALUES (1, N'733b8354-3b8f-459a-8829-d6e3a48093cb', N'tonyajodetony@gmail.com', NULL, N'Tony', N'Ajode', CAST(N'2023-01-13T21:41:50.4859188' AS DateTime2), CAST(N'2023-01-13T21:41:50.4859188' AS DateTime2), N'127.0.0.1', CAST(N'1991-11-22T14:00:00.0000000' AS DateTime2), N'Mwanaume', N'28594989', N'+254711915529', NULL, NULL)
INSERT [dbo].[ProfilesDbset] ([Id], [UserId], [UserName], [Editor], [FirstName], [LastName], [DateofCreation], [DateofModification], [IPAddress], [DateofBirth], [Gender], [IDNumber], [PhoneNumber], [AllocatedRole], [EventId]) VALUES (4, N'5e78b24d-be63-4d5b-8e02-39d2cc745a1e', N'ajode.tony@gmail.com', NULL, N'Tony', N'Ajode', CAST(N'2023-03-25T15:45:32.1421478' AS DateTime2), CAST(N'2023-03-25T15:45:32.1421478' AS DateTime2), N'127.0.0.1', CAST(N'1991-11-22T00:00:00.0000000' AS DateTime2), N'Mwanaume', N'28594989', N'0711915529', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProfilesDbset] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/27/2023 4:13:40 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-ProjectGreenAI-0DCEC28D-B5D7-478A-AB1C-BB4231AEE9DE] SET  READ_WRITE 
GO
