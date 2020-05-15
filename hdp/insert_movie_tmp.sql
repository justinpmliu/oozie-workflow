INSERT OVERWRITE TABLE movie_tmp
SELECT * FROM movie WHERE category = '${hivevar:category}' ORDER BY view_num DESC;