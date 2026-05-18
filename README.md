BATTLE OF DOTS
=====

BATTLE OF DOTS is a LAN RTS war game, a simple barebones war simulation built in python with pygame. Original credit goes to https://warofdots.net/ and as this is a fork to https://github.com/gamepycoder/War-of-dots .


Feel free to start issues.
Feel free to contribute.

TODO
====
| Priority    | Task                                | Details / Examples                                                                                                      | 
|-------------|-------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| 9  | Send global stats to client         | `{"cities owned":[# per player], "troops owned":[# per player], "total damage":[# per player], "current winner": <id>}` |
| 9  | Send troop stats to client          | `{"terrain on": <value>, "number of attackers": <count>, "attacking dir":[<dir xy, dist, offset of closest>]}`          |
| 9  | Send city stats to client           | `{"timer": <current>, "timer target": <target>, "produced":[so far]}`                                                   |
| 9  | Win condition & client UI           | Client continuously reads `current winner` and displays final result                                                    |
| 1  | Playtest & refine constants         | Balancing through playtesting                                                                                           |
| 1  | Add strategy information            | e.g., recommended moves, AI heuristics                                                                                  |
| 1  | Use NumPy better                    | Performance optimizations                                                                                               |
| 1  | Improve robustness to internet      | Reconnect, lag-tolerance, state-sync                                                                                    |
| 1  | Map making / editor                 | GUI editor, procedural generators, seed saving                                                                          |
| 1  | Save seed + city layout             | Export/import seeds and layouts                                                                                         |
| 1  | Save & load game state              | Checkpoints, save files                                                                                                 |
| 1  | More visual features                | UI/UX improvements, effects                                                                                             |
                               


Short term
---
 - Add stats dictionary to the info that's sent to client (e.g. {"cities owned":[_number of cities owned for each player_], "troops owned":[_number of troops owned for each player_], "total damage":[_total damage dealt this server frame for each player_], "current winner":_current winner_} ect)
 - Add stats dictionary to the troop info that's sent to client (e.g. {"terrain on":_terrain on_, "number of attackers":_number of attackers (enemies in range)_, "attacking dir":[_attacking dir (xy to dir dist on the offset of closest[0])_]} ect)
 - Add stats dictionary to the city info that's sent to client (e.g. {"timer":_timer_, "timer target":_timer target_, "produced":[_produced so far_]} ect)
 - Add win condition and make it so client reads "current winner" constantly to present that info at the end of the game


Long Term
----

 - playtest and refine constants
 - add strategy info
 - use numpy better for performance
 - make code more robust to internet issues
 - add map making
 - ability to save seed + city layout
 - saving and loading game state
 - more visual stuff?

Suggestions (just edit to add suggestions, I'll put them in long or short term):
---


Installation:
=====================

`pipx install git+https://github.com/Keruki2005/battle-of-dots.git`

Make sure you have [pipx](https://github.com/pypa/pipx) installed.

Run with `bod` in the terminal.

INSTRUCTIONS TO PLAY (old)
=====================
 - start server and enter number of players (run bod_server.py)
 - enter port, just enter 0, use other numbers when you think other people are playing the game on the same lan/router/network
 - should say waiting for players, will connect with first `PLAYERS` (number of players you entered) number of clients
 - start the clients (bod_client.py)
 - on each client type in the ip address then the port number you typed in the server (e.g. '0')
 - start playing when the pygame window pops up by pressing `p` to unpause, have fun!

INSTRUCTIONS TO PLAY (new)
=====================
- run ´bod´ in your terminal
# - if you want to host a game, press ´1´
- enter number of players
- enter port to use (i.e. port 2)
- wait for players to connect
# -if you want to join a game, press ´2´
- enter the ip-address of your host
- enter the port, your host uses
- start playing


Controls
======

Left Click: Grab a unit and draw a line to show it where to go. Release to save the path.

Right Click: Drag the mouse to move your view across the map.

Scroll Wheel: Zoom in and out on the spot where your mouse is pointing.

Spacebar: Send all your saved moves to the server.

C: Delete the paths you drew before you send them.

P: Send pause request.

Terminal: Use the terminal to set the IP/PORT address and restart the client.
