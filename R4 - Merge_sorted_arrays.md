Manish ::

```
# Start from the end of both arrays
        i, j, k = m - 1, n - 1, m + n - 1

        # agar: number in firdt array is larger then put it at end
        # nahi to fir: put element of second array at the end

        while i >= 0 and j >= 0:
            if nums1[i] > nums2[j]:
                nums1[k] = nums1[i]
                i -= 1
            else:
                nums1[k] = nums2[j]
                j -= 1
            k -= 1
        
        # if there are remaining elements in nums2, copy them to nums1
        while j >= 0:
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
```
