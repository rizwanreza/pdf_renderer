# Configure Rails Environment
ENV["RAILS_ENV"] = 'test'
require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require 'rspec/rails'
require 'capybara/rspec'

Rails.backtrace_cleaner.remove_silencers!

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
