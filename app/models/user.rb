class User < ActiveRecord::Base
   attr_accessible :age, :username, :phone
   validates :age, numericality: { only_integer: true }
   validates :phone, numericality: { only_integer: true }


   def sample
   	puts "hi" 
   	var1 = "test"
   	var2 = "test 2"
   	var3 = sample2
   	puts var3
   end

   def sample2
   	"sample 2 text"
   end

   def self.sample
   	puts "I am a class method"
   end

end
