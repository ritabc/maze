# Riddles of the Sphinx

#### Epicodus: Ruby Course: Tuesday, July 4th, 2018

####Rita Bennett-Chew

## Description

A maze application

## Setup/Contribution Requirements

1. Clone the repo
1. Make a new branch
1. Commit and push your changes
1. Create a PR

## Technologies Used

** Ruby 2.4.1

## Creation Notes
- Maze is a 6x6 grid. x-axis is 1 thru 6, y-axis is a thru f
- orientations are N,E,S,W
-
 * Class: Room
 * Class variable: Current Room
 * (class/instance?) methods: Update current room
- On the layout.erb page, loop through room's property (accessible_rooms) to create buttons for each room which can be accessed from there.
* Another Class: Path? Maze?
 - Say, Path class:
    *
- Say, Maze class:
    * Initialize it with an instance variable: the correct path as an array
    * Each room's info (for ie, rooms accessible from there) would be initialized with the Maze class (ie, new rooms instantiated upon Maze initialization)
* Store the rooms accessible from each room as a hash {'B1' => 'N', 'A2' = E, }    

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Rita Bennett-Chew**
