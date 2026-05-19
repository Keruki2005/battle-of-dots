Code description
=======

Server-Side Logic
------

Connections: Every player has their own dedicated connection to the server.

Game Speed: The server processes the game state at 45 FPS.

World Generation:

 - Terrain: Uses math functions to create natural-looking landmasses that always form an island shape.

 - Forests: Forests are placed automatically based on height, ensuring they only appear on plains.

 - City Placement: Cities are spread out randomly but follow rules to make sure they aren't too close to each other or the edge of the map.

Terrain Types & Modifiers:

 - Plains: Standard ground. (100% attack power, 100% movement speed).

 - Hills: High ground advantage. (150% attack power, 70% movement speed). Vision buff.

 - Forests: Dense cover. (75% attack power, 80% movement speed). Vision debuff.

 - Water: High vulnerability. (50% attack power, 60% movement speed).

 - Mountains: Impassable. These act as walls that units cannot cross.

Vision & Territory:

 - Fog of War: The server only sends you information about enemy units if your own units can actually see them.

 - Borders: The game tracks which parts of the map you own based on where your units walk and which cities you control.

Mechanics:

 - Movement: Units follow the lines you draw but will avoid bumping into teammates.

 - Combat: Units fight automatically when enemies get close. Units on Hills deal significantly more damage than those in Water or Forests.

 - Supply System: Units heal when they are near friendly cities. If they go too far into enemy land, their health will regenerate slower or start to drop.

 - City Logic: You capture cities by standing inside them. Cities create new units over time, slowing down if your army is already very large.

Client-Side Rendering
-------

Performance: The visual display updates 30 times per second.

Terrain Visuals: Uses a special smoothing method to turn the square map grid into curved, natural-looking coastlines and hills.

Drawing: The game draws the map in layers: first the ground, then the units, and finally the fog and border lines.

Camera: Includes 10 different zoom levels to let you see the whole map or close-up action.
