function love.load()
    fruits = {"apple", "banana"}
    table.insert(fruits, "pear")
    table.insert(fruits, "tamarindo")
    table.remove(fruits, 2)
    fruits[1] = "tomato"
end

function love.update(dt)

end

function love.draw()
    --love.graphics.print(fruits[1], 100, 100)
    --for i = 1,#fruits do
    for i,frt in ipairs(fruits) do
        love.graphics.print(frt, 100, 100 + 50 * i)
    end
end