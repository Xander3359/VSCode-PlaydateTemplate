import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/object"

-- Define circle parameters
local circleRadius = 50
local circleCenter = { x = 160, y = 120 }

-- Define object parameters
local objectRadius = 10
local objectAngle = 0  -- Initial angle
local objectDistance = 70

-- Define starfield parameters
local numStars = 100
local stars = {}

-- Initialize star positions
for i = 1, numStars do
    stars[i] = { x = math.random(320), y = math.random(240) }
end

function playdate.update()
    -- Get crank input
    local crankInput = playdate.getCrankPosition()

    -- Update object angle based on crank input
    objectAngle = objectAngle + crankInput * 0.05

    -- Calculate object position around the circle
    local objectX = circleCenter.x + objectDistance * math.cos(objectAngle)
    local objectY = circleCenter.y + objectDistance * math.sin(objectAngle)

    -- Draw the starfield background
    playdate.display.clear()
    for i = 1, numStars do
        playdate.display.point(stars[i].x, stars[i].y)
    end

    -- Draw the circle
    playdate.display.circle(circleCenter.x, circleCenter.y, circleRadius)
    playdate.display.stroke()

    -- Draw the controllable object
    playdate.display.circle(objectX, objectY, objectRadius)
    playdate.display.fill()
end
