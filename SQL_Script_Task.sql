 
USE [TASK]
GO
/****** Object:  StoredProcedure [dbo].[AddNewEmployee]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddNewEmployee]
	(		
		@LastName	nvarchar(20),
		@FirstName	nvarchar(10),
		@Title		nvarchar(30),	
		@Address	nvarchar(60),
		@City		nvarchar(15),	
		@Region		nvarchar(15),	
		@PostalCode	nvarchar(10),
		@Country	nvarchar(15),
		@Extension	nvarchar(4)
	)
AS
	insert into Employees
	(LastName, FirstName, Title, Address, City, Region, PostalCode, Country, Extension)
	values
	(@LastName, @FirstName, @Title, @Address, @City, @Region, @PostalCode, @Country, @Extension)
	RETURN

GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteEmployee]
	(
	@empId int
	)
	
AS
	delete from Employees where EmployeeID = @empId
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeDetails]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmployeeDetails]
	(
	@empId int
	)
	
AS
	Select * from Employees where EmployeeID = @empId
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeList]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmployeeList]	
AS
	Select * from Employees
	
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--2. Procedure to delete an employee 


--3. Procedure to add get an employee details 


--4. Procedure to get all the employees in the table 


--5. Procedure to update an employee details
CREATE PROCEDURE [dbo].[UpdateEmployee]
	(
		@EmployeeID	int,
		@LastName	nvarchar(20),
		@FirstName	nvarchar(10),
		@Title		nvarchar(30),	
		@Address	nvarchar(60),
		@City		nvarchar(15),	
		@Region		nvarchar(15),	
		@PostalCode	nvarchar(10),
		@Country	nvarchar(15),
		@Extension	nvarchar(4)
	)
AS
	update Employees
	set	
		LastName = @LastName, 
		FirstName = @FirstName, 
		Title = @Title, 
		Address = @Address, 
		City = @City, 
		Region = @Region, 
		PostalCode = @PostalCode, 
		Country = @Country, 
		Extension = @Extension
	where 
		EmployeeID = @EmployeeID
	RETURN
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NULL,
	[FirstName] [nvarchar](10) NULL,
	[Title] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](MAX) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Extension] [nvarchar](4) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [NORTHWND] SET  READ_WRITE 
GO
-------------------------------------------------------------------------------------------------------------------------
USE [TASK]
GO
/****** Object:  Table [dbo].[Peoples]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peoples](
	[PeopleID] [int] IDENTITY(1,1) NOT NULL,
	[PeopleName] [nvarchar](20) NULL,
 CONSTRAINT [PK_Peoples] PRIMARY KEY CLUSTERED 
(
	[PeopleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
-------------------------------------------------------------------------------------------------------------------------

USE [TASK]
GO
/****** Object:  StoredProcedure [dbo].[AddNewPeople]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddNewPeople]
	(		
		@PeopleName	nvarchar(20)
	)
AS
	insert into Peoples
	(PeopleName)
	values
	(@PeopleName)
	RETURN

GO
------------------------------------------------------------------------------------------------------------------------
USE [TASK]
GO
/****** Object:  StoredProcedure [dbo].[DeletePeople]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePeople]
	(
	@peopleId int
	)
	
AS
	delete from Peoples where PeopleID = @peopleId
	RETURN
GO
------------------------------------------------------------------------------------------------------------------------
USE [TASK]
GO
/****** Object:  StoredProcedure [dbo].[GetPeopleDetails]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPeopleDetails]
	(
	@peopleId int
	)
	
AS
	Select * from Peoples where PeopleID = @peopleId
	RETURN
GO
----------------------------------------------------------------------------------------------------------------------
USE [TASK]
GO
/****** Object:  StoredProcedure [dbo].[GetPeopleList]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPeopleList]	
AS
	Select * from Peoples
	
	RETURN
GO
-------------------------------------------------------------------------------------------------------------------------
USE [TASK]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePeople]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdatePeople]
	(
		@PeopleID	int,
		@PeopleName	nvarchar(20)
	)
AS
	update Peoples
	set	
		PeopleName = @PeopleName
	where 
		PeopleID = @PeopleID
	RETURN
GO

-------------------------------------------------------------------------------------------------------------------------

USE [TASK]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategory] [nvarchar](20) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

---------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------

USE [TASK]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](70) NULL,
	[Priority] [nvarchar](30) NULL,
        [EstimatedHr] [float] NULL,
        [ActualHr] [float] NULL,
	[PlannedStartDate] [datetime] NULL,
        [ActualStartDate] [datetime] NULL,
        [ActualEndDate] [datetime] NULL,
        [ProductId] [int] NULL,
        
        

 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Products]
GO


-------------------------------------------------------------------------------------------------------------------


USE [TASK]
GO
/****** Object:  Table [dbo].[TaskAssigns]    Script Date: 10/13/2015 11:50:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskAssigns](
	[TaskAssignID] [int] IDENTITY(1,1) NOT NULL,
	[WorkSequence] [nvarchar](50) NULL,
        [TaskId] [int] NULL,
        [PeopleId] [int] NULL,
        
 CONSTRAINT [PK_TaskAssigns] PRIMARY KEY CLUSTERED 
(
	[TaskAssignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaskAssigns]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssigns_Tasks] FOREIGN KEY([TaskID])
REFERENCES [dbo].[Tasks] ([TaskID])
GO
ALTER TABLE [dbo].[TaskAssigns] CHECK CONSTRAINT [FK_TaskAssigns_Tasks]
GO
GO
ALTER TABLE [dbo].[TaskAssigns]  WITH CHECK ADD  CONSTRAINT [FK_TaskAssigns_Peoples] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
GO
ALTER TABLE [dbo].[TaskAssigns] CHECK CONSTRAINT [FK_TaskAssigns_Peoples]
GO

-----------------------------------------------------------------------------------------------------------------------

