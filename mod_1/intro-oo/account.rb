# Creating a  class called BankAccount
class BankAccount
    
    # attr_accessor creates getter and setter methods for user_id and balance
    attr_accessor :user_id, :balance
    # Creates the class variable all 
    @@all = []
    @@bank_name = "Chase"

    # Defining the initalize method. Runs when a new instance is created
    def initialize(user_id, balance)
        # Setting the user_id instance variable to the first value passed in when a bank account is created
        @user_id = user_id
        # Setting the balance instance variable to the second value passed in when a bank account is created
        @balance = balance
        @username = ""

        # Pushes the newly created instance of bank account into the class variable all
        @@all  << self
    end

    # Defining class method get_all_bank_accounts
    def self.get_all_bank_accounts()
        # Returning the bank account class varaible [{account1}, {account2}]
        @@all
    end
    def deposit(amount)
        # Adding the `amount` to balance
        @balance += amount
    end
    def withdraw(amount)
        # Subtract `amount` from balance
        @balance -= amount

        # Returns current instance that called withdrawl
        puts self.user_id
    end
end

ba_sf = BankAccount.new(3,10000)
ba_atx = BankAccount.new(4, 50000)
ba_dc = BankAccount.new(5, 60000)


ba_sf.withdraw(100)


richies =  BankAccount.get_all_bank_accounts
# richies =  BankAccount.get_all_bank_accounts.each{
#      |ba| 
#      ba.balance += 10000
#  }
#  richies.each {
#      |richies| puts richies.balance
#  }

# puts richies