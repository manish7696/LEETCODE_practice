## manish's approach

- find the list's lenght
- make the list circular
- move k % lenght steps( name is end) ahead and make its nest to be new head
- finally make end.next = None

## Abhay's Approach

- Same as Manish (it was my Idea but he implemented it better)

## Rohit's Approach

1. First Approach
   - Store all the nodes in a stack
   - Make the top point to the head and make it the new head
   - Pop and then repeat the same on the previous node until whole stack is exhausted
   - K values need to checked for k % length time(help from internet)
   - Problem - Time exceeded

2. Second Approach
   - Same as Manish
   - Same code different timing (3, 4, 6, 9)
