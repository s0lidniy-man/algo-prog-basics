using HorizonSideRobots
robot = Robot(animate = true)

function cross(robot)
    a::Int = 0
    b::Int = 0
    k::Int = 0
    a,b = left_ugol(robot, West)
    for side in (Ost, Nord, West, Sud)
        while !isborder(robot, side)
            putmarker!(robot)
            move!(robot, side)
        end
    end
    side1 = West
    s::Int = 0
    while s != 1
        for side in (Ost, West)
            if s == 1
                break
            end
            n::Int = 1
            while !isborder(robot, side)
                move!(robot, side)
                n += 1
            end
            if n == 12
                move!(robot, Nord)
            else
                s = 1
                side1 = side
            end
        end
    end
    if side1 == West
        k = 1
    end
    perimetr!(robot, side1)
    all_v(robot,a,b)
end

function left_ugol(robot, side1)
    a::Int = 0
    b::Int = 0
    while !isborder(robot, side1) || !isborder(robot, Sud)
        for side in (Sud, side1)
            while !isborder(robot, side)
                move!(robot, side)
                if side == Sud
                    a += 1
                else
                    b += 1
                end
            end
        end
    end
    return a,b
end

function perimetr!(robot, side1)
    for side in (Nord, side1, Sud, inverse(side1))
        if side == Nord
            side2 = side1
        elseif side == side1
            side2 = Sud
        elseif side == Sud
            side2 = inverse(side1)
        elseif side == inverse(side1)
            side2 = Nord
        end
        while isborder(robot, side2)
            putmarker!(robot)
            move!(robot, side)
        end
        putmarker!(robot)
        move!(robot,side2)
    end
    while !ismarker(robot)
        putmarker!(robot)
        move!(robot, Nord)
    end
end

inverse(side::HorizonSide) = HorizonSide((Int(side)+2)%4)

function all_v(robot, a, b)
    a1::Int = a
    b1::Int = 11 - b
    left_ugol(robot, West)
    while a != 0
        move!(robot, Nord)
        a -= 1
    end
    while b != 0
        if isborder(robot, Ost)
            left_ugol(robot, Ost)
            while a1 != 0 
                move!(robot, Nord)
                a1 -= 1
            end
            while b1 != 0
                move!(robot, West)
                b1 -=1
            end
            break
        end
        move!(robot, Ost)
        b -= 1
    end
end
