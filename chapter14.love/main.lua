--! file: main.lua
--
-- Main file: the entry point of the game.
--
function love.load()
    Object = require("lib.classic")
    require "lib.player"
    require "lib.enemy"
    require "lib.bullet"

    player = Player()
    enemy = Enemy()
    lsitOfBullets = {}

end

function love.keypressed(key)
    player:keyPressed(key)
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
    
    for i,bullet in ipairs(lsitOfBullets) do
        bullet:update(dt)
    end
end

function love.draw()
    player:draw()
    enemy:draw()

    for i,bullet in ipairs(lsitOfBullets) do
        bullet:draw()
    end
end
