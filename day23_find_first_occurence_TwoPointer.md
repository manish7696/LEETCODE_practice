## manish's approach(bike chalate hue sochi)

- start aur end do pointer bana lo
- done ko hamesha needle ki len ki jitni doori pe rakho and increment karte jao
- then compare needle and haystack[start:end] portion
- agar match match ho gya to start return kardo
- nahi to -1 return ho jayega

```
class Solution(object):
    def strStr(self, haystack, needle):
        """
        :type haystack: str
        :type needle: str
        :rtype: int
        """
        l = len(haystack)
        n = len(needle)
        start = 0
        end = n

        while end <= l:
            if needle == haystack[start:end]:
                return start
            start += 1
            end += 1
        
        return -1
```
