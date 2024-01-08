"""
This file contains the solution to the problem without types
"""
import itertools
import heapq
from itertools import permutations


def dijkstra(graph, start):
    distances = {node: float('infinity') for node in graph}
    distances[start] = 0
    pq = [(0, start)]

    while pq:
        current_distance, current_node = heapq.heappop(pq)

        if current_distance > distances[current_node]:
            continue

        for neighbor, weight in graph[current_node].items():
            distance = current_distance + weight

            if distance < distances[neighbor]:
                distances[neighbor] = distance
                heapq.heappush(pq, (distance, neighbor))

    return distances


def parse_input():
    num_intersections, num_pumping_stations, num_roads, time_limit = map(
        int, input().split())

    graph = {i: {} for i in range(num_intersections)}

    pumping_station_ids = [
        int(input()) - 1 for _ in range(num_pumping_stations)]

    pumping_station_ids.insert(0, 0)

    for _ in range(num_roads):
        start, end, travel_time = map(int, input().split())
        graph[start - 1][end - 1] = travel_time
        graph[end - 1][start - 1] = travel_time  # bidirectional paths

    # shortest_paths = {}
    for station in pumping_station_ids:
        # make sure all pumping stations are reachable
        distances = dijkstra(graph, station)
        graph[station] = distances

    return graph, time_limit, pumping_station_ids


def graph_to_distances_array(graph_dict):
    # Determine the size of the list (n by n)
    n = max(graph_dict.keys()) + 1  # Largest key + 1

    # Initialize the list with high values (representing no direct path)
    graph_list = [[1000000000 for _ in range(n)] for _ in range(n)]

    # Fill in the distances from the dictionary
    for i in range(n):
        for j in graph_dict.get(i, {}):
            graph_list[i][j] = graph_dict[i][j]

    # set the diagonal to 0
    for i in range(n):
        graph_list[i][i] = 0

    return graph_list


def calculate_edge_value(arrival_time, time_limit):
    constant = 10000000000
    # Calculate the remaining time
    remaining_time = time_limit - (arrival_time + 10)

    # Calculate the value based on remaining time and water production factor
    value = remaining_time * 200

    # Adjust the value by subtracting it from the constant to invert its effect
    adjusted_value = constant - value

    return adjusted_value


def held_karp_modified(dists, ids):
    """
    Modified Held-Karp algorithm to find the shortest path through a given set of nodes.

    Parameters:
        dists: Distance matrix
        ids: List of node IDs to visit

    Returns:
        A tuple, (cost, path).
    """
    C = {}

    for k in ids:
        if k != ids[0]:
            subset = frozenset([k])
            arrival_time = dists[ids[0]][k]
            cost = calculate_edge_value(arrival_time, time_limit)
            C[(subset, k)] = (cost, ids[0], arrival_time)

    for subset_size in range(2, len(ids)):

        # Generate all combinations of the subset of the specified size
        for subset_tuple in itertools.combinations(ids[1:], subset_size):
            subset = frozenset(subset_tuple)

            # Iterate over each node in the subset to find the lowest cost to reach it
            for k in subset:
                # Create a subset that does not contain node k
                prev_subset = subset - frozenset([k])
                # list of tuples (cost, node, arrival_time)
                res = []
                for m in subset:
                    if m == ids[0] or m == k:
                        continue
                    prev_cost, _, prev_time = C[(prev_subset, m)]
                    arrival_time = prev_time + dists[m][k] + 10
                    # Check if within time limit
                    if arrival_time <= time_limit:
                        cost = prev_cost + \
                            calculate_edge_value(arrival_time, time_limit)
                        res.append((cost, m, arrival_time))

                # If there are no valid paths to reach node k, set the cost to infinity
                if res:
                    C[(subset, k)] = min(res, key=lambda x: x[0])
                else:
                    C[(subset, k)] = (10000000000, 0, 0)

    full_set = frozenset(ids[1:])
    starting_node = ids[0]  # our starting node
    optimal_path = [starting_node]  # our starting path
    optimal_cost = 0

    while full_set:
        # Find the next node with the minimum cost
        next_node, cost = min(
            (m, C[(full_set, m)][0] + dists[m][starting_node]) for m in full_set
        )
        optimal_cost += cost
        optimal_path.append(next_node)

        # Update the set and the last node for the next iteration
        full_set = full_set - frozenset([next_node])
        starting_node = next_node

    return optimal_path


def water_pumped(path, time_limit, dists):
    time_spent = 0
    water_pumped = 0

    for position in range(len(path) - 1):
        # Check if the next node is reachable within the time limit

        a = path[position]
        b = path[position + 1]

        distance_a_b = dists[a][b]
        if time_spent + distance_a_b > time_limit:
            break  # Not enough time to reach the next node

        # Travel to the next node
        time_spent += distance_a_b

        # Check if there's time to turn on the pump at the next node
        if time_spent + 10 <= time_limit:
            time_spent += 10  # Time to change water direction
            remaining_time = time_limit - time_spent  # Time left for pumping
            position_pumped = remaining_time * 200  # Calculate water pumped
            water_pumped += position_pumped
        else:
            break  # Not enough time to turn on the pump

    return water_pumped


def find_max_water_pumped(path, time_limit, dists):
    max_water = 0
    best_path = None

    # Keep the first node fixed and find permutations of the rest of the path
    for perm in permutations(path[1:]):
        full_path = [path[0]] + list(perm)
        water = water_pumped(full_path, time_limit, dists)
        if water > max_water:
            max_water = water
            best_path = full_path

    return max_water, best_path


if __name__ == "__main__":

    matrix, time_limit, pumping_station_ids = parse_input()

    matrix = graph_to_distances_array(matrix)

    path = held_karp_modified(matrix, pumping_station_ids)

    total, path = find_max_water_pumped(path, time_limit, matrix)

    print(total)
