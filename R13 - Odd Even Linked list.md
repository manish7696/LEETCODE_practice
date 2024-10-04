```
class Solution(object):
    def oddEvenList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        if head is None:
            return head 
            
        odd = head
        even_head = head.next
        even = even_head

        while even is not None and even.next is not None:
            odd.next = even.next
            odd = odd.next
            even.next = odd.next
            even = even.next
        
        odd.next = even_head

        return head
```

- change pointers in odd even pair like all odd nodes point to next odd pointer and same for even position nodes
- this will essentially make two lists of odd and even nodes
- finally join the odd list's tail and even list's head 

  
