



function mark_kross(r::Robot)

    for side in (Nord,West,Sud,Ost)

num_steps = get_num_steps_putmarkers!(r,side)

        movements!(r,inverse(side),num_steps)
end
putmarker!(r)

end

inverse(side::HorizonSide)= HorizonSide(mod(Int(side)+2,4))
function get_num_steps_putmarkers!(r::Robot, side::HorizonSide)

    num_steps=0

    while isborder(r,side)==false

        move!(r,side)

    putmarker!(r)

    num_steps += 1

    end

    return num_steps

end

movements!(r::Robot,side::HorizonSide,num_steps) =

for _ in 1:num_steps

    move!(r,side)

end