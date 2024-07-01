# Store current player's coords (X, Y, Z)
    execute store result score @s coord_x run data get entity @s Pos[0]
    execute store result score @s coord_y run data get entity @s Pos[1]
    execute store result score @s coord_z run data get entity @s Pos[2]



# Display chat message -- Dimention: Overworld
    execute as @a[scores={share_coordinates=2..}] if entity @s[nbt={"Dimension":"minecraft:overworld"}] run tellraw @a ["",{"selector":"@s","color":"yellow"}," shared their position: ",{"score":{"name":"@s","objective":"coord_x"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_y"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_z"},"bold":true,"color":"yellow"}," (Dimension: ",{"text":"Overworld","color":"green"},")"]

# Display chat message -- Dimention: The Nether
    execute as @a[scores={share_coordinates=2..}] if entity @s[nbt={"Dimension":"minecraft:the_nether"}] run tellraw @a ["",{"selector":"@s","color":"yellow"}," shared their position: ",{"score":{"name":"@s","objective":"coord_x"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_y"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_z"},"bold":true,"color":"yellow"}," (Dimension: ",{"text":"The Nether","color":"red"},")"]

# Display chat message -- Dimention: The End
    execute as @a[scores={share_coordinates=2..}] if entity @s[nbt={"Dimension":"minecraft:the_end"}] run tellraw @a ["",{"selector":"@s","color":"yellow"}," shared their position: ",{"score":{"name":"@s","objective":"coord_x"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_y"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_z"},"bold":true,"color":"yellow"}," (Dimension: ",{"text":"The End","color":"aqua"},")"]

# Fallback - If the player is in a custom dimention for some reason
    execute as @a[scores={share_coordinates=2..}] unless entity @s[nbt={"Dimension":"minecraft:overworld"}] unless entity @s[nbt={"Dimension":"minecraft:the_nether"}] unless entity @s[nbt={"Dimension":"minecraft:the_end"}] run tellraw @a ["",{"selector":"@s","color":"yellow"}," shared their position: ",{"score":{"name":"@s","objective":"coord_x"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_y"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"coord_z"},"bold":true,"color":"yellow"}]


# Reset score
    execute as @a[scores={share_coordinates=2..}] run scoreboard players enable @s share_coordinates
    execute as @a[scores={share_coordinates=2..}] run scoreboard players set @s share_coordinates 1