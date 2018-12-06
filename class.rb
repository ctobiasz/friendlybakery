DANKCOOKIES = []
DANKMUFFINS = []
DANKCAKES = []


class Cookie
  attr_accessor :image, :name, :price, :description, :quantity
  def initialize(image, name, price, description, quanity)
    @image = image
    @name = name
    @price = price
    @description = description
    @quantity = quanity
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
     @quantity = quanity
     DANKMUFFINS << self
 end
end

class Cake
  attr_accessor :image, :name, :price, :description, :quantity
  def initialize(image, name, price, description, quanity)
    @image = image
    @name = name
    @price = price
    @description = description
    @quantity = quanity
    DANKCAKES << self
 end
end
