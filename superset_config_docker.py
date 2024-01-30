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
from flask import session
from flask import Flask
from datetime import timedelta

#SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://pguser:pgpwd@some.host/superset"
#SQLALCHEMY_ECHO = True
WTF_CSRF_ENABLED = True


RATELIMIT_ENABLED = True
RATELIMIT_APPLICATION = "50 per second"
AUTH_RATE_LIMITED = True
AUTH_RATE_LIMIT = "5 per second"

APP_NAME = "Teach Nagaland Reporting"
SESSION_COOKIE_SECURE = True
SESSION_COOKIE_SAMESITE = 'Strict'


def make_session_permanent():
    '''
    Enable maxAge for the cookie 'session'
    '''
    session.permanent = True

# Set up max age of session to 24 hours
PERMANENT_SESSION_LIFETIME = timedelta(minutes=1)
def FLASK_APP_MUTATOR(app: Flask) -> None:
    app.before_request_funcs.setdefault(None, []).append(make_session_permanent)


MAPBOX_API_KEY="pk.eyJ1Ijoic2FjaGluazAxIiwiYSI6ImNsYnl0bHEzaDJpa2szcG50NTg3OG9zeTQifQ.7vUqHgSEx9zqlQWNKw-DxA"
FEATURE_FLAGS = {
        "ALERT_REPORTS": True,
        "DASHBOARD_RBAC": True,
        "ENABLE_JAVASCRIPT_CONTROLS": True,
        "ENABLE_TEMPLATE_PROCESSING":True
        }
ENABLE_JAVASCRIPT_CONTROLS = True

FAB_PASSWORD_COMPLEXITY_ENABLED = True
