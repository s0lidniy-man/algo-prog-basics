using HorizonSideRobots
robot = Robot(animate = true)

function perimetr(robot)
    s::Int = 0
    k::Int = 0
    while isborder(robot, Sud) == false
        move1!(robot, Sud)
        s += 1
    end
    while isborder(robot, West) == false
        move1!(robot, West)
        k += 1
    end

    for side in (Ost, Nord, West, Sud)
        border(robot, side)
    end

    move2!(robot, Ost, k)
    move2!(robot, Nord, s)

end
function move2!(robot, side, s)
    for _ in 1:s
        move1!(robot, side)
    end
end

function border(robot, side)
    while isborder(robot, side) == false
        putmarker!(robot)
        move1!(robot, side)
    end
end
