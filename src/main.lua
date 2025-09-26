-- holds the images and positions of the pieces
pieces = {}

function love.load()
    love.window.setTitle("Chess Engine")
    love.window.setMode(800, 800)

    local bishop = love.graphics.newImage("assets/bishop.png")
    local king = love.graphics.newImage("assets/king.png")
    local knight = love.graphics.newImage("assets/knight.png")
    local pawn = love.graphics.newImage("assets/pawn.png")
    local queen = love.graphics.newImage("assets/queen.png")
    local rook = love.graphics.newImage("assets/rook.png")

    -- figure out inital positions for each piece
end

function love.draw()
    local tileWidth = love.graphics.getWidth() / 8
    local tileHeight = love.graphics.getHeight() / 8

    -- Draw the board 8x8
    for i = 0, 7 do
        for j = 0, 7 do
            if (i + j) % 2 == 0 then
                love.graphics.setColor(love.math.colorFromBytes(131, 89, 54))
            else
                love.graphics.setColor(love.math.colorFromBytes(191, 153, 90))
            end
            love.graphics.rectangle("fill", i * tileWidth, j * tileHeight, tileWidth, tileHeight)
        end
    end
end
