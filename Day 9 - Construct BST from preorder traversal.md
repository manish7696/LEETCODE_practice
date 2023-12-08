## manish's approach

- make 1st element in list to the root element
- find the next max after 0th element
- example: [8,5,1,7,10,12]  after 8, the nextmax will be 10.
  so left tree will made from [5, 1, 7]
  and the right tree will be made from [10, 12]
- do it recusively

  ```
  problems faced
  ```
  - infinite loop
    it used to stuck at single element traversals such as [1]
    solved it using an extra base case for single element traversal ( return a node containing 1)
  - did not worked for traversals with only left branch because there is no next max
     solved it using if condition that when no nextmax is found but the lenght of traversal > 0 :
     then left tree is whole preorder
     and right tree wiil be from empty list []

  
