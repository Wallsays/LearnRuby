def hello_world family_name="", first_name=""
  greeting = "Hello world\n"
  unless family_name=="" && first_name==""
    greeting += "My name is " + first_name + family_name
  end
  greeting
end

puts           hello_world "Snitko"
# send_via_email hello_world
# send_ove_http  hello_world
