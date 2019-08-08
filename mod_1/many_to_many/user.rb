require_relative 'account'
class User
  attr_reader :bank

  @@all = []

  def initialize(first_name, last_name, bank)
    @first_name = first_name
    @last_name = last_name
    @bank = bank

    @@all << self
  end

  # Returns all accounts for the given user
  def accounts
    all_accounts = Account.all

    all_accounts.select { |account| account.user == self }
  end

  def self.all
    @@all
  end



end
