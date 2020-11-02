function love.load()
    listOfRectangles = {}
end

function createRect()
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.heigth = 90
    rect.speed = 200
    table.insert(listOfRectangles, rect)
end 

function love.keypressed(key)
    if key == "space" then
        createRect()
    end
end

function love.update(dt)
    for i,v in ipairs(listOfRectangles) do
        v.x = v.x + v.speed * dt
    end
end

function love.draw()
    for i,v in ipairs(listOfRectangles) do
        love.graphics.rectangle("line", v.x, v.y, v.width, v.heigth)
    end
end