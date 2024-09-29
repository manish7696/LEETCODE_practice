```class Solution(object):
    def hasCycle(self, head):
        """
        :type head: ListNode
        :rtype: bool
        """
        temp = head
        freq = {}
        while temp is not None:
            node_info = (temp.val, temp.next)
            if node_info in freq:
                return True
            else:
                freq[node_info] = 1
            temp = temp.next
        return False
        # temp = head

        # node_set = set()

        # while temp is not None:
        #     if temp in node_set:
        #         return True
        #     node_set.add(temp)
        #     temp = temp.next

        # return False
```
  - points to remember:
  - 1) using a hashmap to if a value comes again will give wrong answer because there can be two nodes with same value but different pointer
    2) rather check for (temp.val, temp.next) in the hashmap or use a set()
    3) time complexity: O(n)
    4) space complexity: O(n)
   
  - method 2) use tortoise and hare method
  - 1) utilizes the idea that slow pointer and fast pointer will meet if there is a cycle
    2) why???
    3) that is because slow moves by 1 and fast moves by 2, overall the distance between them in a cycle decreases by 1
    4) so if in a cycle they are far apart by x steps, it will take x steps for them to meet again
    5) time complexity:  O(n)
    6) space time: O(1)
