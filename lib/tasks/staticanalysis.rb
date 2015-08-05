#!/home/polycom/.rbenv/shims/ruby

=begin
Memory.all.each { |p| puts p.build }
=end

File.open("/home/polycom/project/lib/tasks/static.txt", "r").each do |line|
=begin
   if(line =~ /(\d+)\s+(\d\.\d\.\d\.\d+)\s+(\w+)\s+(\d+)/)
=end
  puts line
  if(line =~ /([0-9]+)\s+([0-9]+)\s+([0-9]+)\s+([0-9]+)\s+([0-9]+)\s+([0-9]+)\s+(\d\.\d\.\d\.\d+\s[a-z]+[0-9]+)\s+([\d|\.]+)/)

	puts $1 
        puts $2
        puts $3
        puts $4
        puts $5
        puts $6
        puts $7
        puts $8
        
       a = $1
       b = $2
       c = $3
       d = $4
       e = $5 + '000'
       f = $6
       g = $7
       h = $8
       i = 'VVX500'

       m = StaticAnalysis.new(:total => "#{a}", :critical => "#{b}", :error => "#{c}", :warning => "#{d}", :time => "#{e}", :svnversion => "#{f}", :build => "#{g}", :identifier => "#{h}", :platform => "#{i}" );
     
     if m.valid? 'true'
       m.save
       puts m
     else    
       puts "Invalid Object"
     end   
   end
end

