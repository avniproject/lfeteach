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
from datetime import timedelta

#SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://pguser:pgpwd@some.host/superset"
#SQLALCHEMY_ECHO = True
WTF_CSRF_ENABLED = True


APP_NAME = "Teach Nagaland Reporting"

# Specify override headers to be included in every response
OVERRIDE_HTTP_HEADERS = {'Strict-Transport-Security': 'max-age=63072000; includeSubDomains; preload'}

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
#from flask_session import Session
#from flask_session import RedisSessionInterface
from redis import Redis

SECRET_KEY = 'PUjPepZA8kE6R1MfNmsbC3YrVsxMu5vbVvf8exL11b10PRPlk0bIKIV9'
PREVIOUS_SECRET_KEY = 'TEST_NON_DEV_SECRET'

SESSION_PERMANENT = True

PERMANENT_SESSION_LIFETIME = timedelta(minutes=5)
SESSION_REFRESH_EACH_REQUEST = True

SESSION_USE_SIGNER = True
SESSION_TYPE = 'redis'
SESSION_REDIS = Redis(host="superset-cache", port=6379, db=0)
#
# Other possible config options and backends:
# # https://flask-session.readthedocs.io/en/latest/config.html

MAPBOX_API_KEY="pk.eyJ1Ijoic2FjaGluazAxIiwiYSI6ImNsYnl0bHEzaDJpa2szcG50NTg3OG9zeTQifQ.7vUqHgSEx9zqlQWNKw-DxA"
FEATURE_FLAGS = {
        "ALERT_REPORTS": True,
        "DASHBOARD_RBAC": True,
        "ENABLE_JAVASCRIPT_CONTROLS": False,
        "ENABLE_TEMPLATE_PROCESSING":False
        }

FAB_PASSWORD_COMPLEXITY_ENABLED = True


#from flask_login import logout_user
#from superset.security import SupersetSecurityManager

#CUSTOM_SECURITY_MANAGER = CustomSsoSecurityManager
