COLORS = {
  black: 0,
  brown: 1,
  red: 2,
  orange: 3,
  yellow: 4,
  green: 5,
  blue: 6,
  violet: 7,
  grey: 8,
  white: 9,
}

input_array = ["green", "brown", "orange"]

a = String.new

input_array.each do |col|
  a << COLORS[col.to_sym].to_s

end


print(a[0, 2])

print(COLORS[a.to_sym])
