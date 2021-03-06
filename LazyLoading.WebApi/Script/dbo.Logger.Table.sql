USE [LazyLoading]
GO
/****** Object:  Table [dbo].[Logger]    Script Date: 10/04/2020 12:47:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [nvarchar](25) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Trips] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Id_Logger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
