print 'Введите коффициент квадратного уравнения. a = '
a = gets.to_f

print 'Введите коффициент квадратного уравнения. b = '
b = gets.to_f

print 'Введите коффициент квадратного уравнения. c = '
c = gets.to_f

d =  b**2 - 4*a*c

if d > 0
  x1 = (-b + Math.sqrt(d)) / 2*a
  x2 = (-b - Math.sqrt(d)) / 2*a
  print 'Дискриминант = #{d}, корень x1 = #{x1}, корень x2 = #{x2}'
elsif  d.zero
  x = -b / 2*a
  print 'Дискриминант = #{d}, корень уравнения = #{x}'
else
  print 'Корней нет'
end
