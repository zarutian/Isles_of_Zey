Game = {}
Game.map_x = 0
Game.map_y = 0
Game.map_dispHeight = 16
Game.map_dispWidth  = 16
Game.map_dispDepth  =  2
Game.map = {}
Game.map[1] = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
}
Game.map[2] = {
  {0,   0,    0, 0,     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,   0,  106, 107, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 113,  114, 115, 116, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 121,  122, 123, 124, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  
  {0, 129,  130, 131, 132, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 137,  138, 139, 140, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,   0,    0,   0,   0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,   0,    0,   0,   0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  
  {0,   0,    0,  30,   0,   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0,  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
Game.draw_map = function ()
  for z = 1, Game.map_dispDepth do
    for y = 1, Game.map_dispHeight do
      for x = 1, Game.map_dispWidth do
        local tile_idx = Game.map[z][y + Game.map_y][x + Game.map_x] or 0
        love.graphics.draw(Game.tiles[tile_idx], (x * 32), (y * 32))
      end
    end
  end
end


function printTab(t)
  for k, v in pairs(t) do
    print(k, v)
  end
  for k, v in ipair(t) do
    print(k, v)
  end
end

love.load = function ()
  print("love.load() start")
  -- our tiles
  Game.tiles = {}
  
  Game.tiles[0] = love.graphics.newImage(love.image.newImageData(32, 32))
  
  local MasterTile1 = love.image.newImageData("/rsrc/Master_tile1.png")
  local j, i = 0, 0
  local maximum = math.min(256, math.ceil(MasterTile1:getHeight(), 32))
  for i = 0, maximum do
    for j = 0, 7 do
      local tile = love.image.newImageData(32, 32)
      tile:paste(MasterTile1, 0, 0, (32 * j), (32 * i), 32, 32)
      local tileImg = love.graphics.newImage(tile)
      table.insert(Game.tiles, tileImg)
    end
  end
  print(#Game.tiles)
end
love.draw = function ()
  Game.draw_map()
end
love.update = function (deltatime) end
love.mousepressed = function (x, y, button) end
love.mousereleased = function (x, y, button) end
love.keypressed = function (key)
  if key == "up" then
    Game.map_y = Game.map_y - 1
    if Game.map_y < 0 then Game.map_y = 0 end
  elseif key == "down" then
    Game.map_y = Game.map_y + 1
  elseif key == "left" then
    Game.map_x = Game.map_x - 1
    if Game.map_x < 0 then Game.map_x = 0 end
  elseif key == "right" then
    Game.map_x = Game.map_x + 1
  end
end
love.keyreleased = function (key) end
love.focus = function (gotFocus) end
love.quit = function () end