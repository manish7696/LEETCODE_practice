python code:
```
from collections import deque
class Solution(object):
    def removeOuterParentheses(self, s):
        """
        :type s: str
        :rtype: str
        """

        stack = deque()
        ends_of_primitives = []
        list_of_primitives = []
        def get_primitive_substrings(x):
            index = 0
            stack.append(x[0])
            index = 1
            while index < len(x):
                if x[index] == '(':
                    stack.append(x[index])
                elif x[index] == ')':
                    if len(stack)>0 and stack[-1] == '(':
                        stack.pop()
                        if len(stack) == 0:
                            ends_of_primitives.append(index)
                index += 1

            # print(ends_of_primitives)
            j = 0
            for i in ends_of_primitives:
                prim = x[j:i+1]
                # print(prim)
                j = i+1
                list_of_primitives.append(prim)
            return list_of_primitives

        
        prim_str_list = get_primitive_substrings(s)
        result = ''
        for i in prim_str_list:
            result += i[1:len(i)-1]
        return result 
```

Input: s = "(()())(())"
Output: "()()()"
Explanation: 
The input string is "(()())(())", with primitive decomposition "(()())" + "(())".
After removing outer parentheses of each part, this is "()()" + "()" = "()()()".

find the index at which stack is balanced, then make required substrings. Finally remove the first of last index of each substring and join them to make the final answer. 
