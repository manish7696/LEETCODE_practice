## Abhay's Approach:
        
        stack = []
        s = path.split('/')

        for i in s:
            if i == '' or i == '.':                 # aage chalo (append)
                continue
            elif i == '..':                         # peeche chalo (pop)
                if stack:
                    stack.pop()
            else:                                   # / and .. ke beech ke aplphanumerics (append)
                stack.append(i)

        final = '/' + '/'.join(stack)               # 1st / and / between directories ( / {stack_value} / {stack_value} )
        return final
