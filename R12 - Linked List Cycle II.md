```class Solution(object):
    def detectCycle(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        # temp = head
        # freq = {}
        # while temp is not None:
        #     node_info = (temp.val, temp.next)
        #     if node_info in freq:
        #         return temp
        #     else:
        #         freq[node_info] = 1
        #     temp = temp.next
        # return None
        if head is None or head.next is None:
            return None
        hasCycle = 0
        slow = fast = head
        while fast != None and fast.next is not None:
            slow = slow.next
            fast = fast.next.next
            if slow == fast:
                hasCycle = 1
                break

        if hasCycle == 0:
            return None

        p = head
        while p != slow:
            p = p.next
            slow = slow.next
```
- m1) using hashmap to find cycle and return node if node already exists in hashmap
- m2) - use fast and slow pointer to detect cycle
      - if cycle found then start new pointer p at head
      - move slow and p one node at a time and when they meet it gives the starting node of the cycle
