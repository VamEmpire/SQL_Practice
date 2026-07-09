/*SELECT TOP (1000) [Row_ID]
      ,[Order_ID]
      ,[Order_Date]
      ,[Ship_Date]
      ,[Ship_Mode]
      ,[Customer_ID]
      ,[Segment]
      ,[Country]
      ,[City]
      ,[State]
      ,[Region]
      ,[Product_ID]
      ,[Category]
      ,[Sub_Category]
      ,[Product_Name]
      ,[Sales]
      ,[Quantity]
      ,[Discount]
      ,[Profit]
  FROM [samplestore].[dbo].[Sample_Superstore];
  
  select * from samplestore.dbo.Sample_Superstore
  order by Order_Date desc;
  
    select top 5 Order_ID,Order_date from samplestore.dbo.Sample_Superstore;
      select top 5 *  from samplestore.dbo.Sample_Superstore order by Order_date desc;  --Sequence->1.table2.orderdate(desc)3.top5
	    select distict * from samplestore.dbo.Sample_Superstore;   --->disctinct value of all columns
	      select distinct Ship_Mode from samplestore.dbo.Sample_Superstore;  -->to get distict names in the category column ship_mode
	       select distinct Ship_Mode,Segment from samplestore.dbo.Sample_Superstore;  -->two columns unique value of data
filters--->
          select *  from samplestore.dbo.Sample_Superstore where Ship_Mode = 'First Class';
	        select *  from samplestore.dbo.Sample_Superstore where Order_Date='2017-04-04'; 
			  select *  from samplestore.dbo.Sample_Superstore where Quantity >=5 
			    select  Order_ID,Order_date,Quantity from samplestore.dbo.Sample_Superstore where Quantity>10;
				  select top 5 Order_ID,Order_date,Quantity from samplestore.dbo.Sample_Superstore where Quantity>10;
				    select  Order_ID,Order_date,Quantity from samplestore.dbo.Sample_Superstore where Quantity>10 order by Quantity desc;
					  select top 8 Order_ID,Order_date,Quantity  --4.then selects top 8 records.
					  from samplestore.dbo.Sample_Superstore     --1.table selected
					  where Quantity != 14                       --2.filter is applied  (not equal)
					  order by Quantity desc;                    --3.then order by on quantity
  select top 5 Order_ID,Order_date,Quantity from samplestore.dbo.Sample_Superstore where Quantity in (3,5) order by Order_Date desc;
	select * from samplestore.dbo.Sample_Superstore where Order_Date > '2016-05-28' order by Order_Date;	
	  select * from samplestore.dbo.Sample_Superstore where Order_Date between '2016-05-28' and '2016-05-29' order by Order_Date;
		select *  from samplestore.dbo.Sample_Superstore where Ship_Mode in ('same day','Standard class');

						                       -------------#-->for giving multiple values in filter--------------

  select *  from samplestore.dbo.Sample_Superstore where Ship_Mode not in ('same day','Standard class');
	select top 5 * from samplestore.dbo.Sample_Superstore where Ship_Mode in ('same day');
	  select distinct * from samplestore.dbo.Sample_Superstore where Ship_Mode != 'same day';
		select top 5 Order_ID,Order_date,Quantity from samplestore.dbo.Sample_Superstore;

								          ----------->based on the ASCII values comparison is done--------

  select distinct Ship_Mode from samplestore.dbo.Sample_Superstore where Ship_Mode > 'First class';
	select distinct Ship_Mode from samplestore.dbo.Sample_Superstore where Ship_Mode >= 'Standard class';
		select distinct Ship_Mode from samplestore.dbo.Sample_Superstore where Ship_Mode >= 'Second class';

									                   ----Applying Filters in 2 columns ------
  
  select top 5 Ship_Mode, Order_Date, Segment from samplestore.dbo.Sample_Superstore where Ship_Mode = 'Second class' and Segment = 'Consumer';
     select top 15 Ship_Mode, Order_Date, Segment from samplestore.dbo.Sample_Superstore where Ship_Mode = 'Second class' or Segment = 'Consumer';
	     select top 10 Ship_Mode, Order_Date, Segment from samplestore.dbo.Sample_Superstore where Ship_Mode in ('Second class','Same day');
	                    
						---or increases he number of rows while and decreases the no pf rows-----

    select top 10 Ship_Mode, Order_Date, Segment from samplestore.dbo.Sample_Superstore where Ship_Mode ='Second class'or Ship_Mode ='Same day';-->same as above condition
      select * from samplestore.dbo.Sample_Superstore where Quantity >5 and Order_Date < '2015-07-13';*/
	  
	                  ----Pattern Matching------
  /*select * from samplestore.dbo.Sample_Superstore ;
    select Order_ID,Order_date,Product_Name from samplestore.dbo.Sample_Superstore where Product_Name ='Wilson Jones Elliptical Ring 3 1/2" Capacity Binders, 800 sheets';
                        
						---anything that starts with particular alphabet-----

     select Order_ID,Order_Date,Product_Name from samplestore.dbo.Sample_Superstore where Product_Name like 'H%';--% means we can have anything after H;
	   select Order_ID,Order_Date,Product_Name from samplestore.dbo.Sample_Superstore where Product_Name like '%C';--% means we can have anything ending with C;
	     select Order_ID,Order_Date,Product_Name from samplestore.dbo.Sample_Superstore where Product_Name like '%by%';--% means we can start and end with anything but in between it must have BY;
		   select Order_ID,Order_Date,Product_Name from samplestore.dbo.Sample_Superstore where Product_Name like 'A%c'or 'S%a';--% means we can anything with start as A and end with C;
		     select Order_ID,Order_Date,Product_Name,upper(Product_Name) as Product_Upper from samplestore.dbo.Sample_Superstore where upper(Product_Name) like 'W%R' ;--% means we can have anything after H;

			 ----%means can have any no.(0 or more)of characters before but _ means only 1 char before or __ 2 char before the alphabet or keyword u are searching

		select Order_ID,Order_Date,Product_Name from samplestore.dbo.Sample_Superstore where Product_Name like '_i%' order by Product_Name;--% means we can have anything after H;*/
	   --{Ankit% Bansal} here % is a string to search % we use --->'_N%' escape '%'
	   --{Ankit} is qualified for  [not like'a%n']--->this says it must not be starting with a [so false] and ending with n will not be checked as it failed for first letter;
	             ---1.from then 2.where completes the condition given [a%N] then 3.select
	   --like 'C[alb]%'  --->it means second character must be a or l or b but first character must be C;
	   ---like 'C[^alb]%'  --->it means second character must not be a,l or b but first character must be C;
	   ---like 'C[a-f]%'  --->it means second character can be anything between a to f but first character must be C;
	   
		 --for turning SQL to case-Sensitive      #CODES-
	/*	 use "samplestore.dbo.Sample_Superstore"
		 GO
		 ALTER DATABASE "samplestore.dbo.Sample_Superstore" SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
		 GO
		 ALTER DATABASE "samplestore.dbo.Sample_Superstore" COLLATE Latin_Genral_CS_AS;

		 use "samplestore.dbo.Sample_Superstore"
		 ALTER DATABASE "samplestore.dbo.Sample_Superstore" SET MULTI_USER
		 GO
	     */                 
						  ---lets work filtering with NULL data(its unknown data not empty we don't know)-------
	  
	 /*  
	   ALTER TABLE samplestore.dbo.Sample_Superstore
         ALTER COLUMN City VARCHAR(100) NULL;
	      update samplestore.dbo.Sample_Superstore set city = null  where Order_ID in ('CA-2016-106894','CA-2017-152807');	
  
	  select City from samplestore.dbo.Sample_Superstore where City is null
	   select * from samplestore.dbo.Sample_Superstore where City is not null */

	 /*  --@Aggregation--
	   select count(*) as cnt,    --no. of records in a table
	   sum(Sales) as total_sales,
	   max(Sales) as max_sales,
	   max(Profit) as max_Profit,
	   avg(Profit) as Avg_Profit
	   from samplestore.dbo.Sample_Superstore ;

	   select * from samplestore.dbo.Sample_Superstore order by Sales desc
	   select top 1 * from samplestore.dbo.Sample_Superstore order by Sales desc */

	/*   select Region, count(*) as cnt,    --Similar to pivot table in Excel
	   sum(Sales) as total_sales,
	   max(Sales) as max_sales,
	   max(Profit) as max_Profit,
	   avg(Profit) as Avg_Profit
	   from samplestore.dbo.Sample_Superstore group by Region;*/

	/*   select Region,Category,         ---similar to distinct keyword
	   sum(Sales) as total_sales         --##interview qes @@very IMP -->select 2 colmn then group by with 2 colmn 
	   from samplestore.dbo.Sample_Superstore  group by Region,Category; 
	     
		                       --compilation order--1->groupby 2->select 3->from 4->orderby-----
	                           ---Writting order -->select >> from >> where >> groupby >> order by >> top *5/----

	   select Region,Category, sum(Sales) as total_sales
	   from samplestore.dbo.Sample_Superstore
	   where Profit >50  
	   group by Region,Category
	   order by total_sales desc*/          
	                                                               --sequence----1.having>>groupby
	/*
	   select Sub_Category, sum(Sales) as total_sales
	   from samplestore.dbo.Sample_Superstore
	   where Profit >50  
	   group by Sub_Category
	   having sum(Sales) > 10000        
	   order by total_sales desc 

	   select Sub_Category, sum(Sales) as total_sales
	   from samplestore.dbo.Sample_Superstore 
	   group by Sub_Category
	   having max(Order_Date) > '2016-07-13'        
	   order by total_sales desc;*/

	   /*chairs, '2019-01-01', 100
	   chairs, '2019-10-01', 200
	   bookcase, '2019-01-01', 300
	   bookcase, '2020-10-01', 400  what will be the output?
	    ---bookcase 700 

       select Sub_Category, sum(Sales) as total_sales, max(Order_Date)
	   from samplestore.dbo.Sample_Superstore 
	   group by Sub_Category
	   having max(Order_Date) > '2020-07-13'        
	   order by total_sales desc;
	   chairs,300,'20191-10-01'
	   bookcase,700,'2020-10-10'*/--correct output
/*
	   --count
	   select count(distinct Region) as tot_region,
	   count(*) as tot,count(City) as tot_city,sum(Sales) as sales_tot
	   from samplestore.dbo.Sample_Superstore 

	   region,sales
	   'east',100
	   'east',null
	   'east',200

	   select region,avg(sales) as avg_sales ----300/count(sales)
	   from samplestore.dbo.Sample_Superstore
	   group by region

	   ---null is just ignored divided by 2 not 3 but count(region) then it will be divided by 3

							   
