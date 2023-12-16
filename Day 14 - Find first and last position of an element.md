## Manish's approach

- used three binary search loops ( since 3*logn = O(logn) it got accepted )
- first search checks if the number exists in the list
- if it exists next search finds the leftmost occurence
- the third one finds rightmost occurence
- finally, return leftmost, rightmost
