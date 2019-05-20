print 'Введите номер дня: '
day = gets.to_i

print 'Введите номер месяца: '
month = gets.to_i

print 'Введите номер года: '
year = gets.to_i

months = {
  1 => 31,
  2 => 28,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31
}

days = 0
months.each { |k, v| days += v if k < month }

if year%4.zero? && month > 2
  days_count = days + day + 1
else
  days_count = days + day
end

print "Порядковый номер даты в году: #{days_count}"
