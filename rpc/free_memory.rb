require 'active_record'
ActiveRecord::Base.establish_connection adapter: 'mysql', database: 'development', username: 'csi',  password: 'polycom@123'

class FreeMem
   class Memory < ActiveRecord::Base
          validates_uniqueness_of :build, :scope => [:platform]
   end
   def initialize(a1,b1,c1,d1,e1)
    @a= a1
    @b= b1
    @c= c1
    @d= d1
    @e= e1
   end
   def fm_analysis()
    puts @a
    m = Memory.new(:time => "#@a", :build => "#@b", :platform => "#@c", :memory => "#@d", :identifier => "#@e" )
    open('memory.txt', 'a') { |f|
     if m.valid?
      if m.save
        f.puts "Success - " + m.inspect
      else
        f.puts "Failed to Save - " + m.inspect
      end
     else
       f.print "Validation Failed: - "
       f.puts m.errors.full_messages
       f.puts "Validation Failed: - " +  m.inspect
     end
     }

   end
end