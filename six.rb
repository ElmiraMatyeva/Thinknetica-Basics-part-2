cart = {}
sum = 0
total = 0

loop do
	
	puts "To finish shopping, enter \'stop\'"

  print "Enter product name: "
  product_title = gets.chomp
  	break if product_title == "stop"

  	if cart.include?(product_title)
  	puts "#{product_title} is already in the cart, at the price #{cart[product_title[price]]}. Would you like to update its quantity? yes/no"
  	update = gets.chomp
  	 
  	if update == "yes"
  	 	print "Enter new quantity of #{product_title}: "
  		cart[product_title[quantity]] = update.to_f
  	else
	  	puts "OK. There is/are #{quantity} #{product_title} in the cart."
  	end
  end
    

  print "(Only integers, please) Enter price of #{product_title}: "
  
  price = gets.chomp.to_f
  	
  	while price <= 0.00 do
  		print "Price must be greater than 0. Enter price of #{product_title}: "
  		price = gets.chomp.to_f
		end
  
  print "(Only integers please) Enter quantity of #{product_title}: "
  quantity = gets.chomp.to_f

  	while quantity <= 0.00 do
  		print "Price must be greater than 0. Enter quantity of #{product_title}: "
  		quantity = gets.chomp.to_f
		end

  sum = price.to_f * quantity.to_f
  cart[product_title] = {price: price, quantity: quantity}
  total += sum

end

puts 
	
puts "SHOPPING LIST"
cart.each do |key, value|
	sum = value[:price].to_f * value[:quantity].to_f
  puts "#{key.rjust(cart.keys.max_by(&:length).length)} #{value} -> #{sum}"
  

end
puts "--------------"
puts "TOTAL = #{total}"

