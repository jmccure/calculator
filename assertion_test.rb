require 'test/unit/assertions'
include Test::Unit::Assertions


begin
  assert false, "ff"
rescue Exception => exc
  puts exc.class
end