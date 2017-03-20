# interface.rb

# Pseudo-code
# 1. Print Welcome
# 2. Define your store (with a bunch of food items)
# 2. Get items from the user (shopping step)
# 3. Print the bill (cashier step)

store_items = {
  "milk" => 1.0,
  "bread" => 1.5,
  "eggs" => 1.2,
  "water" => 0.5
}

shopping_cart = Hash.new(0)
puts "Welcome to Rewe!"
puts "Todays available items"
store_items.each do |item, price|
  puts "#{item} - #{price}€"
end

new_item = ""
until new_item == "checkout"
  puts "what would you like to add to you chart? Enter checkout to exit"
  new_item = gets.chomp
  if store_items.key?(new_item)
    shopping_cart[new_item] +=1
  else
    puts "Sorry we dont have that in stock!" unless new_item == "checkout"
  end
  p shopping_cart
end

puts "Thanks for shopping!"

# shopping_cart.each {|item| puts item}

puts "You've chosen: #{shopping_cart}"

total_price = 0
shopping_cart.each do |item, quantity|
  puts "#{item} x #{quantity}"
  total_price += store_items[item] * quantity
end

# shopping_cart.each do |item|
#   total_price += store_items[item]
# end

puts "The total price is: #{total_price}0€"
