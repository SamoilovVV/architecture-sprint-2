#!/bin/bash
docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
  rs.add("repl1:2018");
  rs.add("repl2:2018");
EOF
docker compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
  rs.add("repl1:2019");
  rs.add("repl2:2019");
EOF