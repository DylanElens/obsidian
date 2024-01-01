"""
This file contains the solution to the problem.
"""
from os import walk
import os
import typing
import copy


Time = typing.NewType("Time", int)  # minutes
Water = typing.NewType("Water", int)  # m^3


def get_node_by_id(nodes: list['Node'], id: int) -> 'Node':
    for node in nodes:
        if node.id == id:
            return node

    raise ValueError(f"No node with id {id} found.")


class Node:
    """
    Represents a node in the graph.
    We can assume that every node has at most one incoming and one outgoing edge.
    This is because edges are "bidirectional" and we can only travel from node to node.
    """

    def __init__(self, id: int, pumping_station: bool):
        self.id = id + 1
        self.pumping_station = pumping_station
        self.edges: list[Edge] = []
        self.pumping_start_time: Time | None = None

    def add_edge(self, edge: 'Edge'):
        self.edges.append(edge)

    def set_pumping_station(self):
        self.pumping_station = True

    def set_pumping_start_time(self, time: Time):
        # make sure the node is a pumping station
        if not self.pumping_station:
            raise ValueError(
                f"Node {self.id} is not a pumping station and thus cannot pump water.")

        self.pumping_start_time = time

    def reachable_nodes(self, time_left: Time) -> list[tuple['Node', 'Edge']]:
        reachable_nodes = []
        for edge in self.edges:
            if edge.time < time_left:
                reachable_nodes.append((edge.nodeB, edge))

        return reachable_nodes

    def __repr__(self):
        edge_info = ', '.join(
            f"({edge.nodeA.id}, {edge.nodeB.id}, {edge.time})" for edge in self.edges)
        return f"Node(ID: {self.id}, Pumping Station: {self.pumping_station}, Edges: [{edge_info}])"

    def __str__(self):
        return (
            f"Node:\n"
            f"    ID: {self.id}\n"
            f"    Pumping Station: {('Yes, started at: ' + str(self.pumping_start_time)) if self.pumping_station else 'No'}\n"
            f"    Reachable Nodes: {list(map(lambda node: node[0].id, self.reachable_nodes(Time(9999))))}"
        )


class Edge:
    def __init__(self, id: int, start: Node, end: Node, time: Time):
        self.id = id
        self.nodeA = start
        self.nodeB = end
        self.time = time

    def __repr__(self):
        return f"({self.nodeA}, {self.nodeB}, {self.time})"

    def __str__(self):
        return f"ID: {self.id}, NodeA: {self.nodeA.id}, NodeB: {self.nodeB.id}, Time: {self.time}"


