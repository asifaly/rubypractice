def hello
  puts 'hello world'
end

def hello2(n)
  puts "hello #{n}"
end

def multiply(table, upto)
  (1..upto).each { |e| puts "#{table} x #{e} = #{table * e}"}
end

# function can be called with or without paranthesis
hello
hello2 'world'
hello2('world')
multiply 5,2
multiply(5,2)
