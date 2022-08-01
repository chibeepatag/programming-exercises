class BinaryTree

  attr_reader :root, :size

  def initialize root
    @root = root
    @size = 0
  end

  def push_node(node, value)
    if(value > node.value)
      if(node.right)
        push_node(node.right, value)
      else
        node.right = Node.new(value)
      end
    else
      if(node.left)
        push_node(node.left, value)
      else
        node.left = Node.new(value)
      end
    end
  end

  def find_max(node = self.root)
    if node.nil?
      return nil
    elsif node.right.nil?
      return node
    else
      find_max(node.right)
    end 
  end

  def find_min(node = self.root)
    if node.nil?
      return nil
    elsif node.left.nil?
      return node.left
    else
      find_min node.left
    end
  end

  def contains?(value, node = self.root)
    if node == nil
      return false
    elsif value < node.value
      return contains?(value, node.left)
    elsif value > node.value
      return contains?(value, node.right)
    else
      return true
    end
  end

  def traverse node
    return if node.nil?
    if node.left
      traverse(node.left)
    end
    puts node.value
    if node.right
      traverse(node.right)
    end
  end
end