## Manish's approach

- make a function inside given function
- call it recursively two times and find its post traversal order
- store the results of left call and right call in s1 and s1 variable
- here s1 represents the answer from left branch and s2 represents the answer from right branch.
- return s1 or s2, because if any branch returns true then the overall answer is true.
(did it with abhay)

## Abhay's approach

- make a function inside given function
- call it recursively two times and find its post traversal order
- store the results of left call and right call in s1 and s1 variable
- here s1 represents the answer from left branch and s2 represents the answer from right branch.
- return s1 or s2, because if any branch returns true then the overall answer is true.
(did it with manish)

## Rohit's Approach

- Make a function inside given class
- Pass the target and total as an argument along with a boolean and root
- Check if root is not null
- Add the roots's value to target
- Check if it is equal to target and it is the leaf change ans to true
- Else traverse the tree first left and then right
- If after traversing both sides and still the total is not equal to target minus the root value from the target
- Repeat until whole tree is exhausted
