- Manish
  - M1) explanation:
     example [1, 2, 3, 4, 5, 2, 2, 2]
    we want to remove all 2s and make it [1, 3, 4, 5, _, _, _, _]
    - At first it looks like we may need to remove all 2s and then shift all elements to left but it is too slow.
    - The checker will look only first 4 eleements (1, 3, 4, 5), so we just need to put them at beginning and at same time ignoring 2s in the array
    - This way we wont need to shift the elements
   
  ```
  class Solution(object):
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        current = 0
   
        for i in nums:
            if i != val:
                nums[current] = i
                current += 1
           
            
        return current
  ```

  - Smeeksha
     - Count the number of times val exists in the nums.
      -Then use for loop to remove all the occurences of that element. (if we don't use for loop it will only remove the             element once from nums)
     - Finally the nums obtained will have no occurence of val. Now return the length of nums.

    class Solution:
      def removeElement(self, nums: List[int], val: int) -> int:
          repetition= nums.count(val)
          for i in range(repetition):
              nums.remove(val)
          return len(nums)
      
  
