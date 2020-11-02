--! file: main.lua

function love.load()
    love.graphics.setBackgroundColor(1, 1, 1)
    myImage = love.graphics.newImage("sheep.png")
    width = myImage:getWidth()
    height = myImage:getHeight()    
end

function love.update(dt)

end

function love.draw()
    love.graphics.draw(myImage, 100, 100)
    love.graphics.draw(myImage, 400, 200, 0, 2, 2, width/2, height/2)
    love.graphics.setColor(255/255, 200/255, 40/255)
end
