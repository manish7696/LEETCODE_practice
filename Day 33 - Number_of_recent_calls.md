from collections import deque
class RecentCounter(object):

    def __init__(self):
        self.queue = deque()
       


    def ping(self, t):
        self.queue.append(t)
        while 1 and self.queue[0] < t - 3000:
                self.queue.popleft()
        # print(self.queue)
        return len(self.queue)

# pop the element if its corresponding time is more thean 3000 less from current time
