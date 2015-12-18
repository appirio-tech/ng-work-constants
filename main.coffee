require 'angular'

constants =
  'API_URL'                 : process.env.API_URL || 'https://api.topcoder.com'
  'AVATAR_URL'              : process.env.AVATAR_URL || 'https://www.topcoder.com'
  'SUBMISSION_URL'          : process.env.SUBMISSION_URL || 'https://studio.topcoder.com'
  'AUTH0_CLIENT_ID'         : process.env.AUTH0_CLIENT_ID || 'abc123'
  'AUTH0_DOMAIN'            : process.env.AUTH0_DOMAIN || 'topcoder.auth0.com'
  'AUTH0_TOKEN_NAME'        : process.env.AUTH0_TOKEN_NAME || 'userJWTToken'
  'AUTH0_REFRESH_TOKEN_NAME': process.env.AUTH0_REFRESH_TOKEN_NAME || 'userRefreshJWTToken'

module = angular.module 'app.constants', []

for key, value of constants
  module.constant key, value
