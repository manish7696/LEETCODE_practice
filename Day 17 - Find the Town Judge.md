## Rohit's approach

- 1st approach
  - Create a hasmap
  - Count the frequency of all the elements present at first position at each row (row, 0)
  - Check if there is any key (number upto n) not present in map
  - If there is any key then that key is the judge else no judge
  ```
  Problem : Not possible for cases where more than 1 number does not occur in first position or not all numbers are related to the judge
  Example n = 3 trust = [[1,2],[2,3]]
  ```
- 2nd approach
  - Create two hahmap one for first position, another for second position
  - Count the frequency according to the maps
  - According to the definition of judge two things are cleared
    - First the judge never occurs at first position
    - Second the judge will always be related to every other number except itself (as a != b) i.e. for a total of n-1
  - If a number follows above condition then it is judge
