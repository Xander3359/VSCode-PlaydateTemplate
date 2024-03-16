import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/object"

playerSprite = playdate.graphics.sprite.new()
playerSprite:setImage(playdate.graphics.image.new('sprites/ShipSprite'))
playerSprite:moveTo(200, 120)
playerSprite:addSprite()
