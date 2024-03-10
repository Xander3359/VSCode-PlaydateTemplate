local fruit = {} -- empty table

fruit[1] = "orange"
fruit[2] = "apple"
fruit[3] = "banana"

print(fruit[2]) -- prints "apple"


---- Creating an inventory (assigned default values) ------------
local inventory = {}

inventory["wood"] = 7
inventory["stone"] = 20
inventory["iron"] = 5

---- Accessing the items in our inventory -----------------------
print(inventory["wood"]) -- 7

print(inventory.iron) -- 5 -- inventory.iron is equal to inventory["iron"] AND NOT inventory[iron]
-- KEEP IN MIND we are looking for a string when looking for a value assigned to a key

---- Creating a var to acccess something in our inventory -------
local SelectedItem = "stone"
print(inventory[SelectedItem]) -- 20
SelectedItem = "iron" -- Changing our selected item will change the output
print(inventory[SelectedItem]) -- 5

---- Updating a value in our inventory (2 options) --------------
inventory["wood"] = inventory["wood"] + 1 
inventory["wood"] += 1



---- for loops --------------------------------------------------

local fruits = {"orange", "apple", "banana"}

for i=1,#fruits do
	print(fruits[i])
end

-- prints:
-- "orange"
-- "apple"
-- "banana"

for i=1,60 do
	table.insert(fruits, "pineapple")
end -- Adds 60 pineapples to our fruits


--- generic for loop --------------------------------------------
local inventory1 = {
	wood = 7,
	stone = 20,
	iron = 5,
}

for k in pairs(inventory1) do
	print("Key: " .. k .. " | Value: " .. inventory1[k]) -- string concatenation
end




---- playdate exclusive functions

-- playdate. is basically a giant table that has functions you can use
playdate.getButtonState() -- playdate.function() basically

-- optional helper libraries, you need to import before
-- graphics
import "CoreLibs/graphics"
-- sprites
import "CoreLibs/sprites"
-- timer
import "CoreLibs/timer"
-- object
import "CoreLibs/object"

function playdate.update() 
	-- This happens ~30 times a second
end
