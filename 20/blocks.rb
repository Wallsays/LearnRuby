# a = 10
# a.times {puts "Hello world"}

james_bond = {:first_name => "James", :middle_name => "Robert", :last_name => "Bond"}
james_bond.each_key { |key| puts james_bond[key] }

File.open("/tmp/blocks.txt", "w") { |f| f.puts "Hello world" }