class Path:
    def __init__(self):
        self.visited_pumping_stations: dict[int, Node] = {}
        self.nodes: list[tuple[Node, Time]] = []
        self.path_time: Time = Time(0)
        self.visited_nodes: dict[int, Node] = {}
        self.all_nodes_visited: bool = False
        self.water_pumped: Water = Water(0)
        self.potential_max_water: Water = Water(0)

    def add_node(self, node: Node, travel_time: Time) -> Time:
        # set the state of the path
        self.nodes.append((node, Time(self.path_time + travel_time)))
        self.visited_nodes[node.id] = node
        self.path_time = Time(self.path_time + travel_time)

        # handle pumping stations
        if node.pumping_station:
            self.visited_pumping_stations[node.id] = node
            if not node.pumping_start_time:
                node.set_pumping_start_time(Time(self.path_time + 10))
                self.path_time = Time(self.path_time + 10)

        # check if all nodes are visited
        if len(self.visited_nodes) == NODE_AMOUNT:
            self.all_nodes_visited = True

        # update the amount of water pumped
        self.water_pumped = self.update_current_water_pumped()

        # self.max_potential_water_pumped = self.calculate_max_potential_water()

        return self.path_time

    # def calculate_max_potential_water(self) -> Water:
        # the max potential water pumped for a path
        # is the total amount of water that can be pumped using the pumps that are in the path
        # plus the amount of water pumped pumps that are not yet in the path but are reachable

        # first, we need to get the total amount of water that can be pumped using the pumps in the path
        found_pumps_max = self.calculate_pumpable_water()

    def update_current_water_pumped(self) -> Water:

        # return the total pumpable water
        total_water_pumped: Water = Water(0)

        # loop through the pumping stations
        for node in self.visited_pumping_stations.values():

            # look at the time it started pumping
            if not node.pumping_start_time:
                raise ValueError(
                    f"Node {node.id} is a pumping station but has no pumping start time.")

            # subtract the current time from the time it started pumping
            minutes_pumping = self.path_time - node.pumping_start_time

            # multiply the remaining time by WATER_PER_10_MINUTES
            node_total_water = Water(
                minutes_pumping * (WATER_PER_10_MINUTES))

            # add that to the total pumpable water
            total_water_pumped = Water(total_water_pumped + node_total_water)

        return total_water_pumped

    def calculate_pumpable_water(self) -> Water:
        total_water_pumped: Water = Water(0)
        for node in self.visited_pumping_stations.values():
            if not node.pumping_start_time:
                raise ValueError(
                    f"Node {node.id} is a pumping station but has no pumping start time.")

            minutes_pumping = Time(TIME_LIMIT - node.pumping_start_time)

            node_total_water = Water(
                minutes_pumping * (WATER_PER_10_MINUTES))

            total_water_pumped = Water(total_water_pumped + node_total_water)

        return total_water_pumped

    def __str__(self):
        # Header for the path string representation
        path_str = "Path Details:\n"
        path_str += "-----------------\n"

        # Iterate over the nodes in the path and format the details
        for index, (node, arrival_time) in enumerate(self.nodes):
            pumping_status = "Yes" if node.pumping_station else "No"
            if index == 0:
                path_str += f"Start -> Node ID: {node.id} (Pumping Station: {pumping_status})\n"
            elif node.pumping_station and node.pumping_start_time:
                path_str += f"       -> Node ID: {node.id} (Pumping Station: {pumping_status}, Arrival Time: {arrival_time}, Pumping Start Time: {node.pumping_start_time})\n"
            else:
                path_str += f"       -> Node ID: {node.id} (Pumping Station: {pumping_status}, Arrival Time: {arrival_time})\n"

        # Add the total travel time
        path_str += "-----------------\n"
        path_str += f"Total Travel Time: {self.path_time}\n"

        # Optionally, add the total pumpable water if it's calculated
        total_water_pumped = self.calculate_pumpable_water()
        path_str += f"Total Water Pumpable: {total_water_pumped}\n"

        return path_str

    def __eq__(self, __value: 'Path') -> bool:
        if len(self.nodes) != len(__value.nodes):
            return False

        for i in range(len(self.nodes)):
            if self.nodes[i][0].id != __value.nodes[i][0].id:
                return False

        return True


def parse_input() -> tuple[list[Node], list[Edge], int]:
    num_intersections, num_pumping_stations, num_roads, time_limit = map(
        int, input().split())

    # set the time limit
    global TIME_LIMIT
    TIME_LIMIT = Time(time_limit)

    # for each intersection, create a node
    nodes: list[Node] = [Node(id, False) for id in range(num_intersections)]

    pumping_station_ids: list[int] = [int(input())
                                      for _ in range(num_pumping_stations)]

    for id in pumping_station_ids:
        nodes[id - 1].set_pumping_station()

    edges: list[Edge] = []
    for i in range(num_roads):
        input_data = input().split()

        # get the nodes; -1 because the nodes are 0-indexed
        startNode = nodes[int(input_data[0]) - 1]
        endNode = nodes[int(input_data[1]) - 1]
        travel_time = Time(int(input_data[2]))

        # create an edge from start to end and from end to start
        edgeAtoB = Edge(i + 1, startNode, endNode, travel_time)
        edgeBtoA = Edge(i + 1, endNode, startNode, travel_time)

        # add the edge to the nodes
        startNode.add_edge(edgeAtoB)
        endNode.add_edge(edgeBtoA)

        # add the edge to the list of edges
        edges.append(edgeAtoB)

    return nodes, edges, num_pumping_stations


