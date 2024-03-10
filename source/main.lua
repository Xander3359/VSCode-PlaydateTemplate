import "CoreLibs/graphics"

local pd <const> = playdate
local gfx <const> = playdate.graphics

local playerX, playerY = 200, 120
local playerRadius = 10

local PlayerSpeed = 3 -- Baseline speed before any modifiers
local CurrentPlayerSpeed = PlayerSpeed

function pd.update()
	gfx.clear()
	if(pd.buttonIsPressed(pd.kButtonUp)) then -- Up and down are inverted for some reason
		playerY -= CurrentPlayerSpeed
	end
	if(pd.buttonIsPressed(playdate.kButtonDown)) then -- Up and down are inverted for some reason
		playerY += CurrentPlayerSpeed
	end
	if(pd.buttonIsPressed(pd.kButtonRight)) then
		playerX += CurrentPlayerSpeed
	end
	if(pd.buttonIsPressed(pd.kButtonLeft)) then
		playerX -= CurrentPlayerSpeed
	end

	if(pd.buttonIsPressed(pd.kButtonB)) then
		CurrentPlayerSpeed = PlayerSpeed * 2
	end
	if(pd.buttonIsPressed(pd.kButtonA)) then
		CurrentPlayerSpeed = PlayerSpeed / 2
	end


	gfx.fillCircleAtPoint(playerX, playerY, playerRadius)
end
