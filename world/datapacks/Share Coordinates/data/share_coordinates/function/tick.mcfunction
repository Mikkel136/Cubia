# Routinely expose the trigger to players who log in/lot out of the server
    scoreboard players add @a share_coordinates 0
    execute as @a[scores={share_coordinates=0}] run scoreboard players enable @s share_coordinates
    execute as @a[scores={share_coordinates=0}] run scoreboard players set @s share_coordinates 1


# Check if /trigger has been activated
    execute as @a[scores={share_coordinates=2..}] run function share_coordinates:command

