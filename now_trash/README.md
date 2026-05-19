BATTLE OF DOTS
=====

BATTLE OF DOTS is a LAN RTS war game, a simple barebones war simulation built in python with pygame. Original credit goes to https://warofdots.net/ and as this is a fork to https://github.com/gamepycoder/War-of-dots .


Feel free to start issues.
Feel free to contribute.

TODO
====
| Priority    | Task                                | Details / Examples                                                                                             | Status  | 
|-------------|-------------------------------------|----------------------------------------------------------------------------------------------------------------|---------|
| 3  | Send global stats to client         | `{"cities owned":[# per player], "troops owned":[# per player], "total damage":[# per player], "current winner": <id>}` |?
| 3  | Send troop stats to client          | `{"terrain on": <value>, "number of attackers": <count>, "attacking dir":[<dir xy, dist, offset of closest>]}`          |?
| 3  | Send city stats to client           | `{"timer": <current>, "timer target": <target>, "produced":[so far]}`                                                   |?
| 4  | Win condition & client UI           | Client continuously reads `current winner` and displays final result                                                    |?
| 9  | Playtest & refine constants         | Balancing through playtesting                                                                                           |?
| 9  | Add strategy information            | e.g., recommended moves, AI heuristics                                                                                  |?
| 1  | Use NumPy better                    | Performance optimizations                                                                                               |?
| 10  | Improve robustness to internet      | Reconnect, lag-tolerance, state-sync                                                                                    |under development
| 8  | Map making / editor                 | GUI editor, procedural generators, seed saving                                                                          |?
| 7  | Save seed + city layout             | Export/import seeds and layouts                                                                                         |?
| 7  | Save & load game state              | Checkpoints, save files                                                                                                 |?
| 4  | More visual features                | UI/UX improvements, effects                                                                                             |?
| 4  | More Units                          | Tanks, Fast Tanks, Infantry, Light Radar Infantry                                                                       |?
                               

(just edit to add suggestions)



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

Production (unpaused only): A bar at the bottom lists **Infantry**, **Heavy**, and **Scout**. Hover the mouse over **one of your cities** (yours show a two-letter production tag above the flag), then either **click a unit button** on the bar or press **1**, **2**, or **3** to set what that city will train next. New units spawn with stats matching that type (health bar scales to their max health; the colored ring matches the type).

Terminal: Use the terminal to set the IP/PORT address and restart the client.
