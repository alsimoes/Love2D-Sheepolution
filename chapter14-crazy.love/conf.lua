--! file:conf.lua
ConfigTable = {}

function love.conf(t)
    t.window.title = "Panda Shooter!"
    t.window.icon = "assets/panda_icon.png"
    t.version = "11.3"
    t.console = true 
    -- Best options as 1280 x 720 or 1920 x 1080 
    t.window.width = 1280
    t.window.height = 720
    configTable = t
=======
    -- 16:9 options -> 1024×576 / 1280x720 / 1920x1080 
    t.window.width = 1280
    t.window.height = 720
    ConfigTable = t
>>>>>>> Stashed changes
end