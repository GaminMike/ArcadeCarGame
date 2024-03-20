p = love.physics
g = love.graphics
k = love.keyboard

function SplashScreen()
  print("welcome to the game")
  background = g.newImage('sprites/SplashScreen.jpg')
end


function love.load()
  SplashScreen()
  love.window.setFullscreen(true)
end

function love.update(dt)
  -- Keyboard Block


     --[[
  if k.isDown("up") or k.isDown("w") then
    player.b:applyForce(0, -300) 
  end
  if k.isDown("down") or k.isDown("s") then
      player.b:applyForce(0, 300)
  end
  if k.isDown("left") or k.isDown("a") then
    player.b:applyForce(-300, 0)
  end
  if k.isDown("right") or k.isDown("d") then
    player.b:applyForce(300, 0)
  end
  ]]--
end
function love.draw()
  g.draw(background, 0, 0)
end
