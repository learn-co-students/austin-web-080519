
require 'pry'

class Pokemon
    # Class variable databade_connection 
    # Creating a new databse file at 'db/pokemon.db'
    @@database_connection = SQLite3::Database.new('db/pokemon.db') 
    # Calling excute method on the databse
    # Passing in SQL query to create a table name pokemon
    @@database_connection.execute('CREATE TABLE IF NOT EXISTS pokemon(id INTEGER PRIMARY KEY, name TEXT, type TEXT);')
    attr_accessor :id, :name, :type, :db
    def initialize(id: id, name: name, type: type, db: db) #keyword arguments Pokemon.new(name: "Jigglypuff")
        @id = id
        @name = name
        @type = type
        @db = db
    end
    # 
    def self.save(name, type, db)
        # Calling execute on databse
        # passing in a SQL query
        # `?, ?` are the valuse going into the table
        # The first ? is the second parameter -> name
        # The second ? is the third parameter -> type
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
        # Calling execute on databse
        # Running the SQL query to get all pokemon that have the id of the paramater passed in
        array = db.execute("SELECT * FROM pokemon WHERE id = ?", id)
        # Note: Data is returned as a nested array
        array = array.flatten
        new_pokemon = Pokemon.new(id: id, name: array[1], type: array[2], db: db)
    end


    # Change name of pokemon in database
    def change_name(name, db)
        db.execute("UPDATE pokemon SET name = ? WHERE id = ?", name, self.id)
        self.name = name
        return self
    end
end

id = %
"SELECT user.account_number FROM user WHERE id = #{id}"


pok1 = Pokemon.new(id: 66, name: "Eevee", type: "hfosdbu", db: db)
pok1.change_name("Charmander", db)

pok1.fight

