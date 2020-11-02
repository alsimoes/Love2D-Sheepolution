--! file:conf.lua

function love.conf(t)
    t.window.title = "Chapter 5 - Moving a rectangle"
    t.version = "11.3"
    t.console = false 
    -- Best options as 1280 x 720 or 1920 x 1080 
    t.window.width = 1280
    t.window.height = 720
end