using HorizonSideRobots
robot = Robot(animate = true)

function cross(robot)
    s::Integer = 0
    k::Integer = 0
    s = border(robot, Sud)
    k = border(robot, West)

    while isborder(robot, Nord) == false
        linia(robot)
    end

    border(robot, West)
    border(robot, Sud)
    move_move!(robot, Ost, k)
    move_move!(robot, Nord, s)
end

function linia(robot)
    while isborder(robot, Nord) == false
        putmarker!(robot)
        move_move_move!(robot, Ost)
        move!(robot, Nord)
        putmarker!(robot)
        move_move_move!(robot, West)
        move!(robot, Nord)
    end
    putmarker!(robot)
    move_move_move!(robot, Ost)
end

function border(robot, side)
    s::Int = 0
    while isborder(robot, side) == false
        move!(robot, side)
        s += 1
    end
    return s
end

function move_move!(robot, side, s)
    for _ in 1:s
        move!(robot, side)
    end
end

function move_move_move!(robot, side)
    while isborder(robot, side) == false
        move!(robot, side)
        putmarker!(robot)  
    end
end
