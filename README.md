# SQL Analysis for US Accidents

### Objective
I am responsible for Initial cleaning of US_Accidents CSV file for DataBase.
In [Cleaning jupyter notebook](https://github.com/AlyseD/Group_Project/blob/abains/Cleaningdata_prov.ipynb) I have divided the file in different tables and kept "ID" column as primary key.[ERD file](https://github.com/AlyseD/Group_Project/blob/abains/US_Accident_Schema.docx)
I am also responsible for ERD for database and created DDL(Data definition Language) for tables in our Database. [DDL Query](https://github.com/AlyseD/Group_Project/blob/abains/US_Accident_Schema.sql)

### Approach for cleaning
- First CSV file is uploaded in Dataframe and then check all the columns for null values and unique values.
- "ID" column has non null and unique values .
- "End-Ltd" and "End- Lng" has 70% null values .
- There are many columns which are repatitative values like for weather condition there are wind_speed,humidity.Precipitation etc. So I kept weather_condition column which consilidates all sorts of weather conditions.Same is for accident time,Source etc.
- nunique(),isnull().sum(),drop() etc functions are used to clean data.

### Approach for Database
- I am  using Postgres Database for tables .
-"ID" column has non null and unique values so I have kept it as Primary Key and other tables are connected to table as Foreign key "ID".
- There are following tables in DB :
    1. **Accident_Severity** : It has 2 columns "ID" as PK and "Severity"
    2. **Accident_Report_Source**  : This table has dta about source of Accident and " ID" is FK .
    3. **Accident_Time** : This table has data about time of accident.
    4. **Accident_Location** : This table has data for Location where accident occur like Lang.,Latt. ,City and county etc.
    5. **Accident_Weather** : This table has data about the weather condition during accident.
    6. **Accident_Traffic** : This table has data about traffic condition at the time of accident occur.




I am responsible for uploading dataframes in  for DataBase.
In [uploading jupyter notebook](https://github.com/AlyseD/Group_Project/blob/abains/cleaning_4DB.ipynb) .


Link for ERDfile is [ERD file](https://github.com/AlyseD/Group_Project/blob/abains/US_Accident_Schema.docx).
I am also responsible for ERD for database and created DDL(Data definition Language) for tables in our Database. [DDL Query](https://github.com/AlyseD/Group_Project/blob/abains/US_Accident_Schema.sql)
Also created queries [SQL file](https://github.com/AlyseD/Group_Project/blob/abains/queries_seg2.sql) to find the counts of accidents Severity based on weather conditions,sources ,Day/Night etc. 


## Objective for SQL Analysis:
Data is organized and  stored in different tables and then these tables are joined and manipulated to find the count of accidents  based on different features.
I have tried to find the answers  for following questions:
- What is count of accidents for each Severity type?
- What is count of accidents for each accident Reporting Source?
- What is count of accidents based on Day and Night?
- What is count for accidents for high and low Severity for each weather Condition like Rainy,Cloudy,Foggy,Snow,Wind Speed and Visibility

Following functions are used to generate queries
- Joins
- Like 
- Comparison operaters
- Count,Max,Min,Avg
- IN operator

## Results from SQL queries:
- Most of the accidents happen are of Severity Level 2 **2373210** and Severity level 3 is next highest **998913**

 ![chart1](https://github.com/AlyseD/Group_Project/blob/abains/Images/Severity_Count.png)     
- There are 3 main accident reporting sources and **MapQuest** has reported highest number of accidents.
 
 ![chart2](https://github.com/AlyseD/Group_Project/blob/abains/Images/Severity_source.png)
- Most of accident cases are reported during **Day** 

![chart3](https://github.com/AlyseD/Group_Project/blob/abains/Images/day_Night_Total.png)
- In Rainy weather condition ,low Severity **180,034** and **98,862** high severity accident cases were reported

![chart3](https://github.com/AlyseD/Group_Project/blob/abains/Images/lsev_rain.png)

![chart4](https://github.com/AlyseD/Group_Project/blob/abains/Images/hsev_Rain.png)

- In Cloudy weather condition ,low Severity **862,254** and **399,831** high severity accident cases were reported

![chart5](https://github.com/AlyseD/Group_Project/blob/abains/Images/lsev_clo.png)

![chart6](https://github.com/AlyseD/Group_Project/blob/abains/Images/hsev_clo.png)

- In Snow ,low Severity **27,320** and **22,913** high severity accident cases were reported

![chart7](https://github.com/AlyseD/Group_Project/blob/abains/Images/lsev_snow.png)

![chart8](https://github.com/AlyseD/Group_Project/blob/abains/Images/hsev_snow.png)

- In Foggy weather condition ,low Severity **27,320** and **8,852** high severity accident cases were reported

![chart9](https://github.com/AlyseD/Group_Project/blob/abains/Images/lsev_fog.png)

![chart10](https://github.com/AlyseD/Group_Project/blob/abains/Images/hsev_fog.png)

- In Clear weather condition ,low Severity **956,580** and **399,343** high severity accident cases were reported

![chart11](https://github.com/AlyseD/Group_Project/blob/abains/Images/lsev_clear.png)

![chart12](https://github.com/AlyseD/Group_Project/blob/abains/Images/hsev_clear.png)

## Analysis of SQL files

- Most of the accident case reported are of Low Severity

- Most of accident cases are reported during the Day time

- Most of accident cases occur on clear weather conditions.
