create database emloye
go

select *from [unemployment ]

select area ,date1
from [unemployment ] 
where date1='2019'

SELECT MONTH (date1)
from [unemployment ]
 
select right (date1,4) as Year_india
from [unemployment ] 


select  sum ( [ Estimated Employed])
from [unemployment ]
where right(date1,4) ='2019'
 
 select  sum ( [ Estimated Employed])
from [unemployment ]
where right(date1,4) ='2020'


select sum(([ Unemployment _Rate]*[ Estimated Labour Participation Rate (%)])-([ Estimated Employed]))
from india1 


select [ Estimated Employed],[ Estimated Labour Participation Rate (%)],[ Unemployment _Rate],
case when [ Estimated Labour Participation Rate (%)] is null or [ Estimated Labour Participation Rate (%)]=0 or [ Unemployment _Rate]=1 or [ Unemployment _Rate]=0 then null 
else ( [ Estimated Employed]/([ Estimated Labour Participation Rate (%)]*(1-[ Unemployment _Rate])))-[ Estimated Employed] end as unemployed 
from india1


select sum([ Estimated Employed])/sum([ Estimated Labour Participation Rate (%)])*sum([ Unemployment _Rate]/100) AS Unemployment 
from [unemployment ]

select sum( [ Unemployment _Rate])*100 from india1
where right(date1,4) ='2019'

select sum([ Estimated Labour Participation Rate (%)])
from india1

select  sum( ( [ Estimated Employed]))-sum(([ Estimated Labour Participation Rate (%)]))
from india1


select 
sum(round([ Estimated Employed]*([ Unemployment _Rate]/(100-[ Unemployment _Rate])),0))
from india1



select TOP 5 
sum(([ Estimated Employed]/[ Estimated Labour Participation Rate (%)])*
([ Unemployment _Rate]/100)) 
as Estimated_unemployent  ,Region
from [unemployment ]
where right(date1,4) ='2019'
group by Region
order by Estimated_unemployent desc 



select top 5 
   sum([ Estimated Employed]) as total  ,Region
from [unemployment ]
where right(date1,4) ='2019'
group by Region
order by total desc 