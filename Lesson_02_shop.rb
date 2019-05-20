cart = {}
sum = 0

loop do
  print 'Введите название товара или "стоп" для завершения списка: '
  name = gets.chomp
  return if name.downcase == "стоп"
  print "Введите цену товара: "
  price = gets.chomp.to_f
  print "Введите количество товара: "
  count = gets.chomp.to_f

  cart[name] = {"price" => price, "count" => count}
end

cart.each {|name, hash| sum += hash["price"] * hash["count"]}

puts cart
puts "Итого: #{sum}"
