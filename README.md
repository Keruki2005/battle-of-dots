BATTLE OF DOTS
=====

BATTLE OF DOTS is a LAN RTS war game, a simple barebones war simulation built in python with pygame. Original credit goes to https://warofdots.net/ and as this is a fork to https://github.com/gamepycoder/War-of-dots .


Feel free to start issues.
Feel free to contribute.

TODO
====

Short term:
----

 - Add stats dictionary to the info that's sent to client (e.g. {"cities owned":[_number of cities owned for each player_], "troops owned":[_number of troops owned for each player_], "total damage":[_total damage dealt this server frame for each player_], "current winner":_current winner_} ect)
 - Add stats dictionary to the troop info that's sent to client (e.g. {"terrain on":_terrain on_, "number of attackers":_number of attackers (enemies in range)_, "attacking dir":[_attacking dir (xy to dir dist on the offset of closest[0])_]} ect)
 - Add stats dictionary to the city info that's sent to client (e.g. {"timer":_timer_, "timer target":_timer target_, "produced":[_produced so far_]} ect)
 - Add win condition and make it so client reads "current winner" constantly to present that info at the end of the game


Long term:
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
-
-
-
-

Controls
======

Left Click: Grab a unit and draw a line to show it where to go. Release to save the path.

Right Click: Drag the mouse to move your view across the map.

Scroll Wheel: Zoom in and out on the spot where your mouse is pointing.

Spacebar: Send all your saved moves to the server.

C: Delete the paths you drew before you send them.

P: Send pause request.

Terminal: Use the terminal to set the IP/PORT address and restart the client.
