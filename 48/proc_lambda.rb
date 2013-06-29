# same
x = Proc.new { puts "hello world" }
y = proc { puts "hello world" }

x.call
y.call

# ==============================

x = proc { |greeting| puts greeting }
x.call # OK
x.call "hi bro"

puts "----"
# ==============================

y = lambda{|greeting| puts greeting }
# y.call #  wrong number of arguments (0 for 1) (ArgumentError)
y.call "hi bro"

# ==============================

y = lambda {return "hello mad world" }
y.call
x = proc {return "hello mad world" } 
# x.call # unexpected return (LocalJumpError)
