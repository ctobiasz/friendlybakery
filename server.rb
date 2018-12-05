require 'sinatra'
require '/class.rb'



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
  @oatraisin =
  Cookie.new("/images/chocolatechip.png", "Oatrasin", 4.25,
             "These be the finest chocolatechip cookies in all of the US and A", 10)
  erb :cookies
end

get "/cakes" do
  erb :cakes
end

get "/muffins" do
  erb :muffins
end
