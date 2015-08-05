require "xmlrpc/server"
require 'active_record'
require "/home/polycom/free_memory.rb"
require "/home/polycom/static_anal.rb"

s = XMLRPC::Server.new(port=8080,host="10.250.124.142")
s.add_handler("polycom.analysis") do |a,b,c,d,e,f,g,h,i|
  sa=StaticAna.new(a,b,c,d,e,f,g,h,i)
  sa.kl_analysis() 
  a+b
end

s.add_handler("polycom.memory") do |a,b,c,d,e|
  sa=FreeMem.new(a,b,c,d,e)
  sa.fm_analysis() 
  a+b
end

s.add_handler("michael.add") do |a,b|
  a + b
end

s.add_handler("michael.div") do |a,b|
  if b == 0
    raise XMLRPC::FaultException.new(1, "division by zero")
  else
    a / b
  end
end


s.set_default_handler do |name, *args|
  raise XMLRPC::FaultException.new(-99, "Method #{name} missing" +
                                   " or wrong number of parameters!")
end

s.serve
