from collections import deque
class Solution(object):
    def firstUniqChar(self, s):
        """
        :type s: str
        :rtype: int
        """
        counts = {}
        queue = deque()

        for idx, i in enumerate(s):
            # queue.append(i)  # normal case when u append whole string to the queue
            if i in counts:
                counts[i] += 1
            else:
                counts[i] = 1
                queue.append((i, idx)) # optimized case where u append only those char with one occurence along with its index
    
        for i in range(len(queue)):
            # if counts[queue[0]] == 1:  # normal case where u iterate over whole string possibly
            #     return idx
            # print(queue[0], idx) 
            char, idx = queue.popleft() # here queue is smaller(having only single occurence chars)
            # print(char, idx)
            if counts[char] == 1:
                return idx
            
        
        return -1

# first try - make dictionary to count occurence of each character and then pop elementwise from queue(string) to find first letter with 1 occurence
# second try(optimized) - only put those character of string in the queue which have only one occurence (while making the dictionary!!)
