## manish's approach

(from gfg)
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

    - it used to stuck at single element traversals such as [1]
     > solved it using an extra base case for single element traversal ( return a node containing 1)

    
    - did not worked for traversals with only left branch because there is no next max

     > solved it using if condition that when no nextmax is found but the lenght of traversal > 0 :
     then left tree is whole preorder
     and right tree wiil be from empty list [ ]


## Rohit's approach

- Used an upper bound(int_max)
- start traversing the vector from i=0
- made a function named buildTree(vector, i, bound) wit return value as a tree
- inside the function check if i is equal to the size of vector(vector is traversed completely) or vector[i] > bound if true return null
- make a new pointer (say root) for the tree
- for the left, call the buildTree function with bound as the root value
- for the right, call the buildTree function with bound as bound
- after that return root

  
