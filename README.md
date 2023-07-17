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

## Usage

1. Download the `algorithm_utils.pwn` file from the `dist` directory.
2. Include the library in your SA-MP server script using `#include <algorithm_utils>`.
3. Utilize the various sorting and searching functions based on your requirements.

## Project Idea: SA-MP High Score Leaderboard

**Description:**
Create a high-score leaderboard system for your SA-MP server using the `algorithm_utils` library. The system will allow players to compete for the highest scores in a specific game mode or activity and display the top scores on a leaderboard in real-time.

**Features:**
1. **Data Storage**: Implement a system to store player scores and usernames, such as in a dynamic array or a database (MySQL or SQLite).
2. **Data Management**: Use the `algorithm_utils` library to efficiently sort the high scores in descending order, so the highest scores appear at the top of the leaderboard.
3. **Real-time Leaderboard**: Update the leaderboard in real-time when players achieve new high scores, ensuring that the top scores are always up to date.
4. **Player Interaction**: Allow players to view the leaderboard in-game through a command or an NPC interaction, making it easy for them to see their rankings.
5. **Security Measures**: Implement appropriate security measures to prevent cheating or exploiting the leaderboard system.
6. **Leaderboard Persistence**: Optionally, save the leaderboard data periodically to a file or a database to ensure data persistence across server restarts.

**Advantages:**
1. **Enhanced Gameplay Experience**: Players will have an additional challenge and motivation to compete for top positions on the leaderboard, leading to more engaging gameplay.
2. **Player Retention**: The competitive nature of leaderboards can encourage players to spend more time on the server to improve their rankings.
3. **Server Popularity**: With an attractive high-score leaderboard, your server can attract more players and retain existing ones.
4. **Community Engagement**: Leaderboards can foster a sense of community as players strive to outperform each other.

**Implementation with algorithm_utils:**
When a player achieves a new high score, the system can use the `Algorithm_InsertionSort` function from the `algorithm_utils` library to efficiently insert the score into the sorted array of high scores. This will ensure that the array remains sorted at all times without the need to sort the entire array after each update.

Additionally, you can use the `Algorithm_BinarySearch` function from the `algorithm_utils` library to quickly find a player's position on the leaderboard and display the relevant information to them in-game.

By incorporating the `algorithm_utils` library, you can efficiently manage and update the high-score leaderboard, providing a seamless and smooth experience for players while maintaining optimal server performance.

Remember to adapt this project idea to your specific SA-MP server's game modes and activities, and ensure that you follow best practices for data management and security to create a robust and rewarding leaderboard system.

## License

This library is distributed under the MIT License. Feel free to use, modify, and distribute it as per the terms of the license.

## Contributions

Contributions to the library are welcome! Please open an issue or a pull request for any improvements or bug fixes.

---

Thank you for using the Algorithm Utils library! If you have any questions or need assistance, feel free to contact me at tiyonotfound@gmail.com
