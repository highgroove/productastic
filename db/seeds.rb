# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

print "Creating 1,000 products"
1000.times do
  Product.create(
    name:         Forgery(:product).product,
    description:  Forgery(:lorem_ipsum).sentences
  )
  print "."
end
Sunspot.commit
puts " done!\n\n"
