#!/home/polycom/.rbenv/shims/ruby

    task :roles => :environment do
      Memory.all.each do |r|
        puts r.build 
      end
    end
