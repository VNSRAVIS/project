

require 'dbi'

begin
dbh = DBI.connect('DBI:SQLite3:development.sqlite3', 'ruby', 'ruby') do | dbh |
  dbh.do('CREATE TABLE slugs(name varchar(20), age int);') rescue puts "TABLE slugs already exists."

  sql = "INSERT INTO slugs (name, age) VALUES (?, ?)"

  dbh.prepare(sql) do |st|
    1.upto(20) do |i|
      st.execute("slug #{i}", "#{i}")
    end
  end

rescue DBI::DatabaseError => e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
     # disconnect from server
     dbh.disconnect if dbh
end