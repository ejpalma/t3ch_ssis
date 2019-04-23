# T3ch Session: SQL Server Integration Service (SSIS)

## What is SQL Server Intergration Services (SSIS)

The next paragraph is extracted from the [Microsoft's documentation](https://docs.microsoft.com/en-us/sql/integration-services/ssis-how-to-create-an-etl-package?view=sql-server-2017). 

*Microsoft SQL Server Integration Services (SSIS) is a platform for building high-performance data integration solutions, including extraction, transformation, and load (ETL) packages for data warehousing. SSIS includes graphical tools and wizards for building and debugging packages; tasks for performing workflow functions such as FTP operations, executing SQL statements, and sending e-mail messages; data sources and destinations for extracting and loading data; transformations for cleaning, aggregating, merging, and copying data; a management database, SSISDB, for administering package execution and storage; and application programming interfaces (APIs) for programming the Integration Services object model.*

We have also found an excellent document that compares the **Data Warehousing ETL Tools**.

[A Comparative Review Of Data Warehousing ETL Tools With New Trends And Industry Insight](https://www.computer.org/csdl/pds/api/csdl/proceedings/download-article/07976926/pdf?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjc2RsX2FwaSIsImF1ZCI6ImNzZGxfYXBpX2Rvd25sb2FkX3Rva2VuIiwic3ViIjoiYW5vbnltb3VzQGNvbXB1dGVyLm9yZyIsImVtYWlsIjoiYW5vbnltb3VzQGNvbXB1dGVyLm9yZyIsImV4cCI6MTU1NTc2MzU2Nn0.gXgG0YJGABvp8Wv4ATc61eX5ddvSsc6EtZkU_Lns_2k)

The following table contains a brief summary of the analyzed applications.

| ETL Tool | Created | ETL Process | Languages |
|--|--|--|--|
| **Informatica** | 1993 | Mappings | C, JAVA |
| **Ab Initio** | 1995 | Graphs (Get transmitted into scripts) | C, C++ |
| **IBM Infosphere Datastage** | 1996 | Jobs (Can be designed once but deployed anywhere) | C++, Pearl |
| **Oracle Data Integrator (ODI)** | 2005 | Scenarios (Based on ELT technology) | JAVA, Javabeans |
| **SQL Server Integration Services (SSIS)** | 2005 | Packages (Variables, control flows and dataflow elements) | C, VB.NET |

Regarding the **SQL Server Integration Services** (**SSIS**) tool, the mentioned research concludes that it is less expensive but it does not operate on non **Windows** environment.

## Prerequisites

Before starting this **SSIS** technical session, there are some required intallation prerequisites we would like to comment.

1. The **Windows 10 Enterprise OS**.

2. The **SQL Server** and the **Integration Services** (**SSIS**) module. We have use the 2017 version.

	See [Install Integration Services](https://docs.microsoft.com/en-us/sql/integration-services/install-windows/install-integration-services?view=sql-server-2017).

3. The **SQL Server Management Studio** (**SSMS**) 2017.

4. The **SQL Server Data Tools** (**SSDT**). We have installed the integrated version for **Visual Studio 2017**.

	*SQL Server Data Tools is a modern development tool for building SQL Server relational databases, Azure SQL databases, Analysis Services (AS) data models, Integration Services (IS) packages, and Reporting Services (RS) reports. With SSDT, you can design and deploy any SQL Server content type with the same ease as you would develop an application in Visual Studio.*

	See [Install SSDT with Visual Studio 2017](https://docs.microsoft.com/en-us/sql/ssdt/download-sql-server-data-tools-ssdt?view=sql-server-2017).

5. The **AdventureWorksDW2012** sample database.

	We have installed the **Microsoft AdventureWorksDW** (Data Warehouse) 2012 database.
	Download AdventureWorksDW2012.bak from [AdventureWorks sample databases](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks) and restore the backup.

## Considerations

1. Based on the **Microsoft**'s tutorial [SSIS How to Create an ETL Package](https://docs.microsoft.com/en-us/sql/integration-services/ssis-how-to-create-an-etl-package?view=sql-server-2017).

	However, we have modified and adapted some festures in order to raise the purposes of this course.

2. Download this course from the [ejpalma's GitHub](https://github.com/ejpalma).

	[ejpalma/t3ch_ssis](https://github.com/ejpalma/t3ch_ssis)

3. You can also view the presentation of this course in [Prezi](https://prezi.com/).

	[T3ch Session: SQL Server Integration Service (SSIS)](https://prezi.com/view/bCgYORHEBGnisIV8xXJh/)
