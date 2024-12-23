using HorizonSideRobots

function shuttle!(stop_condition::Function, robot, side) 
    n = Ost
    k = 0 
    while !stop_condition(side) 
        move!(robot, n, k) 
        n = inverse(n) 
        k += 1 
    end 
end

inverse(side::HorizonSide) = HorizonSide((Int(side)+2)%4)
HorizonSideRobots.move!(robot, side, num_steps) = for i in 1:num_steps move!(robot, side) end
