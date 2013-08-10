require File.join(File.dirname(__FILE__), '..', 'lib/mongoid_sequence2.rb')

Mongoid.load!(File.join(File.dirname(__FILE__), 'mongoid.yml'), :test)

RSpec.configure do |config|

  config.before :each do
    Mongoid.default_session.collections.select { |c| c.name !~ /system/ }.each { |c| c.find.remove_all }
  end

  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

end
