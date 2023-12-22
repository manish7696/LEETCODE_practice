## Rohit's Approach

- Made a function named 'traverse' for traversal
- Passed it current node, parent, current depth and target value
- Recursively check left and right subtree, update depth and check if target is found
- If found return the parent and depth
- Store the result for both x and y in different variables
- Then compare them if they have same depth and different parents(true in this case)
- Got the idea to use both parent and depth from discussion
- Used Python this time as it was easy to return multiple values with python as compared to cpp
