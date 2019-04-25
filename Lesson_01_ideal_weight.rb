print 'Введите ваше имя: '
name = gets.chomp
name.capitalize!

print 'Введите ваш рост: '
heigth = gets.to_i

iweigth = heigth - 110

if iweigth > 0
  print "#{name}, ваш идеальный вес: #{iweigth}"

else
  print 'Ваш вес уже оптимальный'

end
