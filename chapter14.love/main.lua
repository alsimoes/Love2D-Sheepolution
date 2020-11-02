--! file: main.lua
--
-- Main file: the entry point of the game.
--
function love.load()
    Object = require("lib.classic")
    require "lib.player"
    require "lib.enemy"

    player = Player()
    enemy = Enemy()
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
end

function love.draw()
    player:draw()
    enemy:draw()
end
