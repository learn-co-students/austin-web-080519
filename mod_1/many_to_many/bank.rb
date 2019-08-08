require_relative "account"
require_relative "user"

class Bank
    attr_accessor :name, :interest_rate

    def initialize(name)
        @name = name
        @interest_rate = 5.5
    end


    def add_account(account_number, user)
        new_account = Account.new(account_number, self, user)
    end

    def add_user(first_name, last_name)
        new_user = User.new(first_name, last_name, self)
    end


    def accounts
        all_accounts = Account.all

        all_accounts.select { |account| account.bank == self }
    end

    def users
        all_users = User.all

        all_users.select { |user| user.bank == self }
    end
end

