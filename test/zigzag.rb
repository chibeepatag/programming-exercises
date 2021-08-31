require_relative '../zigzag.rb'

def test(answer, s, rows)
  result = convert(s, rows)
  if result == answer
    puts "Accepted: #{result}"
  else
    puts "Expected: #{answer}, Result #{result}"
  end
end

test("PAHNAPLSIIGYIR", "PAYPALISHIRING", 3)
test("PINALSIGYAHRPI", "PAYPALISHIRING", 4)