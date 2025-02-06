n1 = "III" # 3

n2 = "LVIII" # 58

n3 = "MCMXCIV" # 1994



def roman_to_int(rn)
  array = rn.split('')
  i = "I"
  i_value = 0
  v = "V"
  v_value = 0
  x = "X"
  x_value = 0
  l = "L"
  l_value = 0
  c = "C"
  c_value = 0
  d = "D"
  d_value = 0
  m = "M"
  m_value = 0

  array.each do |letter|
    if letter == i
      i_value += 1
    elsif letter == v
      v_value += 5
    elsif letter == x
      x_value += 10
    elsif letter == l
      l_value += 50
    elsif letter == c
      c_value += 100
    elsif letter == d
      d_value += 500
    elsif letter == m
      m_value += 1000
    end
  end
  total = i_value + v_value + x_value + l_value + c_value + d_value + m_value
end

# puts roman_to_int(n1)
puts "-----------------------------"
puts roman_to_int(n2)
puts "-----------------------------"
# puts roman_to_int(n3)