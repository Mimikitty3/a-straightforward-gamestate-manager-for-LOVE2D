local state = {}

    function state:enter()
        print(tostring(state.name) .. ' entered')
    end

    function state:update(dt)
        
    end

    function state:draw()

    end

    function state:keypressed(key)

    end

    function state:keyreleased(key)
        
    end

    function state:exit()
        print(tostring(state.name) .. " exited")
    end

return state