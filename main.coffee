require 'angular'

# __VAR__ globals will be brute force replaced by webpack at runtime
# We *must* define thesse in webpack config or everything will explode

constants =
  'API_URL'                 : __API_URL__
  'AUTH0_CLIENT_ID'         : __AUTH0_CLIENT_ID__
  'AUTH0_DOMAIN'            : __AUTH0_DOMAIN__
  'AUTH0_TOKEN_NAME'        : 'userJWTToken'
  'AUTH0_REFRESH_TOKEN_NAME': 'userRefreshJWTToken'

module = angular.module 'app.constants', []

for key, value of constants
  module.constant key, value
