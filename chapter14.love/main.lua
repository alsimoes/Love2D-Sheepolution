--! file: main.lua
--
-- Main file: the entry point of the game.
--
function love.load()
    Object = require("lib.classic")
    require "lib.player"

    player = Player()
end

function love.update(dt)
    player:update(dt)
end

function love.draw()
    player:draw()
end
