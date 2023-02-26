local maxX,maxY,maxZ = ...

maxX = tonumber(maxX)
maxY = tonumber(maxY)
maxZ = tonumber(maxZ)

y = 0

local function forward()
    local result = turtle.forward()
    if result == false then
        turtle.dig()
        turtle.forward()
    end
end

local function up()
    local result = turtle.up()
    if result == false then
        turtle.digUp()
        turtle.up()
    end
end

while y < maxY do
    for z = 2, maxZ do
        for x = 2, maxX do
            forward()
        end
        if z % 2 == 0 then
            turtle.turnRight()
            forward()
            turtle.turnRight()
        else
            turtle.turnLeft()
            forward()
            turtle.turnLeft()
        end 
    end
    for x = 2, maxX do
        forward()
    end
    y = y+1
    if y < maxY then
        up()
        turtle.turnRight() 
        turtle.turnRight()
    end
end
turtle.turnRight()
turtle.turnRight()
y = maxY
for i = 2, maxY do
    turtle.down()
end
for i = 2, maxX do
    turtle.forward()
end
turtle.turnRight()
for i = 2, maxZ do
    turtle.forward()
end
turtle.turnRight()