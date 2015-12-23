angular = require 'angular'
env     = require 'env'

defaultConstants =
  'API_URL'                 : 'https://www.topcoder.com'
  'AUTH0_CLIENT_ID'         : 'https://studio.topcoder.com'
  'AUTH0_DOMAIN'            : 'abc123'
  'AUTH0_TOKEN_NAME'        : 'userJWTToken'
  'AUTH0_REFRESH_TOKEN_NAME': 'userRefreshJWTToken'

module = angular.module 'app.constants', []

for key, defaultValue of defaultConstants
  value = env[key] || defaultValue

  module.constant key, value