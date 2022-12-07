select top 5 * from alltrips

select 
	ride_id, 
	rideable_type,
	route, 
	member_casual, 
	trip_len, 
	WeekDay, 
	Month, 
	MonthName,
	Quarter
into bike_share.dbo.[allrides] from alltrips
where trip_len >= 0 and 
	end_station_name is not null and
	start_station_name != end_station_name 

select max(started_at), min(started_at) from bike_share.dbo.alltrips
