# 1 Write a program that prints ‘Hello World’ to the screen.
def hello
  puts 'hello world'
end

# 2 Write a program that asks the user for her name and
# greets her with her name.

def greet
  print 'Enter your name : '
  name = gets.to_s.chomp
  puts "Hello #{name}"
end

# 3 Modify the previous program such that only the users
# Alice and Bob are greeted with their names.

def greet1
  print 'Enter your name : '
  name = gets.to_s.chomp
  if name == 'Alice' || name == 'Bob'
    puts 'Hello #{name}'
  else
    puts 'Hello'
  end
end

# 4
# Write a function that takes a number n as argument
# and prints the sum of the numbers 1 to n
# Eg: sum(20)
# --> 210

def sumn(n)
  result = 0
  1.upto(n) { |e| result += e }
  puts "Sum of #{n} numbers is #{result}"
end

def sumn1(n)
  puts "sum of #{n} numbers is #{(n * (n + 1)) / 2}"
end

# 5
# - Modify the function such that only multiples of three or five, but not
# both are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 18 for n=19
# Eg: special_sun(19)
# --> 63
#
#  && !(e % 3 == 0 && e % 5 == 0)

# using xor operator ^ which means only of the value has to be true for
# the statment to be true

def sumn2(n)
  result = 0
  1.upto(n) { |e| result += e if (e % 3 == 0) ^ (e % 5 == 0) }
  puts result
end

# 6 Multiplication table
def multiply(table, till = 12)
  (1..till).each { |e| puts "#{table} x #{e} = #{table * e}" }
end

# 7 print next 100 leap years

def leapyear(n)

end

# 8
# - Write function that translates a text to Pig Latin and back. English is
# translated to Pig Latin by taking the first letter of every word, moving
# it to the end of the word and adding ‘ay’.
# => “The quick brown fox” becomes “Hetay uickqay rownbay oxfay”.

def piglatin(words)
  puts words.split.map { |e| e.split('').rotate.join + 'ay' }.join(' ')
end

#- Given a string find the number of occurrences of
# the alphabet 'i' in the string.
# => Input: "It is the imperfections that make things beautiful."; Output: 6

def findi(words)
  puts words.scan(/i/i).count
end

# - Given the array below, find the minimum number in
# the array, and its index.
# => Input: [1, 2, 45, -7, 24, 6, 5, -12, 14]; Output: "-12, 7"
# Note: Use string concat to print the number and index on a single line.

def findmin(nums)
  puts "#{nums.min}, #{nums.find_index(nums.min)}"
end

# - Given a sentence, reverse all words of the sentence.
#  Try to do it using minimum lines of code, using high level string methods
#  provided by language.
#  Eg: reverse_words(“This is a cat”)
#  Expected_output: "sihT si a tac"

def reverse_words(words)
  words = words.split.each { |e| e.reverse! }
  puts words.join(" ")
end

# - Given a number n, print all numbers upto n that
# are divisible by 2 but not by 6.
# => For 100, the output would be 2, 4, 8 ........ 98, 100.

def divby2not6(n)
  1.upto(n) { |e| puts e if (e % 2 == 0) && !(e % 6 == 0) }
end

# - Write a function that takes 2 numbers, a and b as
# arguments and prints all the numbers less than 1000
# that are multiples of a, but not of b.

def divbyanotb(a, b)
  (1..1000).each { |e| puts e if (e % a == 0) && !(e % b == 0) }
end

# - Given a user input number n, print the sum of numbers
#  which less than n that are either divisible by 3 or 5.
# => Input: n = 26; Output: 168

def sumdivby3or5(n)
  result = 0
  1.upto(n) { |e| result += e if (e % 3 == 0) || (e % 5 == 0) }
  puts result
end

# - Given an array print all the numbers that are repeating in it.
# =>  Input: [1, 2, 3, 5, 8, 4, 7, 9, 1, 4, 12, 5, 6, 5, 2, 1, 0, 8, 1]
#     Output:  1,2,5,8,4

def dupitems(arr)
  puts arr.reject { |e| arr.rindex(e) == arr.index(e) }.uniq
end

# - Given an object, containing names as keys and
# amount_paid by each of them as
# values, write a function that takes such an object
# as input and calculates the total sum paid by them together.
# =>  Input: {"Rick": 85, "Amit": 42, "George": 53, "Tanya": 60, "Linda": 35}
#     Output: 275

def sumobj(obj)
  result = 0
  obj.each { |p, v| result += v }
  puts result
end

# factorial
def factorial(m)
  if m == 1
    return 1
  else
    return m * factorial(m - 1)
  end
end

# factorial no recursion
def factorialnorecur(n)
  result = n
  while n > 1
    result *= (n - 1)
    n -= 1
  end
  puts result
