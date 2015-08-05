#!/home/polycom/.rbenv/shims/ruby

=begin
Memory.all.each { |p| puts p.build }
=end

File.open("/home/polycom/project/lib/tasks/freememory.txt", "r").each do |line|
   if(line =~ /(\d+)\s+(\d\.\d\.\d\.\d+)\s+(\w+)\s+(\d+)/)
=begin
	puts $1 
        puts $2
        puts $3
        puts $4
=end
        a = $1 + '000'
        b = $2
        c = $3
        d = $4
        e = '541'

     m = Memory.new(:time => "#{a}", :build => "#{b}", :platform => "#{c}", :memory => "#{d}", :identifier => "#{e}" );
     if m.valid? 'true'
       m.save
       puts m
     else    
       puts "Invalid Object"
     end   
   end
end


