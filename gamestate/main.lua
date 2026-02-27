gamestate = require("gamestate")

function love.load()
    gamestate:switch("examplestate") -- to switch to a new state

    -- gamestate:reset() -- to reset the current state

    -- gamestate:freeze() -- to freeze the current state

    -- gamestate:unfreeze() -- to unfreeze the current state
end

function love.update(dt)
    gamestate:update(dt)
end

function love.draw()
    gamestate:draw()
end 

function love.keypressed(key)
    gamestate:keypressed(key)
end

function love.keyreleased(key)
    gamestate:keyreleased(key)
end
