--! file: main.lua

function love.load()
    -- Create 2 rectangle
    r1 = {
        x = 10,
        y = 100,
        width = 100,
        height = 100
    }
    r2 = {
        x = 250,
        y = 120,
        width = 150,
        height = 120
    }
end

function love.update(dt)
    -- Make one of rectanglde move
    r1.x = r1.x + 100 * dt
end

function love.draw()
    love.graphics.rectangle("line", r1.x, r1.y, r1.width, r1.height)
    love.graphics.rectangle("line", r2.x, r2.y, r2.width, r2.height)
end
