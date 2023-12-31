## Manish's approach

The question asks to remove duplicate nodes in a sorted linked list.

I used two pointers named current and previous. In the starting, previous is at first node and current is at second node.
There are three cases to consider here:
- previous.val is == current.val: 
    if True then shift current right and point prev.next to current
- previous.val == current and current at the end of the list:
    if True then shift current to its next ( Current will become None) and point previous to next to make it the list's end.
- previous.val is not equal to current.val:
    if True then shift both previous and current to right by one node

### one case which is automatically handled here is that:
previous and current are at the end of the list and they are not equal. Here in this code they both get shifted to the right 
by one node which makes current None so that next iteration of while loop stops.


Took a lot of retries..  good luck!!





## Ekansh's Code:

Step 0: variable 'head' represents ListNode
Step 1: Pointer 'current' pointing to 'head'.
Step 2: Check for next element of list whether it exist or not.
Step 3: If yes then check if its value is equal to the current element. 
        If true, skip the next element and move forward by(current.next = current.next.next) 
Step 4: If false, traverse normally(current = current.next)

```
class Solution {
    public ListNode deleteDuplicates(ListNode head) {
        ListNode current=head;
         while (current != null && current.next != null) {
            if (current.next.val == current.val) {
                current.next = current.next.next;
            } else {
                current = current.next;
            }
        }
        return head;
    }
}
```
--------------------------------------------------------------------------------------------------

## Abhay's Code

```
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def deleteDuplicates(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        
        curr = head

        while curr is not None and curr.next is not None:    
                if curr.val == curr.next.val:
                    curr.next = curr.next.next

                else:
                    curr = curr.next
        return head
```
-------------------------------------------------------------------------------------------------------
