class Pokemon
  
 attr_accessor :id, :name, :type, :db
  @@all = []
  
 def initialize(keys)
  values = []
  keys.each do |k, v|
  values << v 
  end
   self.save(values[0], values[1], values[2], values[3])
  binding.pry
 end
 
 def self.save(id, name, type, db)
   db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)", id, name, type);
 end
 
end
