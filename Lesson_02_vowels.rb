alf = ('a'..'z').to_a
vow = ['a', 'e', 'i', 'o', 'u', 'y']
hs = Hash.new
i = 1

alf.each do |l|
  if vow.include?(l)
      hs[l] = i
end
  i += 1
end
