class Account
    attr_reader :account_number
    attr_accessor :first_name, :last_name, :bank, :user
    
    @@all = []

    def initialize(account_number, bank, user)
        @account_number = account_number
        @bank = bank
        @user = user

        @@all << self
    end

    def self.all
        @@all
    end   
end

