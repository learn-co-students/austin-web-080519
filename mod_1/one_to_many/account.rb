class Account
    # Creates getter for account_number instance variable
    attr_reader :account_number

    # Creates getter and setter for instance variables
    attr_accessor :first_name, :last_name, :bank
    
    # Class variable holding all instances of Account
    @@all = []

    # Iniitialize new Accounts passing in 4 arguments
    def initialize(account_number, first_name, last_name, bank)
        # Assigning values passed in to instance variables
        @account_number = account_number
        @first_name = first_name
        @last_name = last_name
        @bank = bank

        # Shoving newly created Account into class variable @@all
        # ex: Account.new("vanessa"....)
        # self is the new instance of Account where first_name = vanessa
        @@all << self
    end

    # No longer needed using attr_reader
    # def account_number
    #     @account_number
    # end

    # No longer need first_name methods using attr_accessor
    # # Getter
    # def first_name
    #     @first_name
    # end
    # No longer need first_name methods using attr_accessor
    # # Setter
    # def first_name=(name)
    #     @first_name = name
    # end

    # self is the class
    # Creating class method
    # Account.all
    def self.all
        @@all
    end   
end

