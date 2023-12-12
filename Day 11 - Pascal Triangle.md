## Manish approach

- make an empty list
- append [1] and [1, 1] to it
- then to make third, fourth, .... use the values from prev list in the overall array (let's say prev)
- now the list to be added to overall list will be defined as:
  ```
  temp[i] = prev[i] + prev[i-1]
  ```
