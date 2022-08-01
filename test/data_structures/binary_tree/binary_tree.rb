require_relative '../../../data_structures/binary_tree/node.rb'
require_relative '../../../data_structures/binary_tree/binary_tree.rb'


arr = [5,6,2,4,1,8,7,9,3];
root = Node.new(arr.shift)
binary_tree = BinaryTree.new(root)
arr.each do |e|
  binary_tree.push_node(root, e)
end
binary_tree.traverse(root)