Before do |scenario|
  puts "Starting scenario: #{scenario.name}"
  BalanceStore.new.balance = 0
  TransactionQueue.clear
end

After do
  puts 'HOOK Stop!'
end