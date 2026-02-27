local gamestate = {}
local state = nil
local curState = nil
local frozen = false
local storedCurState = nil

function gamestate:switch(newState)
    if state then
        state:exit()
        gamestate:unfreeze()
        --package.loaded[curState] = nil
        curState = nil
        state = nil
        collectgarbage("collect")
    end
    curState = "states." .. newState
    state = require(curState)
    state.name = tostring(curState)
    state:enter()
    storedCurState = curState
    onResults = false
end

function gamestate:reset()
    if state then
        state:exit()
        curState = nil
        state = nil
        collectgarbage("collect")
    end
    curState = storedCurState
    state = require(curState)
    state:enter()
    onResults = false
end

function gamestate:exit()
    if state then
        state:exit()
    end
end

function gamestate:update(dt)
    if state then
        if frozen == false then
            state:update(dt)
        end
    end
end

function gamestate:draw()
    if state then
        state:draw()
    end
end

function gamestate:keypressed(key)
    if state then
        if frozen == false then
            state:keypressed(key)
        end
    end
end

function gamestate:keyreleased(key)
    if state then
        if frozen == false then
            state:keyreleased(key)
        end
    end
end

function gamestate:freeze()
    if state then
        if frozen == false then
            frozen = true
            print("gamestate frozen")
        end
    end
end

function gamestate:unfreeze()
    if state then
        if frozen == true then
            frozen = false
            print("gamestate unfrozen")
        end
    end
end

return gamestate