  require 'sinatra'
  require './class.rb'
  require './send.rb'

  def email(recipient)
  Newsletter.welcome(recipient).deliver_now
  end

  get "/" do
    erb :home
  end

  post "/" do
    recipient = params['email']
    email(recipient)
    erb :home
  end

  get "/aboutus" do
    erb :aboutus
  end

  post "/aboutus" do
    recipient = params['email']
    email(recipient)
    erb :aboutus
  end

  get "/contact" do
    erb :contact
  end

  post "/contact" do
    recipient = params['email']
    email(recipient)
    erb :contact
  end

  get "/findus" do
    erb :findus

  end

  post "/findus" do
    recipient = params['email']
    email(recipient)
    erb :findus
  end

  get "/cookies" do
    @chocolatechip =
    Cookie.new("/images/chocolatechip.png", "Chocolate Chip Cookies", "$2.99",
               "These be the finest chocolate chip cookies in all of the US and A", 10)
    @chocolatemint =
    Cookie.new("/images/chocolatemint.png", "Chocolate Mint Cookies", "$3.85",
               "Chocolately goodness and a nice kick of mint. Mint is just cold spicy.", 10)
    @oatmealcran =
    Cookie.new("/images/oatmealcran.png", "Oatmeal Cranberry", "$4.25",
               "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)
    @chriskushcookie =
    Cookie.new("/images/chriskush.jpg", "Chris Kush Cookies", "$3.50",
               "Do you need to feel smart? Need guidance or a possibly a guide in the right direction? Eat this.", 10)
    @gingerbread =
    Cookie.new("/images/gingerbread.png", "Gingerbread cookies", "$12.00",
               "Eat the legs first or they'll run away. Other than that it's sweet and absolutely delicous.", 10)
    @sugarcookie =
    Cookie.new("/images/sugarcookie.png", "Sugar Cookies", "$2.65",
               "Super sweet cookies. Diabetes in every bite. Make sure to visit the dentist shortly after. **we are not responsable for cavities**", 10)
    erb :cookies
  end

  get "/cakes" do
    @chocolatecake =
     Cake.new("/images/ccake.png", "Chocolate Cake", "$2.99",
              "The creamy chocolate frosting and the chocolately goodness on the inside is going to make you wish you had more room in your stomache", 10)
    @oreo =
    Cake.new("/images/oreocake.png", "Oreo Cake", "$3.85",
             "You ever had oreos? Yeah they're good. You had oreo cake? No? Get read to ascend to heaven.", 10)
    @redvelvet =
    Cake.new("/images/redvelvet.jpeg", "Red Velvet Cake", "$4.25",
             "You ever watched Game of Thrones? The red wedding featured this very cake. Super delicious and leaves you happy.", 10)
    erb :cakes
  end

  get "/muffins" do
    @banananut =
    Muffin.new("/images/bbmuff.png", "Banana Nut Muffin", "$5.59",
             "Crunchy munchy and god dang yummy. Yall better try this tasty treat!", 5)
    @blueberry =
    Muffin.new("/images/bbermuff.png", "Blue-Berry Muffin", "$3.49",
             "What's the smell? That's right, it's our special blue berry muffins. Made fresh everyday using berries from our house bush.", 8)
    @pistachio =
    Muffin.new("/images/pmuff.png", "Pistachio Muffin", "$10",
               "So green and good looking, even the hulk would get jealous. That's right, I did just go there.", 10)

    erb :muffins
  end
