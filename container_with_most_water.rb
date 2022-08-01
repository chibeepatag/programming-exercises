#Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). 
#n vertical lines are drawn such that the two endpoints of the line i is at (i, ai) and (i, 0). 
#Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.
#Notice that you may not slant the container.
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    
end

def get_pairs(heights)
  pairs = []
  heights.each_with_index do |h1, i|
    point1 = [i + 1, h1]
    ((i+1)..(heights.size-1)).each do |i2|
      point2 = [i2, heights[i2]]
      pairs << [point1, point2]
    end
  end
  return pairs
end
