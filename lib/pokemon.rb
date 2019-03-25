class Pokemon
  
 attr_accessor :id, :name, :type, :db
  @@all = []
  
 def initialize(keys)
   @name = keys[:name]
   @id = keys[:id]
   @type = keys[:type]
   @db = keys[:db]
 end
 
 def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type);
 end
 
 def self.find(id, db)
   pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id);
   poke_keys = {:id => pokemon[0], :name => pokemon[1], :type => pokemon[2], :db => db}
   :id
 end
 
end
