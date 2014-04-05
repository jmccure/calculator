
module KnowsTheUserInterface
  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    Sinatra::Application.settings.cash_slot
  end


  def teller
    @teller ||= UserInterface.new
  end

end