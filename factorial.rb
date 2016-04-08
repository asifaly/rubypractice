def factorial(m)
  if (m == 1)
    return 1
  else
    return m * factorial(m - 1)
  end
end

puts factorial 5
puts factorial(5)
