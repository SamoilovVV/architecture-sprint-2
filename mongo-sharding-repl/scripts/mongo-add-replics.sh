#!/bin/bash
docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
  rs.add("shard1-1:2018");
  rs.add("shard1-2:2018");
  rs.add("shard1-3:2018");
EOF
docker compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
  rs.add("shard2-1:2019");
  rs.add("shard2-2:2019");
  rs.add("shard2-3:2019");
EOF