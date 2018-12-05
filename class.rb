DANKCOOKIES = []
DANKMUFFIN = []
DANKCAKE = []


class Cookie
  attr_accessor :image, :name, :price, :description, :quantity
  def initialize(image, name, price, description, quanity)
    @image = image
    @name = name
    @price = price
    @description = description
    DANKCOOKIES << self
 end
end

 class Muffin
   attr_accessor :image, :name, :price, :description, :quantity
   def initialize(image, name, price, description, quanity)
     @image = image
     @name = name
     @price = price
     @description = description
     DANKMUFFIN << self
 end
end

class Cake
  attr_accessor :image, :name, :price, :description, :quantity
  def initialize(image, name, price, description, quanity)
    @image = image
    @name = name
    @price = price
    @description = description
    DANKCAKE << self
 end
end
