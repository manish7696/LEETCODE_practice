## Rohit's 1st approach
1. 1st approach
    - Store the values of list in a vector
    - Reverse the list
    - Store the reverse list value in a new vector
    - Compare both the vector's
2. 2nd approach
    - Find the mid of the list
    - Reverse only the first half of the list
    - Compare both lists values  


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
# Ekansh's Approach

Ekansh's Code:

Step 1: Traverse the list and find the middle of the list.
Step 2: Reverse the list by using the reverse function created. 
Step 3: Compare the 2 lists. If value matches- true, if not- false.

    class Solution {
        public boolean isPalindrome(ListNode head) {
          //if list is empty, already palindrome
          if (head == null || head.next == null){
              return true;
          }
          //finding the middle of list
          //when slow will reach middle element, fast will reach last element
          ListNode slow = head, fast = head;
          while (fast.next != null && fast.next.next != null){
              slow = slow.next;
              fast = fast.next.next;
          }
          //reverse the list after the middle element
          slow.next = reverseList(slow.next);

          //check for palindrome by comparing original and reversed list
          ListNode first = head;
          ListNode second = slow.next;
          while (second != null) {
              //if at any point values dont match, print false
              if (first.val != second.val) {
                  return false;
              }
              first = first.next;
              second = second.next;
          }
  
          //print true
          return true;
      }

      //defining a function to reverse the list
      public ListNode reverseList(ListNode head){
          ListNode prev = null;
          ListNode current = head;
      while (current != null) {
          ListNode next = current.next;
          current.next = prev;
          prev = current;
          current = next;
      }
      return prev;
      }
    }
  
## manish approach (time limit exceeded)

- read the linked list in reverse using recursion(rather than actually
reversing it)
- find correspinding element from from and compare them.( slow for large lists)
- pass the result recursively as bool.
