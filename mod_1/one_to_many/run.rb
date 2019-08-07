require "pry"
require_relative "account"
require_relative "bank"


# v_account = Account.new(8736430853, "Vanessa", "Burroughs")
# syd_account = Account.new(92348248935, "Syd", "Bailey")
# hemesh_account = Account.new(433497435, "Hemesh", "Patel")

chase_bank = Bank.new("Chase")
citi_bank = Bank.new("Citi")
binding.pry


# test manually with bank