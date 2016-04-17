--Select the database to use
USE IST421JoeTeam4;
GO

--Declare script variable as type BIT
Declare @Pass BIT; --Used to make sure operation worked
Set @Pass = 1; -- set the value to represent TRUE 

------Drop Table tblSignUp and Start Fresh-----
if exists (select * from sys.objects where name = 'tblSignUp')
BEGIN
    drop table tblSignUp;
END

-----New Table tblSignUp to Create-----
--Declare script variable as type BIT
Declare @Pass BIT; --Used to make sure operation worked
Set @Pass = 1; -- set the value to represent TRUE 

BEGIN TRY 
CREATE TABLE tblSignUp (
client_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,     		
first_name  varchar(50) NOT NULL,
last_name varchar(10) NOT NULL, 
email varChar(50) NOT NULL, 
uPassword varchar(50) NOT NULL);
PRINT 'tblSignUp created';
END TRY
BEGIN CATCH
 PRINT 'tblSignUp created was NOT created';
 Set @Pass = 0 --FALSE table not created
END CATCH

------Seed the tblStudent to Test design -----
--Declare script variable as type BIT
Declare @Pass BIT; --Used to make sure operation worked
Set @Pass = 1; -- set the value to represent TRUE 

BEGIN TRY
IF @Pass = 1 -- True if the table was created
BEGIN 
  INSERT INTO tblSignUp
  (	first_name, last_name, email, uPassword )
  VALUES
 ('John', 'Oakes', 'johnoakes@email.com', 'password');
 INSERT INTO tblSignUp
 (first_name, last_name, email, uPassword )
 VALUES
 ('Steve', 'Oakes', 'steveoakes@email.com', 'password');
 PRINT 'tblSignUp was Seeded';
 END
ELSE  --Pass failed table creation
 PRINT 'tblSignUp was NOT Seeded';
END TRY
BEGIN CATCH -- issue with insert
 PRINT 'tblSignUp was NOT Seeded';
END CATCH

SELECT * from tblSignUp