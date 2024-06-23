```
from collections import deque

class Solution(object):
    def predictPartyVictory(self, senate):
        """
        :type senate: str
        :rtype: str
        """

        # approach 1 gives time limit exceeded 
        # order = deque(senate)
        # radiant_powerups = dire_powerups = 0  # Track active powerups for each party
        
        # while order:
        #     current_voter = order.popleft()
            
        #     if current_voter == 'R':
        #         if dire_powerups > 0:
        #             dire_powerups -= 1  # Use dire powerup to ban a Radiant senator
        #         else:
        #             order.append(current_voter)  # No powerup, Radiant senator stays in the queue
        #             radiant_powerups += 1  # Radiant gets a powerup
        #     else:  # current_voter == 'D'
        #         if radiant_powerups > 0:
        #             radiant_powerups -= 1  # Use radiant powerup to ban a Dire senator
        #         else:
        #             order.append(current_voter)  # No powerup, Dire senator stays in the queue
        #             dire_powerups += 1  # Dire gets a powerup
            
        #     # If either Radiant or Dire senators are all banned, declare the winner
        #     if len([senator for senator in order if senator == 'R']) == 0:
        #         return 'Dire'
        #     elif len([senator for senator in order if senator == 'D']) == 0:
        #         return 'Radiant'
        
        # return 'Dire'


        # approach 2 use 2 queues for radiant and dire separately storing corresponding indices 
        radiant_queue = deque()
        dire_queue = deque()
        n = len(senate)  # add n to index to simulating rounds

        for i, s in enumerate(senate):
            if s == 'R':
                radiant_queue.append(i)
            else:
                dire_queue.append(i)
        
        while radiant_queue and dire_queue:
            r_index = radiant_queue.popleft()
            d_index = dire_queue.popleft()

            if r_index < d_index:
                radiant_queue.append(r_index + n)
            else:
                dire_queue.append(d_index + n)

        if radiant_queue:
            return "Radiant"
        else:
            return "Dire"

      
```
