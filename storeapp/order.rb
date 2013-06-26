class Order

  attr_reader :items

  include ItemContainer

  def initialize
    @items = [] # equals Array.new
    # ...
  end

  def place
  	thr = Thread.new do
	  Pony.mail({:to => StoreApplication::Admin.email,
	   :from => "My Store <jason.binwood@gmail.com>",
	   :via => :smtp, :via_options => {
	     :address        => 'smtp.gmail.com',
	     :port           => '587',
	     :user_name      => 'jason.binwood@gmail.com',
	     :password       => '6bh5snql83d8',
	     :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
	     :domain         => "mail.google.com" # the HELO domain provided by the client to the server
	   },
	   subject: "New order has been placed", 
	   body: "Please check back you admin page to see it!"
	  })
	end
	while(thr.alive?)
	  puts "."
	  sleep(1)
	end
  end

end

