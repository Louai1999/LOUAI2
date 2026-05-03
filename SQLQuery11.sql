Use Louai_Alameiri

Create Table Employee(SSN_ID int Primary key identity(1,1),
F_Name varchar(20) Not null,
L_Name Varchar(20) Not null,
Barith_Date date,
Gender bit default 0,
CHECK (Gender IN ('Male','Female')),
Super_SSN int,
 FOREIGN KEY (Super_SSN)
 REFERENCES Employee(SSN_ID)
);

Create Table Department(Dnumber int primary key identity(1,1),
DName nvarchar (20) Not null,
Mgr_SSN int,
Mgr_start_Date date not null,
foreign key (Mgr_SSN)
References Employee(SSn_ID)
);
Create Table Dept_Location (Dnumber int primary key identity(1,1),
Dlocation nvarchar (100),
Dnumber int foreign key
references Department(Dnumber),
primary key (Dnumber,Dlocation)
);
