USE [master]
GO
/****** Object:  Database [CashRecieptForInsurance]    Script Date: 4/28/2017 8:44:59 AM ******/
CREATE DATABASE [CashRecieptForInsurance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CashRecieptForInsurance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CashRecieptForInsurance.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CashRecieptForInsurance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CashRecieptForInsurance_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CashRecieptForInsurance] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CashRecieptForInsurance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CashRecieptForInsurance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET ARITHABORT OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CashRecieptForInsurance] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CashRecieptForInsurance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CashRecieptForInsurance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CashRecieptForInsurance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CashRecieptForInsurance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CashRecieptForInsurance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CashRecieptForInsurance] SET  MULTI_USER 
GO
ALTER DATABASE [CashRecieptForInsurance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CashRecieptForInsurance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CashRecieptForInsurance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CashRecieptForInsurance] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CashRecieptForInsurance]
GO
/****** Object:  Table [dbo].[tblAuthorityList]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAuthorityList](
	[iAuthorityId] [int] IDENTITY(1,1) NOT NULL,
	[vUserName] [varchar](50) NOT NULL,
	[vPassword] [varchar](50) NOT NULL,
	[vEmailId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iAuthorityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[vUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[vEmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClerkList]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblClerkList](
	[iClerkId] [int] IDENTITY(1,1) NOT NULL,
	[vFirstName] [varchar](50) NOT NULL,
	[vLastName] [varchar](50) NULL,
	[vUserName] [varchar](50) NOT NULL,
	[vPassword] [varchar](50) NOT NULL,
	[vEmailId] [varchar](50) NOT NULL,
	[iContactNumber] [bigint] NOT NULL,
	[vPanId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iClerkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[vUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[vPanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCustomerList]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCustomerList](
	[iCustomerId] [int] IDENTITY(1,1) NOT NULL,
	[vFirstName] [varchar](50) NOT NULL,
	[vLastName] [varchar](50) NULL,
	[vUserName] [varchar](50) NOT NULL,
	[vPassword] [varchar](50) NOT NULL,
	[iAge] [int] NOT NULL,
	[vDOB] [varchar](50) NOT NULL,
	[vGender] [varchar](50) NOT NULL,
	[vOccupation] [varchar](50) NULL,
	[vMartialStatus] [varchar](50) NULL,
	[vEmailId] [varchar](50) NOT NULL,
	[iContactNumber] [bigint] NOT NULL,
	[vPanId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[vUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[vPanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLoginStatus]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLoginStatus](
	[iId] [int] NOT NULL,
	[vUserName] [varchar](50) NOT NULL,
	[dLockedTime] [datetime] NOT NULL,
	[iLockCount] [int] NOT NULL,
	[iPrim] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iPrim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPolicies]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPolicies](
	[iPolicyNumber] [int] IDENTITY(1,1) NOT NULL,
	[vPolicyName] [varchar](50) NOT NULL,
	[iMaxYears] [float] NOT NULL,
	[iMaxAmount] [decimal](11, 2) NOT NULL,
	[iInterest] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iPolicyNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPolicyApplicationGeneratedList]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPolicyApplicationGeneratedList](
	[iPolicyNumber] [int] NOT NULL,
	[iCustomerId] [int] NOT NULL,
	[iAmount] [bigint] NOT NULL,
	[iYears] [float] NOT NULL,
	[vTypeOfInstallment] [varchar](50) NOT NULL,
	[iPremium] [decimal](10, 2) NOT NULL,
	[dNextDueDate] [date] NOT NULL,
	[dStartDate] [date] NOT NULL,
	[dEndDate] [date] NOT NULL,
	[vStatus] [varchar](50) NOT NULL,
	[dGenDate] [date] NOT NULL,
	[vModeOfPayment] [varchar](50) NOT NULL,
	[bPaymentStatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iPolicyNumber] ASC,
	[iCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPolicyApplicationList]    Script Date: 4/28/2017 8:44:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPolicyApplicationList](
	[iPolicyNumber] [int] NOT NULL,
	[iCustomerId] [int] NOT NULL,
	[iAmount] [bigint] NOT NULL,
	[iYears] [float] NOT NULL,
	[vTypeOfInstallment] [varchar](50) NOT NULL,
	[iPremium] [decimal](10, 2) NOT NULL,
	[dNextDueDate] [date] NOT NULL,
	[dStartDate] [date] NOT NULL,
	[dEndDate] [date] NOT NULL,
	[vStatus] [varchar](50) NOT NULL,
	[vModeOfPayment] [varchar](50) NOT NULL,
	[bPaymentStatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iPolicyNumber] ASC,
	[iCustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblPolicyApplicationList] ADD  DEFAULT ('Pending') FOR [vStatus]
GO
ALTER TABLE [dbo].[tblPolicyApplicationList]  WITH CHECK ADD FOREIGN KEY([iCustomerId])
REFERENCES [dbo].[tblCustomerList] ([iCustomerId])
GO
ALTER TABLE [dbo].[tblPolicyApplicationList]  WITH CHECK ADD FOREIGN KEY([iPolicyNumber])
REFERENCES [dbo].[tblPolicies] ([iPolicyNumber])
GO
USE [master]
GO
ALTER DATABASE [CashRecieptForInsurance] SET  READ_WRITE 
GO
