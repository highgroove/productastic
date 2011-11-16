# Generates random product information.
class Forgery::Product < Forgery

  # Gets a random product out of the 'products' dictionary.
  #
  #   Forgery(:product).product
  #   # => "2 Kool Look womens' skirts"
  #
  #   Forgery(:product).product
  #   # => "A-Bee lamps"
  def self.product
    dictionaries[:products].random
  end

end