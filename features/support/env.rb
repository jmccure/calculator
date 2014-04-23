require 'capybara/cucumber'
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'user_interface')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')
require 'anticipate'



Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test