def define_constants():
    global TIME_LIMIT
    global WATER_PER_10_MINUTES
    WATER_PER_10_MINUTES = Water(200)


# we are now going to try and find all "complete" paths using bfs.
# A complete path is defined as follows:
# - The path can not be extended any further
# - The path must contain at least one pumping station
# - The path has the maximum amount of pumps activated

def path_is_complete(path: Path) -> bool:
    if len(path.visited_pumping_stations) == AMOUNT_OF_PUMPING_STATIONS:
        return True

    if path.all_nodes_visited:
        return True

    return False


# we can use a value called_potential_max_water to determine if a path is worth exploring.

def bfs(node: Node) -> list[Path]:
    """
    Returns a list of paths that are complete.
    """
    state: dict[tuple[Node, Time, int], Water] = {}

    paths: list[Path] = []
    queue: list[tuple[Node, Path, Time]] = []

    starting_path = Path()
    starting_time = starting_path.add_node(node, Time(0))

    queue.append((node, starting_path, starting_time))

    while queue:
        global QUEUE_SIZE
        QUEUE_SIZE = len(queue)
        current_node, path, time_spent = queue.pop(0)
        remaining_time = Time(TIME_LIMIT - time_spent)
        visited_pumping_stations = path.visited_pumping_stations

        for next_node, edge in current_node.reachable_nodes(Time(TIME_LIMIT - time_spent)):
            next_node = copy.deepcopy(next_node)

            new_path = copy.deepcopy(path)
            new_travel_time = new_path.add_node(next_node, edge.time)

            if path_is_complete(new_path):
                paths.append(new_path)
                print(f"Found path: {new_path}")
                continue

            queue.append((next_node, new_path, new_travel_time))

        else:
            paths.append(path)
            print(f"Found path: {path}")

    return paths


if __name__ == "__main__":
    nodes, edges, amount_of_pumping_stations = parse_input()

    global NODE_AMOUNT
    global WATER_PER_10_MINUTES
    global QUEUE_SIZE
    global AMOUNT_OF_PUMPING_STATIONS

    AMOUNT_OF_PUMPING_STATIONS: int = amount_of_pumping_stations
    NODE_AMOUNT: int = len(nodes)
    QUEUE_SIZE: int = 0
    WATER_PER_10_MINUTES: Water = Water(200)

    starting_node = get_node_by_id(nodes, 1)
    bfs_paths = bfs(starting_node)

    selected_path = bfs_paths[0]

    print(f"Queue size: {QUEUE_SIZE}")
    print(f"Found {len(bfs_paths)} paths.")
    print(f"First path: {selected_path}")

    # print(selected_path)
    # for node in selected_path.nodes:
    #     print(node)
    # testpath = Path()
    #
    # testpath.add_node(get_node_by_id(nodes, 1), Time(3))
    # testpath.add_node(get_node_by_id(nodes, 2), Time(2))
    # testpath.add_node(get_node_by_id(nodes, 1), Time(2))
    # testpath.add_node(get_node_by_id(nodes, 3), Time(0))
    #
    # find testpath in bfs_paths

    # foundpath = list(filter(lambda path: path == testpath, bfs_paths))[0]
    # print(foundpath)
    # for node in foundpath.nodes:
    #     print(node)

    # print(foundpath.calculate_pumpable_water())

    # print(f"Max water: {selected_path.calculate_pumpable_water()}")
    #
    max_water = list(
        map(lambda path: path.calculate_pumpable_water(), bfs_paths))
    print(f"Awnsers found: {max_water}")
    print(f"Max water: {max(max_water)}")

    # first_path = dfs_path(nodes[0])
    # print(first_path.calculate_pumpable_water())
    # print(first_path.get_total_travel_time())
    #
    # print(get_node_by_id(first_path.nodes, )
