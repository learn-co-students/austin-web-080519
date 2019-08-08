### Instance variables vs Class variables

- class = same for every member(instance of the class). Applies to everyone(all instances) when changed.
  `ex: @@bank_name = "Chase"`
- instance = different for every member (instance of the class)
  `ex: user_id = "9845443645" balance: "1000"`


### Class methods vs instance methods
- Class methods: `def self.all`
  - `self` is the entire Class
- Intance methods: `def all`


### Initialize method

Runs everytime a new instance of a class is created.
Define all variables in initalize!

### Self
Self is the object that the method is called on

`@@all  << self`
Refers to the instance that has just been created, the current instance

`def self.get_all_bank_accounts()`
Refers to the `BankAccount` class


