- Manish
  - M1 Brute force
  ```
  class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        distinct = []
        for i in nums:
            # print(i, distinct)
            if i not in distinct:
                distinct.append(i)
                print(distinct)

        for i in range(len(nums)):
            if i < len(distinct):
                nums[i] = distinct[i]
            else:
                nums[i] = '_'
        return len(distinct)
    ```
