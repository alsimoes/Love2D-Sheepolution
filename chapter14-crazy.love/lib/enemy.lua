--! file: enemy.lua
--
-- Enemy class definitions
--

Enemy = Object:extend()

function Enemy:new()
    self.image = love.graphics.newImage("assets/snake.png")
    self.x = love.graphics.getWidth() / 2 - (self.image:getWidth()/2)
    self.y = 520
    self.speed = 100
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
end

function Enemy:update(dt)
    self.x = self.x + self.speed * dt

    local window_width = love.graphics.getWidth()

    if self.x < 0 then
        self.x = 0
        self.speed = -self.speed
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
        self.speed = -self.speed
    end
end

function Enemy:draw()
    love.graphics.draw(self.image, self.x, self.y)
end