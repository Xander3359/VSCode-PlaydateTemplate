import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/object"

import "circle"

-- screenCenter is the middle coordinate of our screen (Which is 400 x 240 at maximum)
local screenCenter = { x = 200, y = 120 }

-- Define circle parameters
local circleRadius = 50

-- Define object parameters
local objectRadius = 10

-- Define starfield parameters
local numStars = 100
local stars = {}

-- Initialize star positions
for i = 1, numStars do
    stars[i] = { x = math.random(320), y = math.random(240) }
end

local function initialize()
    -- Main circle "base"
    local circleSprite = Circle(screenCenter.x, screenCenter.y, circleRadius, false)
    circleSprite:add()
end

initialize()

function playdate.update()
    playdate.graphics.sprite.update()

    -- crankAngle, conversion of our crank angle from degrees into radians
    -- It has - 90 * math.pi / 180 because playdate has 0 at the top instead of the right
    local crankAngle = playdate.getCrankPosition() * math.pi / 180 - 90 * math.pi / 180

    print(crankAngle)

    -- Calculate object position around the circle
    local objectX = screenCenter.x + circleRadius * math.cos(crankAngle)
    local objectY = screenCenter.y + circleRadius * math.sin(crankAngle)

    -- Draw the controllable object
    playdate.graphics.fillCircleAtPoint(objectX, objectY, objectRadius)
end
