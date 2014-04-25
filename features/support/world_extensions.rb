
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


  def my_account
    @my_account ||= Account.create!(:number => "test2", :balance => 0)
  end

end