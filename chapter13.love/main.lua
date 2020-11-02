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

function checkCollision(a, b)
    -- É comum usar underscore para variaveis locais.
    local a_left = a.x
    local a_right = a.x + a.width
    local a_top = a.y
    local a_botton = a.y + a.height

    local b_left = b.x
    local b_right = b.x + b.width
    local b_top = b.y
    local b_botton = b.y + b.height
       
    -- Checa se...   
    -- a possição do lado direito de "a" é maior que a posição do lado esquedo de "b"...
    if a_right > b_left and
       -- a possição do lado esquedo de "a" é menor que a posição do lado direito de "b"...
       a_left < b_right and
       -- a possição do lado de baixo de "a" é maior que a posição do lado de cima de "b"...
       a_botton > b_top and 
       -- a possição do lado de cima de "a" é menor que a posição do lado de baixo de "b"...
       a_top < b_botton then
        -- resultando TRUE para todas as alternativas há uma colisão
        return true
    else
        -- senão não há coplisão
        return false
    end
end

function love.update(dt)
    -- Make one of rectanglde move
    r1.x = r1.x + 100 * dt
end

function love.draw()
    local mode
    if checkCollision(r1, r2) then
        mode = "fill"
    else
        mode = "line"
    end 

    love.graphics.rectangle(mode, r1.x, r1.y, r1.width, r1.height)
    love.graphics.rectangle(mode, r2.x, r2.y, r2.width, r2.height)
end
