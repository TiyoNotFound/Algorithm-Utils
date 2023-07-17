# Algorithm Utils Library for SA-MP (San Andreas Multiplayer)


[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Overview

The Algorithm Utils library provides a collection of sorting and searching algorithms for SA-MP server scripts. These algorithms are designed to optimize data manipulation tasks involving arrays, enabling you to efficiently sort and search data with improved server performance.

## Features

- **Sorting Algorithms**: Includes Bubble Sort, Quick Sort, and Selection Sort for organizing data in arrays.
- **Searching Algorithms**: Provides Binary Search and Linear Search for finding specific elements in arrays.
- **Modularity**: Each algorithm is implemented as a separate function, ensuring code modularity and flexibility.
- **Versatility**: Works with any array of integers, making it suitable for a wide range of applications.

## Advantages

- **Enhanced Script Efficiency**: Optimized algorithms improve data manipulation speed, reducing resource consumption.
- **Improved User Experience**: Faster data retrieval and sorting lead to smoother gameplay for players.
- **Data Organization**: Sorting algorithms help present high scores and leaderboards efficiently.
- **Fast Search Operations**: Searching algorithms reduce time complexity for finding elements in large datasets.

## Potential Benefits

- **Reduced Server Lag**: Efficient algorithms handle large datasets without causing server lag.
- **Improved Gameplay Experience**: Players experience quicker responses to their requests.
- **Scalability**: The library scales effortlessly with your server's growth.
- **Code Reusability**: Modular design promotes code reuse and maintainability.

## Difference
**Without `algorithm_utils` Include (Manual Sorting)**:
- In this approach, you manually write the code for sorting the array using a specific sorting algorithm like Bubble Sort.
- You need to implement the sorting logic yourself, including loops and swap operations to rearrange the elements.
- It requires more code and can be more challenging to understand and maintain.

**With `algorithm_utils` Include (Using `algorithm_utils` Library)**:
- With the `algorithm_utils` include, you have access to pre-built sorting functions like `Algorithm_BubbleSort`, which handle the sorting process for you.
- You simply call the `Algorithm_BubbleSort` function and provide the array you want to sort as a parameter.
- The `algorithm_utils` library contains efficient and tested sorting algorithms, so you don't need to worry about implementing the sorting logic yourself.

In summary, using the `algorithm_utils` include makes sorting arrays easier because you can use ready-made sorting functions. Without it, you have to manually write the sorting logic, which can be more complex and time-consuming. The `algorithm_utils` library simplifies the process and ensures that you have optimized and reliable sorting algorithms at your disposal.

## Usage

1. Download the `algorithm_utils.pwn` file from the `dist` directory.
2. Include the library in your SA-MP server script using `#include <algorithm_utils>`.
3. Utilize the various sorting and searching functions based on your requirements.


# Projects Ideas
1. **Player Inventory Sorting**: Implement a player inventory system where players can store items. Use `Algorithm_InsertionSort` or `Algorithm_SelectionSort` to allow players to sort their inventory by name, quantity, or any other attribute.
2. **Quest Progress Tracker**: Create a quest system that tracks the progress of players' quests. Utilize `Algorithm_BinarySearch` to quickly find the active quests or completed quests for a specific player.
3. **Player Ranking System**: Develop a ranking system that calculates players' scores based on their achievements or gameplay performance. Utilize `Algorithm_QuickSort` to display the top-ranked players on a leaderboard.
4. **Item Shop Search**: Design an item shop system where players can search for items based on their names or attributes. Implement `Algorithm_LinearSearch` to efficiently find and display search results.
5. **Voting System**: Create a voting system that allows players to vote for various in-game events or features. Use `Algorithm_InsertionSort` or `Algorithm_SelectionSort` to sort the voting results in descending order.
6. **Player Trading System**: Implement a player-to-player trading system. Use `Algorithm_InsertionSort` or `Algorithm_SelectionSort` to arrange tradeable items in a player's inventory efficiently.
7. **Weather Forecasting**: Create a dynamic weather system that forecasts the weather for different in-game regions. Use `Algorithm_BinarySearch` to quickly find the weather forecast for a specific location.
8. **Random Events Manager**: Develop a system that triggers random events during gameplay. Utilize `Algorithm_SelectionSort` or `Algorithm_BubbleSort` to sort the events based on their priority.
9. **Server Log Analysis**: Implement a log analysis system that processes server logs to identify patterns or anomalies. Utilize `Algorithm_QuickSort` to sort log entries by timestamp for chronological analysis.
10. **Dynamic Vehicle Spawner**: Create a vehicle spawner system that dynamically spawns vehicles based on player requests. Use `Algorithm_LinearSearch` or `Algorithm_BinarySearch` to quickly find available vehicle spawn points.

## License

This library is distributed under the MIT License. Feel free to use, modify, and distribute it as per the terms of the license.

## Contributions

Contributions to the library are welcome! Please open an issue or a pull request for any improvements or bug fixes.

---

Thank you for using the Algorithm Utils library! If you have any questions or need assistance, feel free to contact me at tiyonotfound@gmail.com
