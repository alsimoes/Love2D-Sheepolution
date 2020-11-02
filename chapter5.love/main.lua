function love.load()
    x = 100
    y = 50
end

function love.update(dt)
    print(dt)
    if x < (1280 - 200) then
        x = x + 100 * dt
    end 
    
    if y < (720 - 150) then
       y = y + 50 * dt
    end
end

function love.draw()
    love.graphics.print("x = " .. x .. " / y = " .. y, 5, 5)
    love.graphics.rectangle("line", x, y, 200, 150)
end