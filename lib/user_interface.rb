class UserInterface
  include Capybara::DSL

  def withdraw_from(account, amount)
    Sinatra::Application.settings.account = account
    visit '/'
    fill_in 'Amount', :with => amount
    click_button 'Withdraw'
  end
end