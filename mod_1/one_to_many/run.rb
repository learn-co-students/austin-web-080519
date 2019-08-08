require "pry"
require_relative "account"
require_relative "bank"


# Create an instance of Bank
chase_bank = Bank.new("Chase")
citi_bank = Bank.new("Citi")

# Add accounts for each bank
chase_bank.add_account(8747934, "Mitchell", "Williams")
citi_bank.add_account(98349834, "Syd", "Bailey")

# view all the accounts for chase bank
chase_accounts = chase_bank.accounts()

hemesh_account = Account.new(7479437935, "Hemesh", "Patel", chase_bank)

binding.pry

# test manually with bank