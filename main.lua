function love.load() 
        -- inicia o jogador
        birdX = 62
        birdY = 200
end

function love.update( dt )
    local gravity = 30 -- força que simula a gravidade no jogo
    local jumpForce = 150 -- força do pulo ao aperta qualquer tecla

    birdY = birdY + (gravity * dt)
    
    if love.keyboard.isDown("up") then
        birdY = birdY - jumpForce * dt
    end
end

function love.draw()

    -- background
    love.graphics.setColor(.18, .36, .46)
    love.graphics.rectangle('fill', 0, 0, 300, 388)
    
    -- player
    love.graphics.setColor(.87, .84, .27)
    love.graphics.rectangle('fill', birdX, birdY, 30, 25)
end