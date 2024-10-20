# To merge sort on a linked list following steps are required:
1) splitting the linked list - recursively divide the list into two halves
2) split until single node sized list are found(single node lists are sorted)
3) merge the two sorted lists

- In this code we have two recursive calls, so we pre, in, post recursive codes/area in the recursion tree
  - "Pre" : find mid and divide the list into left and right
  - "in"  : we do nothing between the two recursive calls
  - "Post": merge the two sorted lists

- helper functions required are:
  - function to find middle of a linked list - using slow and fast pointer
  - function to merge two sorted lists
