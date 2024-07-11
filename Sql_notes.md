q2)
Customer =
| id | name | referee_id |
| -- | ---- | ---------- |
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |

```
SELECT name 
FROM Customer
WHERE referee_id != 2; 
```
this will not check null values and hence is the wrong answer, to compare null value in SQL we use IS NULL or IS NOT NULL

```
WHERE referee_id != 2 or referee_id IS NULL;
```
 
