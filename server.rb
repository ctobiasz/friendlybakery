require 'sinatra'
require './class.rb'



get "/" do
  erb :home
end

get "/aboutus" do
  erb :aboutus
end

get "/contact" do
  erb :contact
end

get "/cookies" do
  @chocolatechip =
  Cookie.new("/images/chocolatechip.png", "Chocolate Chip Cookies", 2.99,
             "These be the finest chocolatechip cookies in all of the US and A", 10)
  @chocolatemint =
  Cookie.new("/images/chocolatemint.png", "Chocolate Mint Cookies", 3.85,
             "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)
  @oatmealcran =
  Cookie.new("/images/oatmealcran.png", "Oatmeal Cranberry", 4.25,
             "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)
  @chriskushcookie =
  Cookie.new("/images/chriskush.jpg", "Chris Kush Cookies", 3.50,
             "Do you need to feel smart? Need guidance or a possibly a guide in the right direction? Eat this.", 10)
  @gingerbread =
  Cookie.new("/images/gingerbread.png", "Gingerbread cookies", 12.00,
             "Eat the legs first or they'll run away. Other than that it's sweet and absolutely delicous.", 10)
  @sugarcookie =
  Cookie.new("/images/sugarcookie.png", "Sugar Cookies", 2.65,
             "Super sweet cookies. Diabetes in every bite. Make sure to visit the dentist shortly after. **we are not responsable for cavities**", 10)
  erb :cookies
end

get "/cakes" do
  @chocolatechip =
  Cookie.new("/images/chocolatechip.png", "Chocolate Chip Cookies", 2.99,
             "These be the finest chocolatechip cookies in all of the US and A", 10)
  @chocolatemint =
  Cookie.new("/images/chocolatemint.png", "Chocolate Mint Cookies", 3.85,
             "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)
  @oatmealcran =
  Cookie.new("/images/oatmealcran.png", "Oatmeal Cranberry", 4.25,
             "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)

  erb :cakes
end

get "/muffins" do
  @chocolatechip =
  Cookie.new("/images/chocolatechip.png", "Chocolate Chip Cookies", 2.99,
    "These be the finest chocolatechip cookies in all of the US and A", 10)
    @chocolatemint =
    Cookie.new("/images/chocolatemint.png", "Chocolate Mint Cookies", 3.85,
      "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)
      @oatmealcran =
      Cookie.new("/images/oatmealcran.png", "Oatmeal Cranberry", 4.25,
        "The best oatmeal cranberry cookies on the market. Does anyone really eat these though?", 10)
  erb :muffins
end
