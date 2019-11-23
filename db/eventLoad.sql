load data local infile './db/eventData.csv' 
replace into table events fields terminated by ',' 
optionally enclosed by '"' ignore 1 lines 
(id, name, place, date, startTime, finishTime, pref, event_type, outline, guestComp, target, otherinfo, form) 
set created_at=CURRENT_TIMESTAMP,updated_at=CURRENT_TIMESTAMP;