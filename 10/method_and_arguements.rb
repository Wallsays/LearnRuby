def hello_world family_name="", first_name=""
  puts "Hello world"
  unless family_name=="" && first_name==""
    puts "My name is " + first_name + family_name
  end
end

hello_world
hello_world "Snitkoo"
hello_world "Bond", "J"
