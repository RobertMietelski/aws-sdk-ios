Pod::Spec.new do |s|

  s.name         = 'AWSCognitoSync'
  s.version      = '2.13.4'
  s.summary      = 'Amazon Cognito SDK for iOS'

  s.description  = 'Amazon Cognito offers multi device data synchronization with offline access'

  s.homepage     = 'http://aws.amazon.com/cognito'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.tvos.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/RobertMietelski/aws-sdk-tvos.git',
                     :tag => s.version}
  s.requires_arc = true
  s.library      = 'sqlite3'
  s.dependency 'AWSCognito', '2.13.4'

  s.deprecated = true
  s.deprecated_in_favor_of = 'AWSCognito'
end
