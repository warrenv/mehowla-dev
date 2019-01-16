#!/bin/bash
set -e

mongo <<EOF
use $USERS_DB
db.createUser({
  user:  '$USERS_DB_USER',
  pwd: '$USERS_DB_PASSWORD',
  roles: [{
    role: 'readWrite',
    db: '$USERS_DB'
  }]
})
EOF
