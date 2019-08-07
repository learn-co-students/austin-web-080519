require_relative "account"
class Bank
    attr_accessor :name

    def initialize(name)
        @name = name
        @interest_rate = "5.5%"
        # @accounts = []
    end

    def add_account(account_number, first_name, last_name)
        new_account = Account.new(account_number, first_name, last_name, self)
        # new_account.bank = "Chase"
        # @accounts << new_account
        return new_account
    end

    def accounts 
        all_accounts = Account.all
        puts all_accounts
        all_accounts.select { |account| account.bank == self }
    end


end

