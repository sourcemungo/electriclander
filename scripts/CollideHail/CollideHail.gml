hit_count += 1;
with(other) instance_destroy();
if(max_count-hit_count <= 0  )
    {
        with(obj_SeekerDoor) OpenDoorHor();
        with(obj_HailShooter) instance_destroy();
    }