CREATE TABLE if not exists movie_tmp(
    page SMALLINT,
    url STRING,
    title STRING,
    actor STRING,
    view_num INT,
    category STRING
)
STORED AS ORC
TBLPROPERTIES ('orc.compress'='SNAPPY');

INSERT OVERWRITE TABLE movie_tmp
select * from movie where category = '${hivevar:category}' order by view_num desc;


