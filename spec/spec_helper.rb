$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'specjour'
require 'rspec/autorun'
require 'debugger'

class NullObject
  def method_missing(name, *args)
    self
  end
end

RSpec.configure do |config|
  config.mock_with :rr

  config.before do 
  	$toto = 1
  	#debugger
  	#1
  	$stderr.puts "hi foo"
  end
end
