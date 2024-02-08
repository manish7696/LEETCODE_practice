## Abhay's Approach:
        
        stack = []
        s = path.split('/')

        for i in s:
            if i == '' or i == '.':                 # aage baro
                continue
            elif i == '..':                         # peeche chalo
                if stack:
                    stack.pop()
            else:                                   # / and .. ke beech ke aplphanumerics
                stack.append(i)

        final = '/' + '/'.join(stack)               # 1st / and / between directories
        return final
