require 'database_cleaner'
require File.join(File.dirname(__FILE__), '..', 'lib/mongoid_sequence2.rb')

Mongoid.load!(File.join(File.dirname(__FILE__), 'mongoid.yml'), :test)

RSpec.configure do |config|
 
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
  
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

end
