using HorizonSideRobots

function findmarker!(robot)::Nothing
    side = Nord
    max_numsteps = 0
    while !findmarker!(robot, side, max_numsteps)
        side = left(side)
        (side in (Nord, Sud) && (max_numsteps += 1))
    end
end

function findmarker!(robot, side, max_numsteps)::Bool
    for _ in 0:max_numsteps
        ismarker(robot) && return true
        move!(robot, side)
    end
    return ismarker(robot)
end

left(side::HorizonSide) = HorizonSide(mod(Int(side)+1, 4))
