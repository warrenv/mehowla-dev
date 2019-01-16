#!/bin/bash


docker-compose exec users curl -d '{"email": "john@example.com", "name": "john"}' -H "Content-Type: application/json" -X POST localhost:9000/users

exit 0
