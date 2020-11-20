--! file: main.lua
--
-- Main file: the entry point of the game.
--
function love.load()
    --updateScreen()
    Object = require("lib.classic")
    require "lib.player"
    require "lib.enemy"
    require "lib.bullet"

    love.graphics.setBackgroundColor(150/255, 220/255, 255/255)

    player = Player()
    enemy = Enemy()
    lsitOfBullets = {}

end

function love.keypressed(key)
    player:keyPressed(key)
    
    if key == "f" then 
        updateScreen()
    end
    
    if key == "escape" then
        love.event.quit()
    end
end

function updateScreen()
    if love.window.getFullscreen() then
        love.window.setFullscreen(false, "desktop")
    else
        love.window.setFullscreen(true, "desktop")
    end 
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
    
    for i,bullet in ipairs(lsitOfBullets) do
        bullet:update(dt)
        bullet:checkCollision(enemy)
        bullet:checkMissedShot()
        if bullet.dead then
            table.remove(lsitOfBullets, i)
        end
    end
end

function love.draw()
    player:draw()
    enemy:draw()

    for i,bullet in ipairs(lsitOfBullets) do
        bullet:draw()
    end
end
