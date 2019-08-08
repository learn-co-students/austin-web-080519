# Connecting/Requiring the account file with the class Account
require_relative "account"

class Bank

    attr_accessor :name, :interest_rate

    def initialize(name)
        @name = name
        # Setting a new instance variable
        @interest_rate = 5.5
    end


    def add_account(account_number, first_name, last_name)
        # Setting local variable `new_account` with a new instance of Account
        # `self` is the bank that called `add_account`
        # ex: chase_bank.add_account(973465...) self is chase_bank
        new_account = Account.new(account_number, first_name, last_name, self)
    end

    # Getiing all accounts associated with a particular bank
    def accounts
        # Setting local variable for all intances of Account
        all_accounts = Account.all
        puts all_accounts
        # Going through all Accounts and only selecting the accounts that belong to the current bank
        # `self` is the bank that called `accounts`
        # ex: citi_bank.accounts(6495...) self is citi_bank
        all_accounts.select { |account| account.bank == self }
    end


end

