Before do |scenario|
  puts "Starting scenario: #{scenario.name}"
  TransactionQueue.clear
end

After do
  puts 'HOOK Stop!'
end