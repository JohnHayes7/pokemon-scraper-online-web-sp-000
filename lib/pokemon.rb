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
  insert = db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)", id, name, type);
 end
 
end
