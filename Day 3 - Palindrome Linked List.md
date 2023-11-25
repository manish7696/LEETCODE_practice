## Rohit's 1st approach
- Store the values of list in a vector
- Reverse the list
- Store the reverse list value in a new vector
- Compare both the vector's

P.S. Working on other method


## Abhay's Approach
  Traverse the linked list while storing all elements in an array
  Use pointers (left, right) to check if array is palindrome

  ``

        #  Traverse the linked list while storing all elements in an array
        arr = []
        curr = head
        while curr:
            arr.append(curr.val)
            curr = curr.next

        #  Use pointers (left, right) to check if array is palindrome
        left = 0
        right = len(arr) - 1
        while left <= right:
            if arr[left] != arr[right]:
                return False
            left += 1
            right -= 1

        return True
  ``
