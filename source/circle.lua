import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/object"

class('Circle').extends(playdate.graphics.sprite)

function Circle:init(x, y, r, filled)
    Circle.super.init(self)
    self:moveTo(x, y)
    local circleImage = playdate.graphics.image.new(r * 2, r * 2)
    playdate.graphics.pushContext(circleImage)
    if filled then
        playdate.graphics.fillCircleAtPoint(r, r, r)
    else
        playdate.graphics.drawCircleAtPoint(r, r, r)
    end
    playdate.graphics.popContext()
    self:setImage(circleImage)
end
