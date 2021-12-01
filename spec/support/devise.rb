# DONE Configurations for Devise gem 01/12
# Included in controller spec files

require_relative '.controller_macros'

Rspec.configure do |config|
  config.include Devise::Test::ControllerHelpers, :type => :controller
  config.extend ControllerMacros, :type => :controller
end