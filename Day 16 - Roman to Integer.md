```
manish and abhay's approach:
```

- if current element is less than previous element then increment sum by the value of previous element and move forward by 1
- if next element is greater then increment sum by current - prev and move forward by 2
- in the end after the loop if pointer is at last element then also increment sum by value of the last element 

## Rohit's approach

- Create a map
- initialize sum to 0
- Iterate through string
- Check if current character's value (from map) is greater than next character's value
- If yes add the value to the sum
- If no subtract the value from the sum
