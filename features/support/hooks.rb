Before do |scenario|
  puts "Starting scenario: #{scenario.name}"
end

After do
  puts 'HOOK Stop!'
end