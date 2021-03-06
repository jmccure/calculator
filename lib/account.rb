require 'active_record'
ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
                                        :database => 'db/bank.db')
ActiveRecord::Migrator.migrate("db/migrate/")
class Account < ActiveRecord::Base
  validates_uniqueness_of :number

=begin
  def initialize
    @queue = TransactionQueue.new
    @balance_store = BalanceStore.new
  end
=end


  def queue
    @queue ||= TransactionQueue.new
  end

  def credit(amount)
    queue.write("+#{amount},#{number}")
  end


=begin
  def balance
    @balance_store.balance
  end
=end


  def debit(amount)
    queue.write("-#{amount},#{number}")
  end

end