load data local infile './db/compData.csv' 
replace into table comps fields terminated by ',' 
optionally enclosed by '"' ignore 1 lines 
(id, name, area, scale, place, employees, address, founded_year, founded_month, what, mission, occupation, want, comment, url, has_original_format, original_text) 
set created_at=CURRENT_TIMESTAMP,updated_at=CURRENT_TIMESTAMP;