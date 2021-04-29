function markall(r::Robot)
    nun_vert = get_num_steps_movements!(r,Sud)
    nun_hor = get_num_steps_movements!(r,West)
   

    side=orthogonal_side
    mark_row!(r,side)
    while isborder!(r,Nord)==false
        side=inverse(side)
        mark_row!(r,side)
    end
   

    movements!(r,Ost,num_hor)
    movements!(r,Nord,num_hor)
end