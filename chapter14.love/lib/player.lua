--! file: player.lua
--
-- Player class definitions
--

Player = Object:extend()

function Player:new()
    self.image = love.graphics.newImage("assets/panda.png") 
    self.x = 300
    self.y = 20
    self.speed = 500
    self.width = self.image:getWidth()
end

function Player:update(dt)
    -- Player movement
    if love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    end

    -- Get the window width 
    local window_width = love.graphics.getWidth()

    -- se X passar da esquerda fixe na esquerda
    if self.x < 0 then
        self.x = 0
    -- se X passar da direita fixe na direita
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end
    
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end