## Rohit's Approach

- Created a vector to store the traversal result
- Then created a new function and passed it the root and passed the vector as a pointer
- Then traversed each node using recursion and stored the value in the vector
- Then simply returned the vector


## Manish's Approach

-- create a function inside the given function and call it recursively two times
-- then this will traverse the tree like this
![euler_tour](https://github.com/manish7696/LEETCODE_practice/assets/78486326/ac5a4f66-5706-46b5-b952-b67a333aa97b)

-- Each of the node can be printed at 3 possible instances 
```
def inorder()

  # here

  inorder()

  # here

  inorder()

  # and here
```

-- I just stored them when they are in between the two recursive calls which gave me the inorder traversal.
