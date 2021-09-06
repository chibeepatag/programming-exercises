def fizzbuzz
  answer = []
  (1..100).each do |number|
    multiple_of_three = multiple_of_three? number
    multiple_of_five = multiple_of_five? number
    if multiple_of_three && multiple_of_five
      answer << "FizzBuzz"
    elsif multiple_of_three
      answer << "Fizz"
    elsif multiple_of_five
      answer <<  "Buzz"
    else
      answer << number
    end
  end
  answer
end

def multiple_of_three? number
  number % 3 == 0
end

def multiple_of_five? number
  number % 5 == 0
end

