--! file: player.lua
--
-- Player class definitions
--

Player = Object:extend()

function Player:new()
    self.image = love.graphics.newImage("assets/panda.png")
    self.x = love.graphics.getWidth() / 2 -(self.image:getWidth() /2)
    self.y = 20
    self.speed = 500
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
    self.health = 1
    self.listOfHearts = {}
    table.insert(self.listOfHearts, love.graphics.newImage("assets/heart_1.png"))
    table.insert(self.listOfHearts, love.graphics.newImage("assets/heart_2.png"))
    table.insert(self.listOfHearts, love.graphics.newImage("assets/heart_3.png"))
    table.insert(self.listOfHearts, love.graphics.newImage("assets/heart_4.png"))
    table.insert(self.listOfHearts, love.graphics.newImage("assets/heart_5.png"))
end

function Player:getHit()
    if self.health < 5 then
        self.health = self.health + 1
    end
end

function Player:keyPressed(key)
    if key == "space" and (self.health < 5) then
        table.insert(lsitOfBullets, Bullet(self.x+(self.width/2)-4, self.y+self.height))
    elseif key == "escape" and self.health == 5 then
        love.load()
    end
end

function Player:update(dt)
    if self.health < 5 then
        if love.keyboard.isDown("left") then
            self.x = self.x - self.speed * dt
        elseif love.keyboard.isDown("right") then
            self.x = self.x + self.speed * dt
        end
    end

    local window_width = love.graphics.getWidth()

    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end
    
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
    love.graphics.draw(self.listOfHearts[self.health], self.x + 71, self.y +10)
    
end