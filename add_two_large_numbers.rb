# Singly-linked lists are already defined with this interface:
# class ListNode
#   attr_accessor :value, :next
#   def initialize(val)
#     @value = val
#     @next = nil
# end
#
def addTwoHugeNumbers(a, b)
    reverse_a = get_reverse_list(a)
    reverse_b = get_reverse_list(b)
    big_number_a = get_big_number_from_links(reverse_a)
    big_number_b = get_big_number_from_links(reverse_b)
    answer = big_number_a + big_number_b
    converted_answer = convert_to_list answer
    converted_answer
end

def get_big_number_from_links(a)
    i = 0
    big_number = 0
    while(a)
        big_number += a.value * 10 ** i
        i += 4
        a = a.next
    end
    big_number
end

def convert_to_list number
    node = nil
    if number == 0
        return ListNode.new(0)
    end
    while(number > 0) do
        remainder = number % 10000
        if remainder == 0
            remainder = 10000
            node = link(node, 0)
        else
            node = link(node, remainder)
        end
        number /= 10000
    end
    node
end

def link(node, value)
    if node.nil?
        new_node = ListNode.new(value)
    else
        new_node = ListNode.new(value)
        new_node.next = node
    end
    new_node
end

def get_reverse_list(l)
    next_ = nil
    current = l
    previous = nil
    while(current)
        next_ = current.next
        current.next = previous
        previous = current
        current = next_
    end
    l = previous
    l
end

def print_list list
    while(list) do 
        list = list.next
    end
end