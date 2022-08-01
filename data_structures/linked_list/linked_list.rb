class Node
  attr_accessor :value, :next
  
  def initialize value
    @value = value
    @next = nil
  end
end


class LinkedList
  attr_accessor :root, :tail, :size

  def initialize
    @size = 0
  end

  def push value
    if @root.nil?
      @root = Node.new(value)
      @tail = root
    else
      new_tail = Node.new(value)
      @tail.next = new_tail
      @tail = new_tail
    end
    @size += 1
  end

  def print
    current = @root
    while(current)
      puts current.value
      current = current.next
    end
  end

  def to_a
    current = @root
    array = []
    while(!current.nil?)
      array << current.value
      current = current.next
    end
    array
  end

  def reverse
    current = @root
    previous = nil
    next_ = nil
    while current
      next_ = current.next
      current.next = previous
      previous = current
      current = next_
    end
    @root = previous
    self
  end

  def find_middle
    mid = (@size.to_f / 2.0).ceil
    current = @root
    (1..mid).each do
      current = current.next
    end
    current
  end
end