function love.load()
    x = 100
    y = 50
end

function love.update(dt)
    if love.keyboard.isDown("right") then -- This line aways executes fist!!
        x = x + 100 * dt
    elseif love.keyboard.isDown("left") then
        x = x - 100 * dt
    end

    if love.keyboard.isDown("up") then
        y = y - 100 * dt
    elseif love.keyboard.isDown("down") then
        y = y + 100 * dt
    end 
end

function love.draw()
    love.graphics.print("x = " .. x .. " / y = " .. y, 5, 5)
    love.graphics.rectangle("line", x, y, 200, 150)
end