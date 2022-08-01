require_relative '../pythagorean_triple.rb'

def test()
  array = [3, 4, 5, 12, 13, 7, 24, 25, 8, 15, 17, 9, 40, 41, 11, 60, 61, 12, 35, 37, 13, 84, 85, 15, 112, 113, 16, 63, 65, 17, 144, 145, 19, 180, 181, 20, 21, 29, 20, 99, 101, 21, 220, 221]
  puts  look_for_triples(array)
end

test()