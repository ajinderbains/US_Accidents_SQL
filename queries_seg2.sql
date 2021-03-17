--Find the Count of accidents for each severity Level
select count(ID) ACcident_Count_Sverity
From accident_severity
group by Severity;


--Find the Count of accidents for each Source
Select count(seva.Severity),ars.source
From accident_Severity seva ,accident_report_source ars
where seva.ID=ars.ID
group by ars.source;


-- Find Count of accidents for Severity '4' for each source
Select count(seva.Severity),ars.source
From accident_Severity seva ,accident_report_source ars
where seva.ID=ars.ID
and seva.severity like '4'
group by ars.source;


--Find Count of accidents grouped by Day/Night
Select count(seva.Severity),act.time_accident
From accident_Severity seva ,accident_time act
where seva.ID=act.ID
group by act.time_accident;

--Find Count of accidents grouped by Day/Night for HIgh Sverity 
Select count(seva.Severity),act.time_accident
From accident_Severity seva ,accident_time act
where seva.ID=act.ID
and seva.severity in('3','4')
group by act.time_accident;

--Find Count of accidents grouped by Day/Night for Low Sverity 
Select count(seva.Severity),act.time_accident
From accident_Severity seva ,accident_time act
where seva.ID=act.ID
and seva.severity in('1','2')
group by act.time_accident;

--Find Count of accidents grouped by Day/Night for Rain and low Severity 

Select count(seva.ID),act.time_accident
From accident_Severity seva ,accident_time act,accident_weather acw
where seva.ID=act.ID
and seva.ID=acw.ID
and seva.severity in('1','2')
and acw.weather_condition like '%Rai%'
group by act.time_accident;


--Find Count of accidents grouped by Day/Night for Rain and High Severity 

Select count(seva.ID),act.time_accident
From accident_Severity seva ,accident_time act,accident_weather acw
where seva.ID=act.ID
and seva.ID=acw.ID
and seva.severity in('3','4')
and acw.weather_condition like '%Rai%'
group by act.time_accident;

--Find Count of accidents grouped by Day/Night for Cloudy and Low Severity
Select count(seva.Severity),act.time_accident
From accident_Severity seva ,accident_time act,accident_weather acw
where seva.ID=act.ID
and seva.ID=acw.ID
and seva.severity in('1','2')
and acw.weather_condition like '%Clo%'
group by act.time_accident;


--Find Count of accidents grouped by Day/Night for Cloud and High Severity
Select count(seva.Severity),act.time_accident
From accident_Severity seva ,accident_time act,accident_weather acw
where seva.ID=act.ID
and seva.ID=acw.ID
and seva.severity in('3','4')
and acw.weather_condition like '%Clo%'
group by act.time_accident;


--Count of accidents grouped by weather conditions
select count(ID) Accident_No,weather_condition
from accident_weather
group by weather_condition;

--Find Count of accidents for high Severity in Rain
Select count(seva.ID) As HSev_Accident_In_Rain
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and (acw.weather_condition like '%Thunder%'
or  acw.weather_condition  like '%Rain%'
or   acw.weather_condition like '%Drizzle%');
							 
--Find Count of accidents for Low Severity in Rain							 
Select count(seva.ID) Accident_No_Rain
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and (acw.weather_condition like '%Thunder%'
or  acw.weather_condition  like '%Rain%'
or   acw.weather_condition like '%Drizzle%');

--Find Count of accidents for High  Severity in Clear Weather							 
Select count(seva.ID) Accidents_In_Clear_Weather
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and acw.weather_condition in('Clear','Fair')
and seva.Severity in ('3','4');


--Find Count of accidents for Low Severity in Clear Weather						 
Select count(seva.ID) Accidents_In_Clear_Weather
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and acw.weather_condition in( 'Clear','Fair')
and seva.Severity in ('1','2');


--Find Count of accidents for Low Severity in Cloudy weather							 
Select count(seva.ID) Accident_Cloudy
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.weather_condition like '%Cloud%';

--Find Count of accidents for HIgh  Severity in Cloudy Weather						 
Select count(seva.ID) Accident_Cloudy
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.weather_condition like '%Cloud%';

--Find Count of accidents for High Severity in Fog							 
Select count(seva.ID) High_Sev_Accident_In_Fog
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.weather_condition like '%Fog%';

--Find Count of accidents for Low Severity in Fog						 
Select count(seva.ID) Low_Sev_Accident_In_Fog
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.weather_condition like '%Fog%';

--Find Count of accidents for Low Severity in Snow							 
Select count(seva.ID) Low_Sev_Accident_In_Snow
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.weather_condition like '%Snow%';

--Find Count of accidents for High Severity in Snow							 
Select count(seva.ID) High_Sev_Accident_In_Snow
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.weather_condition like '%Snow%';

--Find wimd Speed						 
Select Wind_Speed
from accident_weather
where  wind_speed is not Null
order by  Wind_Speed DESC;

--Find Max.Min and Average for wind Speed							 
Select Max(Wind_speed),Min(Wind_Speed),Avg(Wind_Speed)
from accident_weather
where  wind_speed is not Null; 


--Find Count of accidents for  Severity for different ranges od wind Speed							 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 1000.0 
AND acw.Wind_Speed>=500.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 1000.0 
AND acw.Wind_Speed>=500.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 500.0 
AND acw.Wind_Speed>=100.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 500.0 
AND acw.Wind_Speed>=100.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 100.0 
AND acw.Wind_Speed>=50.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed								 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 100.0 
AND acw.Wind_Speed>=50.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed						 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 50.0 
AND acw.Wind_Speed>=25.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 50.0 
AND acw.Wind_Speed>=25.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed						 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 25.0 
AND acw.Wind_Speed>=20.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 25.0 
AND acw.Wind_Speed>=20.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 20.0 
AND acw.Wind_Speed>=15.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed								 
Select count(acw.ID) LOw_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 20.0 
AND acw.Wind_Speed>=15.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 15.0 
AND acw.Wind_Speed>=10.0;
							 
--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 15.0 
AND acw.Wind_Speed>=10.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed								 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 10.0 
AND acw.Wind_Speed>=5.0;

--Find Count of accidents for High  Severity for different ranges od wind Speed							 
Select count(acw.ID) High_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.Wind_Speed< 5.0 
AND acw.Wind_Speed>=0;

--Find Count of accidents for High  Severity for different ranges od wind Speed						 
Select count(acw.ID) Low_Sev_Accident_In_Wind
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.Wind_Speed< 5.0 
AND acw.Wind_Speed>=0;



--Find Visibilty						 
Select visibility
from accident_weather
where  visibility is not Null
order by  visibility DESC;

--Find Count of accidents for High Severity in visibility							 
Select count(acw.ID) High_Sev_Accident_In_Low_Visibility
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('3','4')
and acw.visibility< 5.0 
AND acw.visibility>=0;

--Find Count of accidents for Low Severity in visibility							 
Select count(acw.ID) Low_Sev_Accident_In_Low_Visibility
From accident_Severity seva,accident_weather acw
where seva.ID=acw.ID
and seva.Severity in ('1','2')
and acw.visibility< 5.0 
AND acw.visibility>=0;



