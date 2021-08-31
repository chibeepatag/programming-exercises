# @param {String} s
# @param {Integer} num_rows
# @return {String} answer - s converted to a zigzag pattern given the number of rows
def convert(s, num_rows)
  rows = initialize_rows(num_rows)
  final_pattern = pattern(s, num_rows)
  0.upto(s.length-1).each do |i|
      current_char = s[i]
      row = final_pattern[i]
      rows[row] << current_char
  end
  answer = ""
  rows.values.each do |array|
    array.each do |char|
      answer << char
    end
  end
  return answer
end
def initialize_rows(num_rows)
  rows = {}
    0.upto(num_rows - 1).each do |i|
    rows[i] = []
  end
  return rows
end
def pattern(s, num_rows)
  pattern_arr = []
  0.upto(num_rows - 1).each do |i|
    pattern_arr << i
  end
  (num_rows - 2).downto(1).each do |i|
    pattern_arr << i
  end
  cycle = pattern_arr.cycle
  final_pattern = []
  (1..s.length).each do |i|
    final_pattern << cycle.next
  end
  return final_pattern
end
convert("PAYPALISHIRING", 3)