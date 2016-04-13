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
  start = (n % 100 != 0 && n % 4 == 0) || (n % 100 == 0 && n % 400 == 0) ? n : n + (4 - (n % 4))
  (0...100).step(4).each do |e|
    year = start + e
    if year % 100 != 0
      puts year
    elsif year % 400 == 0
      puts year
    end
  end
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
    thoudigit = (digit / 1000).floorx
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

# - Using the above function to find n!, write a function that
# takes two numbers, n & r as input and returns nCr.
# Note: nCr = n!/(((n-r)!)*(r!))
# =>  Input:  10, 5
#     Output: 252
#     Input: 21, 7
#     Output: 116280
def ncr(n, r)
  factorial = lambda do |e|
    e == 1 ? (return 1) : (return e * factorial.call(e - 1))
  end
  puts factorial.call(n) / (factorial.call(n - r) * factorial.call(r))
end


# - Given the square grid below and a number k (0 < k <= n),
# find the sum of numbers whose, x or y coordinate is equal to k.
# Explanation: It is the sum of 13, 18, 23, 28 and 33 from column 3,
#  with that of
# =>  Input: "11 12 13 14 15\n16 17 18 19 20\n21 22 23 24 25\n26 27 28 29 30\n
# 31 32 33 34 35"
#     k = 3
#     Output: 207
# 21, 22, 24, 25 from row 3.
# Note: 23 not counted while counting along the rows since it was already
# counted
# in the columns.

def gridtotal(grid, k)
  colsum = 0
  grid = grid.split("\n").map { |e| e.split(' ').map { |f| f.to_i } }
  rowtotal = grid[k - 1].reduce { |sum, num| sum + num }
  (0...grid.length).each { |n| colsum += grid[n][k - 1] unless n == k - 1 }
  puts colsum + rowtotal
end

# - Given the string pyramid below, find its sum.
# =>  Input: "1\n1 1\n1 2 1\n1 3 3 1\n1 4 6 4 1\n1 5 10 10 5 1\n1 6 15 20 15 6 1"
#     Output: 127

def pyramid(grid)
  puts grid.split("\n").map { |e| e.split(' ').map { |f| f.to_i } }.flatten.reduce { | sum, num | sum + num }
end

# pyramid("1\n1 1\n1 2 1\n1 3 3 1\n1 4 6 4 1\n1 5 10 10 5 1\n1 6 15 20 15 6 1")

# - Given a string that contains data about the calls you made last month
#  and the time you spoke in each call, return the telephone number
#  of the person you spoke to the longest.
# =>  Input: "9876543210 01:25:50,9836479923 01:30:45,8945671230 01:15:00,9876543210 00:07:30,8975638902 00:50:32"
#     Output: "9876543210"

def longest_call(call_log)
  call_obj = call_log.split(",").map { |e| e.split(" ") }.to_h
  call_obj.update(call_obj) do | key, value |
    timearr = value.split(':').map { |n| n.to_i }
    value = timearr[0]*60*60 + timearr[1]*60 + timearr[2]
  end
  call_obj.max_by{|k,v| v}[0]
end


# - Find all pairs in array of integers whose sum is equal to given number?
# =>Input: sum = 8
#   [1, 4, 3, 5, 4, 6, 7, 8, 3]
#   Output:
#   "1, 7"
#   "4, 4"
#   "3, 5"
#   "5, 3"

def find_pairs(arr, sum)
  arr.combination(2).find_all { |x, y| x + y == sum }
end

# - Write a guessing game where the user has to guess a secret number
# with a range of 1 to 100. After every guess, the program tells the user
#  whether their number was too large or too small. At the end, the number
#   of tries should be printed. If they input the same number multiple times
#    consecutively,count it as one try."

def guessgame
  prev_guess = 0
  comp_guess = ((rand * 100) + 1).floor
  attempts = 10
  while attempts >= 1
    print "Guess the number : "
    user_guess = gets.chomp.to_i
    if user_guess != prev_guess
      if user_guess > comp_guess
        puts 'Guess was higher'
      elsif user_guess < comp_guess
        puts "Guess was lower"
      else
        puts "You are correct, the answer is #{comp_guess} indeed!"
        break
      end
      attempts -= 1
      prev_guess = user_guess
    else
      puts "Guess was same as last attempt, try a different number"
    end
    puts "You have #{attempts} attempts left"
  end
end
