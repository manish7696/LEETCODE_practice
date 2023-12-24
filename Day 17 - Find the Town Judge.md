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
  - Create two hashmap one for first position, another for second position
  - Count the frequency according to the maps
  - According to the definition of judge two things are cleared
    - First the judge never occurs at first position
    - Second the judge will always be related to every other number except itself (as a != b) i.e. for a total of n-1
  - If a number follows above condition then it is judge

## Manish's approach

- M1
  -  create two lists first for keys, second for values
  - checks if number between 1 to n does not exists in keys
  - if there are values that does not exist in keys there must be some people not trusted by any other person
  - then check if its occurence in values list is n-1 times, if yes then it is the judge

- M2
  - make a hashmap with keys 1 to n
  - for every person being trusted (elements in second column) increase their key value
  - if there is a person with n-1 value then he must be judge
  - this approach does not clear all test cases because there may some people that are trusted by n-1 people but he/she trusts someone
  - so if a person trusts someone make his/her value to be something -1000 so that he cant be a judge
