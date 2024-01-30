#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This is an example "local" configuration file. In order to set/override config
# options that ONLY apply to your local environment, simply copy/rename this file
# to docker/pythonpath/superset_config_docker.py
# It ends up being imported by docker/superset_config.py which is loaded by
# superset/config.py
#

#SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://pguser:pgpwd@some.host/superset"
#SQLALCHEMY_ECHO = True
WTF_CSRF_ENABLED = True


RATELIMIT_ENABLED = True
RATELIMIT_APPLICATION = "50 per second"
AUTH_RATE_LIMITED = True
AUTH_RATE_LIMIT = "5 per second"

APP_NAME = "Teach Nagaland Reporting"



#
# Flask session cookie options
#
# See https://flask.palletsprojects.com/en/1.1.x/security/#set-cookie-options
# for details
#
SESSION_COOKIE_HTTPONLY = True  # Prevent cookie from being read by frontend JS?
SESSION_COOKIE_SECURE = True  # Prevent cookie from being transmitted over non-tls?
SESSION_COOKIE_SAMESITE = "Strict"
# Whether to use server side sessions from flask-session or Flask secure cookies
SESSION_SERVER_SIDE = True
# config using Redis as the backend for server side sessions

from redis import Redis

SESSION_SERVER_SIDE = True
SESSION_USE_SIGNER = True
SESSION_TYPE = "redis"
SESSION_REDIS = Redis(host="localhost", port=6379, db=0)
#
# Other possible config options and backends:
# # https://flask-session.readthedocs.io/en/latest/config.html


MAPBOX_API_KEY="pk.eyJ1Ijoic2FjaGluazAxIiwiYSI6ImNsYnl0bHEzaDJpa2szcG50NTg3OG9zeTQifQ.7vUqHgSEx9zqlQWNKw-DxA"
FEATURE_FLAGS = {
        "ALERT_REPORTS": True,
        "DASHBOARD_RBAC": True,
        "ENABLE_JAVASCRIPT_CONTROLS": True,
        "ENABLE_TEMPLATE_PROCESSING":True
        }
ENABLE_JAVASCRIPT_CONTROLS = True

FAB_PASSWORD_COMPLEXITY_ENABLED = True
