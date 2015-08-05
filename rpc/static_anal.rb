require 'active_record'
ActiveRecord::Base.establish_connection adapter: 'mysql', database: 'development', username: 'csi',  password: 'polycom@123'

class StaticAna
   class StaticAnalysis < ActiveRecord::Base
          validates_uniqueness_of :build, :scope => [:platform]
   end
   def initialize(a1,b1,c1,d1,e1,f1,g1,h1,i1)
    @a= a1
    @b= b1
    @c= c1
    @d= d1
    @e= e1
    @f= f1
    @g= g1
    @h= h1
    @i= i1
   end
   def kl_analysis()
     puts @a
     m = StaticAnalysis.new(:total => "#@a", :critical => "#@b", :error => "#@c", :warning => "#@d", :time => "#@e", :svnversion => "#@f", :build => "#@g", :identifier => "#@h", :platform => "#@i" )
     open('staticout.txt', 'a') { |f|
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
