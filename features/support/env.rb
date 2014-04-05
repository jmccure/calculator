require 'capybara/cucumber'
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'user_interface')
require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')




Capybara.app = Sinatra::Application
Sinatra::Application.set :environment, :test