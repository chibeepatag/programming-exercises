# Ruby Arrays
* collection of any object, can contain different objects
* negative index is relative to the end of the array

## Creating 
* ary = [1, "two", 3.0]
* ary = Array.new    #=> []
* Array.new(3)       #=> [nil, nil, nil]
* Array.new(3, true) #=> [true, true, true]             #populates the array with references to the same object.
* Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
* Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]

## Accessing Elements
    arr = [1, 2, 3, 4, 5, 6]  
    arr[2]    #=> 3   
    arr[100]  #=> nil   
    arr[-3]   #=> 4   
    arr[2, 3] #=> [3, 4, 5]       #first argument is index, next is size
    arr[1..4] #=> [2, 3, 4, 5]   
    arr[1..-3] #=> [2, 3, 4]       #cool!
    arr.at(0) #=> 1

* slice method works in an identical manner to #[].
* fetch - raise an error for indices outside the array bounds or else to provide a default value when that happens
* first 
* last
* take    arr.take(3)  return the first n elements
* drop    returning elements after n elements have been dropped

## Selecting Elements
* Non destructive
  * select
  * reject
  * drop_while
* Destructive
  * select!
  * reject!
  * delete_if
  * keep_if

## Information
* length
* count
* size
* empty?   - to check whether array contains any elemetns
* include? - to check whether a patricular item is included in the array

## Adding Items
* <<
* push
* unshift - add a new item to the beggining of the array
* insert  - add an element to an array at any position   
    arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
    arr.insert(3, 'orange', 'pear', 'grapefruit') #=> [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]

## Removing items
* pop - removes the last element of the array and returns that last element
* delete_at - remove an alement at a particular index
* delete - remove a n element anywhere in the array
* compact - removes nil values
* uniq - removes duplicates
* uniq! - removes duplicates, destructive

## Iterating 
* each -  all elements in the Array instance are yielded to the supplied block in sequence.
* reverse_each - iterate over the array in reverse order
* map - create a new array based on the original array but with values modified by the supplied block

## Transforming

## General

## Mathematical Operators