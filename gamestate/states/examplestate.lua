local state = {}

    function state:enter()
        print(tostring(state.name) .. ' entered')
    end

    function state:update(dt)
        
    end

    function state:draw()
        love.graphics.print("hello world", 0, 0)
    end

    function state:keypressed(key)

    end

    function state:keyreleased(key)
        
    end

    function state:exit()
        print(tostring(state.name) .. " exited")
    end

return state
