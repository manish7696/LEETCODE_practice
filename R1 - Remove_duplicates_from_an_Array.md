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
  - M2 optimal
    ```
    class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        
        # edge cases
        if len(nums)<= 1:
            return len(nums)

        if len(nums) == 2 and nums[0] == nums[1]:
            return 1


        forward = 0
        backward = len(nums) - 1
        count_repeated = 0

        # this loop helps to finds no of distinct elements in array
        while forward < backward:
            print(forward, backward)
            if forward < len(nums) and nums[forward] == nums[forward+1]:
                count_repeated += 1
            if backward > 0 and nums[backward] == nums[backward-1] and forward+1!=backward:
                count_repeated += 1

            forward += 1
            backward -= 1

        print(count_repeated)
        # this loop swaps the distinct elements to starting

        # edge case handling :: all the numbers are same
        if len(nums) == count_repeated:
            count_distinct = 1
        else:
            count_distinct = len(nums) - count_repeated
        
        current = 0
        visited = []
        for i in nums:
            if i not in visited:
                if current < count_distinct:
                    nums[current] = i
                    current += 1 
                
                    if current == count_distinct:
                        break
                visited.append(i)

        # add underscores in the ending
        for i in range(count_distinct, len(nums)):
            nums[i] = '_'

        # print(nums)

        # print(count_distinct, nums)
        return count_distinct
    ```

  - M3 chat gpt
  ```
  class Solution(object):
      def removeDuplicates(self, nums):
          """
          :type nums: List[int]
          :rtype: int
          """
          
          if not nums:
              return 0
  
          # Initialize the counter for the unique element's position
          unique_index = 0
  
          # Iterate through the list starting from the second element
          for i in range(1, len(nums)):
              if nums[i] != nums[unique_index]:
                  unique_index += 1
                  nums[unique_index] = nums[i]
  
          return unique_index + 1
    ```
    
