def look_for_triples array
  answer = []
  upper_limit = array.length - 2
  (1..upper_limit).each do |i|
    first_index = i - 1
    last_index = i + 1
    triple = array[first_index..last_index]
    puts "#{first_index} - #{last_index} : #{triple[0]} - #{triple[1]} - #{triple[2]}"
    if check_combinations_if_pythagorean_tripe? triple
      answer << 1
    else
      answer << 0
    end
  end
  puts answer
end

def check_combinations_if_pythagorean_tripe? triple
  answer = false
  triple.each do |item|
    copy = triple.dup
    copy.delete(item)
    if pythagorean_triple?(copy[0], copy[1], item)
      answer = true
      break
    end
  end
  return answer
end

def pythagorean_triple? a, b, c
  puts "#{a} - #{b} - #{c}"
  (a ** 2) + (b ** 2) == (c ** 2)
end
