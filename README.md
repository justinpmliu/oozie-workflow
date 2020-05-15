# oozie-workflow
docker cp ./job.properties sandbox-hdp:/home/raj_ops/oozie
oozie job -oozie http://localhost:11000/oozie -config ./job.properties -run