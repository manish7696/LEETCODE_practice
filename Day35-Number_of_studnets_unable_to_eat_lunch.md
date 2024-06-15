from collections import deque

class Solution(object):
    def countStudents(self, students, sandwiches):
        """
        :type students: List[int]
        :type sandwiches: List[int]
        :rtype: int
        """
        

        self.students = deque(students) # circular queue, use append and popleft
        self.sandwiches = deque(sandwiches) # stack, use append and popleft 

        # print(Students)
        # print(Sandwiches)
        reject_count = 0
        while True:
            l = len(self.students)
            if l == 0:
                break
            if self.students[0] != self.sandwiches[0]:
                self.rotate_queue()
                reject_count += 1
                if reject_count == l:
                    return l
            else:
                self.students.popleft()
                self.sandwiches.popleft()
                reject_count = 0



        return 0

    def rotate_queue(self):
        front = self.students.popleft()
        self.students.append(front)

# use circular queue for students and stack for sandwiches( for circular queue, just use normal queue and append the element that you pop from it)
# if all the students have in the current queue have rejected once then they are unable to eat
# if at one point students queue is empty then they can eat
