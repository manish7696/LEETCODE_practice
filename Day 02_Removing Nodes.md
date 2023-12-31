## This is Ekansh's Code:


- Step 0: 'head' represents the ListNode and 'val' represents the value of the node that needs to be replaced
- Step 1: I checked if the head of the list is to be removed. if yes, then the head is shifted to the next node after the head.
- Step 2: Then a new pointer 'current' is introduced that represents the current position and help in traversal.
- Step 3: Then nodes are traversed checking if the current node and next node exist in the list(current != null && current.next != null)
- Step 4: If present, we have to check whether the next node on the list have the same value as variable 'val' that needs to be removed.
- Step 5: If value of (current.next == val), we need to skip that node by redirecting it to next node (current.next = current.next.next) hence removing current.next ultimately
- Step 6: If false, direct the current pointer to next code 

```
class Solution {
    public ListNode removeElements(ListNode head, int val) {
        // Cases to remove head
        while (head != null && head.val == val) {
            head = head.next;
        }

        ListNode current = head;

        // Removal of nodes and traversal
        while (current != null && current.next != null) {
            if (current.next.val == val) {
                current.next = current.next.next;
            } else {
                current = current.next;
            }
        }
        return head;
    }
}
```
--------------------------------------------------------------------------

## Abhay's Code:

```
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def removeElements(self, head, val):
        """
        :type head: ListNode
        :type val: int
        :rtype: ListNode
        """

        if head is None:
            return head
        curr = head
        
        # print(head.val)
        
        while head.val == val:
            head = head.next
            if head is None:
                return head

        curr = head

        while curr.next is None: 
            if curr.val == val:
                return curr.next
            else:
                return head


        while curr is not None and curr.next is not None:
            
            if curr.next.val == val:
                curr.next = curr.next.next 

            else:
                curr = curr.next
        
        return head
```

----------------------------------------------------------------------------------------
## Manish's approach 

take two pointers prev and current
- if current is equal to val then set prev.next to current.next and move current to one node right
- else move both prev and current by one node right

