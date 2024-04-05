p = love.physics
g = love.graphics
k = love.keyboard


function SplashScreen()
  love.graphics.setColor(1, 1, 1, fade)
  love.window.setFullscreen(true)
  local width, height = g.getDimensions()
  local ScaleX = width/3840
  local ScaleY = height/2160
  g.draw(background, 0, 0, 0, ScaleX, ScaleY)
  if fade < 1 then
    fade = fade + .01
  end
end


function love.load()
--Splash Screen background image loading

  background = g.newImage('Images/TitleScreen.jpg')


  -- Hello World Text
  love.graphics.setFont(love.graphics.newFont (50))
  font = love.graphics.getFont ()
  text = love.graphics.newText(font)
  text:add( {{0,0,0}, "Hello World!"}, 100, 100)

--Fade Value For SplashScreen

  fade = 0

  width, height = g.getDimensions()

  Center = {width/2, height/2}
end


function love.update(dt)


end


function love.draw()
  SplashScreen()
end
