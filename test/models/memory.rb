
require 'active_record'
ActiveRecord::Base.establish_connection adapter: 'mysql', database: 'development', username: 'csi',  password: 'polycom@123'

class Memory < ActiveRecord::Base

  validates_uniqueness_of :build, :scope => [:platform]
  # test "the truth" do
  #   assert true
  # end

     m = Memory.new(:time => "1435217382", :build => "5.4.1.02371", :platform => "VVX6001", :memory => "168056", :identifier => "541" )
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
