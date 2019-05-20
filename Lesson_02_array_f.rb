a = [0]
i = 1

while i <= 100 do
  a << i
  i = a[a.size - 1] + a[a.size - 2]
end
