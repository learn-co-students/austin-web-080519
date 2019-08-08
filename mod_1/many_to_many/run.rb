require "pry"
require_relative "account"
require_relative "bank"


# Create an instance of Bank
chase_bank = Bank.new("Chase")
citi_bank = Bank.new("Citi")

# Add users for each bank
mitchell = chase_bank.add_user("Mitchell", "Williams")
andy = chase_bank.add_user("Andy", "Rosario")
syd = citi_bank.add_user("Syd", "Bailey")

# Add accounts to users and banks
mitchell_account = chase_bank.add_account(98784297345, mitchell)
andy_account = chase_bank.add_account(98476598, andy)

# view all the accounts for chase bank
# chase_accounts = chase_bank.accounts()

# hemesh_account = Account.new(7479437935, "Hemesh", "Patel", chase_bank)

binding.pry

# test manually with bank