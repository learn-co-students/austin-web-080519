class BankAccount
    attr_accessor :user_id, :balance
    @@all = []
    def initialize(user_id, balance)
        @user_id = user_id
        @balance = balance
        @@all  << self
    end

    def self.get_self()
        @@all
    end
    def deposit(amount)
        @balance += amount
    end
    def withdraw(amount)
        @balance -= amount
    end
end

ba_sf = BankAccount.new(3,10000)
ba_atx = BankAccount.new(4, 50000)
ba_dc = BankAccount.new(5, 60000)
richies =  BankAccount.get_self.each{
     |ba| 
     ba.balance += 10000
 }
 richies.each {
     |richies| puts richies.balance
 }