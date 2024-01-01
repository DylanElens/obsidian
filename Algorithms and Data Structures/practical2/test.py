def bfs_with_memoization(start_node):
    # Memoization table to store the best result for each state
    # Key: (node_id, remaining_time, visited_pumping_stations), Value: max_water_pumped
    memo = {}

    # BFS queue
    # (current_node, remaining_time, visited_pumping_stations, water_pumped)
    queue = [(start_node, TIME_LIMIT, set(), 0)]

    while queue:
        current_node, remaining_time, visited_pumping_stations, water_pumped = queue.pop(
            0)

        # Check if the current state is better than the previously recorded state
        state = (current_node.id, remaining_time, visited_pumping_stations)
        if state in memo and memo[state] >= water_pumped:
            continue  # Skip as we already have a better or equal result for this state

        # Update the memoization table with the new result
        memo[state] = water_pumped

        # Explore neighbors
        for neighbor in current_node.reachable_nodes(remaining_time):
            new_visited_pumping_stations = visited_pumping_stations.copy()
            new_water_pumped = water_pumped

            if neighbor.is_pumping_station:
                new_visited_pumping_stations.add(neighbor.id)
                # Calculate new water pumped value

            new_remaining_time = remaining_time - \
                get_travel_time(current_node, neighbor)
            if new_remaining_time >= 0:
                queue.append((neighbor, new_remaining_time,
                             new_visited_pumping_stations, new_water_pumped))

    # Process memoization table to find the best path or result
    # ...
