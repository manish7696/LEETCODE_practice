## Abhay's Approach

- Create an array and store all values of linked list in the array
- Create reverse of the array
- Compare both arrays and find sum of individual elements at same position
- compare the sums to find maximum sum


## Manish's approach

- first I tried simple two pointer approach one on starting and one on the ending end moving them towards the centre and find the answer, but soon I realized I cannot traverse backwards
- Then I reversed the second half of linked list and made my first try work
- time complexity is O(n)
- space complexity is O(1)
- only drawback is that I modified the list but it can be changed back to its original form with just one extra loop

```
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def pairSum(self, head):
        """
        :type head: Optional[ListNode]
        :rtype: int
        """
        tail = head
        while tail.next is not None:
            tail = tail.next
        # print(tail.val)
        
        # find the middle
        s1 = s2 = head
        while s2.next.next is not None:
            s1 = s1.next
            s2 = s2.next.next
        mid = s1
        u = mid.next
        # print(u.val)
        
        #reversing half right of the list
        t1 = mid.next
        t2 = t1.next
        temp = t2
        t1.next = None
        while t2 is not None:
            t2 = t2.next
            temp.next = t1
            t1 = temp
            temp = t2
        
        p1 = head
        p2 = tail
        
        max = 0
        while p2 != None:
            sum = p1.val + p2.val
            if sum > max:
                max = sum
          
            p1 = p1.next
            p2 = p2.next
            
        return max
```
