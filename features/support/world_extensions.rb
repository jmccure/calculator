
module KnowsTheUserInterface
  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    @cash_slot ||= CashSlot.new
  end


  def teller
    @teller ||= UserInterface.new
  end

end