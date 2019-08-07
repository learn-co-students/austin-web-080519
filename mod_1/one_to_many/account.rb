class Account
    attr_reader :account_number
    attr_accessor :first_name, :last_name
    
    @@all = []

    def initialize(account_number, first_name, last_name)
        @account_number = account_number
        @first_name = first_name
        @last_name = last_name
        @@all << self
    end

    def self.all
        @@all
    end   
end
