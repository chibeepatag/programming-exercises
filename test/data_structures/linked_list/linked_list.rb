require_relative '../../../data_structures/linked_list/linked_list.rb'

describe LinkedList do
  context "When testing the LinkedList class" do 
    it "should push new values by linking new nodes with the value to the last node" do
      list = LinkedList.new()
      (1..8).each do |v|
        list.push(v)
      end
      size = list.size
      expect(size).to eq 8      
    end

    it "should print the linked list" do 
      list = LinkedList.new()
      (1..8).each do |v|
        list.push(v)
      end
      list.print
    end

    it "should convert the linked list to an array" do 
      list = LinkedList.new()
      (1..8).each do |v|
        list.push(v)
      end
      array = list.to_a
      expect(array).to eq [1, 2, 3, 4, 5, 6, 7, 8]
    end

    it "should reverse the linked list" do 
      list = LinkedList.new()
      (1..8).each do |v|
        list.push(v)
      end
      array = list.reverse.to_a
      expect(array).to eq [8, 7, 6, 5, 4, 3, 2, 1]
    end

    it "should find the middle of the linked list" do
      list = LinkedList.new()
      (1..8).each do |v|
        list.push(v)
      end
      expect(list.find_middle.value).to eq 5

      list = LinkedList.new()
      (1..7).each do |v|
        list.push(v)
      end
      expect(list.find_middle.value).to eq 4
    end
  end
end