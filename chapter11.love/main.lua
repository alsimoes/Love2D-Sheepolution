--! file: main.lua

function love.load()
    Object = require "classic"
    require "shape"
    require "rectangle"
    require "circle"

    r1 = Rectangle(100, 100, 200, 50)
    r2 = Circle(350, 80, 40)

    -- print(r1.test, r2.test)
end

function love.update(dt)
    r1:update(dt)
    r2:update(dt)
end

function love.draw()
    love.graphics.print(configTable.window.title, configTable.window.width - 200, configTable.window.height - 50)
    r1:draw()
    r2:draw()
end
