-- use DFS for finding components
-- remember to convert edge list to adjacency list or matrix to use dfs
-- finally add a check for completely connected component before adding it to the final list 

python code:
```
from collections import defaultdict
class Solution(object):
    def countCompleteComponents(self, n, edges):
        """
        :type n: int
        :type edges: List[List[int]]
        :rtype: int
        """
        def dfs(graph, node, component, marked):
            marked[node] = True
            component.append(node)
            for neighbour in graph[node]:
                if not marked[neighbour]:
                    dfs(graph, neighbour, component, marked)

        def is_connected_component(component):
            for node in component:
                if len(graph[node]) != len(component) - 1:
                    return False
            return True 
        
        graph = defaultdict(list)
        for i in range(n):
            graph[i] = []
            
        for u, v in edges:
            graph[u].append(v)
            graph[v].append(u)

        marked = [False] * len(graph)
        components = []
        for node in graph:
            if not marked[node]:
                component = []
                dfs(graph, node, component, marked)
                if is_connected_component(component):
                    components.append(component)
        print(components)
        return len(components)
```