end

#  Given a number(n) print out a triangle with "#" n times
#  in the first line, n-1 times in the second line, n-2 times
#  in the third line and so on.
# =>  Input: n = 7
#     Output:
#     "#######"
#     "######"
#     "#####"
#     "####"
#     "###"
#     "##"
#     "#"

def printhash(n)
  n.downto(1) { |e| puts "#{'#' * e}" }
end

# - Write a function to check whether a given string is a palindrome or not.
#   Note: The method only returns a boolean.
# =>  Input: "Mom"
#     Output: true
#     Input: "sister"
#     Output: false

def checkpalin(str)
  puts str.downcase == str.downcase.reverse
end

# - Write a function that takes an array of words and
# returns an array containing only of palindromes.
# Note: Call the above function to check if a word is a palindrome.
# =>  Input: ["Malayalam", "tree", "boat", "civic", "melt", "level"]
#     Output: ["Malayalam", "civic", "level"]

def checkpalinarr(strarr)
  strarr.select { |e| e if e.downcase == e.downcase.reverse }
end

# - Given an array of integers, calculate which fraction
#  of the elements are positive, negative, and zeroes,
#   respectively. Print the decimal value of each fraction.
# => Input: [1, 4, -3, 0, 7, -5, 0, -6]
#    Output:
#     "0.375"
#     "0.375"
#     "0.25"

def counting(arr)
  result = { positive: 0, negative: 0, zero: 0 }
  arr.each do |e|
    if e > 0
      result[:positive] += 1
    elsif e < 0
      result[:negative] += 1
    else
      result[:zero] += 1
    end
  end
  result.each { |p, v| puts "#{p} : #{v.to_f / arr.count}" }
end

# - Given a string, write a function to return an
# object that states how many times
# each letter is present.
# =>  Input: "Lorem Ipsum dolor Sit amet Consectetur adipisicing Elit"
#     Output:{"l": 3, "o": 4, "r": 3, .......}

def countletter(sentence)
  result = {}
  sentence.downcase.each_char do |e|
    if result[e]
      result[e] += 1
    else
      result[e] = 1
    end
  end
  puts result
end

# - Given a non-negative int n, return the sum of
# its digits recursively (no loops).
# Note: modulus (%) by 10 yields the rightmost digit
# (126 % 10 is 6), while divide (/) by 10 removes the
#  rightmost digit (Math.floor(126/10) is 12).
# =>  Input: 123
#     Output:6
#     Input: 456
#     Output: 15

def numsum(n)
  result = 0
  while n >= 1
    digit = (n % 10).floor
    result += digit
    (n /= 10).floor
  end
  puts result
end

# - Write a function that takes a number as input and
#  prints the number in words. (Assume that the input
#   is in the range 1 to 999,999,999; both inclusive)
# => print_number(235)

def printword(digit)
  ones = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  tenones = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
  if digit < 10
    return ones[digit]
  elsif digit < 20
    onesplace = digit % 10
    return tenones[onesplace]
  elsif digit < 100
    tensdigit = (digit / 10).floor
    onesdigit = digit % 10
    return "#{tens[tensdigit - 2]} #{ones[onesdigit]}"
  elsif digit < 1_000
    hunddigit = (digit / 100).floor
    hundremainder = digit % 100
    return "#{printword(hunddigit)} hundred #{printword(hundremainder)}"
  elsif digit < 1_000_000
    thoudigit = (digit / 1000).floor
    thouremainder = digit % 1000
    return "#{printword(thoudigit)} thousand #{printword(thouremainder)}"
  elsif digit < 1_000_000_000
    milldigit = (digit / 1_000_000).floor
    millremainder = digit % 1_000_000
    return "#{printword(milldigit)} million #{printword(millremainder)}"
  elsif digit < 1_000_000_000_000
    billdigit = (digit / 1_000_000_000).floor
    billremainder = digit % 1_000_000
    return "#{printword(billdigit)} billion #{printword(billremainder)}"
  end
end

# Given a positive integer n, write a function to check
#  whether the number is prime or not.
# =>  Input: 78
#     Output: "False"
#     Input: 37
#     Output: "True"

def isprime(n)
  if n == 1
    return false
  elsif n == 2
    return true
  else
    (2..Math.sqrt(n).ceil).each { |e| n % e == 0 ? (return false) : next }
    return true
  end
end

# Given three positive integers, write a function
# to check whether these three numbers
# can be used to form a triangle or not.
# =>  Input: 3, 4, 5
#     Output: "True"
#     Input: 1, 1, 2
#     Output: "False"

def checktriangle(a, b, c)
  if a + b <= c
    return false
  elsif b + c <= a
    return false
  elsif c + a <= b
    return false
  else
    return true
  end
end
