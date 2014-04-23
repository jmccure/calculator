World(KnowsTheUserInterface)
World(Anticipate)

Given /^my account has been credited with (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  my_account.credit(amount)
end

Then /^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
  #eventually { my_account.balance.should eq (amount) };  "Expected the balance to be #{amount} but it was #{my_account.balance}"
  trying_every(0.1).seconds.failing_after(20).tries do
    my_account.balance.should eq (amount)
  end

end