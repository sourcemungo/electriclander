


globalvar pfxSeeker,pfxStars,pfxLander, part_sys;
pfxSeeker=part_type_create();
part_type_sprite(pfxSeeker,spr_SeekerParts,0,0,1)
part_type_orientation(pfxSeeker,0,360,4,0,0)
part_type_alpha3(pfxSeeker,1,1,0)
part_type_life(pfxSeeker,75,105)
part_type_direction(pfxSeeker,0,360,0,0)
part_type_speed(pfxSeeker,4,5,0,2)
part_type_gravity(pfxSeeker,0.2,270)


pfxStars=part_type_create();
part_type_sprite(pfxStars,spr_StarParts,0,0,1);
part_type_orientation(pfxStars,0,360,4,0,0)
part_type_alpha3(pfxStars,1,0.5,0)
part_type_life(pfxStars,75,105)
part_type_direction(pfxStars,0,360,0,0)
part_type_speed(pfxStars,2,5,0,0)
part_type_gravity(pfxStars,0.05,270)

pfxLander=part_type_create();
part_type_sprite(pfxLander,spr_LanderParts,0,0,1);
part_type_orientation(pfxLander,0,360,4,0,0)
part_type_alpha3(pfxLander,0.5,1,0)
part_type_life(pfxLander,75,105)
part_type_direction(pfxLander,0,360,0,0)
part_type_speed(pfxLander,3,7,0,0)
part_type_gravity(pfxLander,0.1,270)



global.part_sys=part_system_create()
part_system_depth(global.part_sys,10)