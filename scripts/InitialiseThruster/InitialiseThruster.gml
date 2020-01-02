
  // make the particle system
  ps = part_system_create();

  // the thrust particles
  pt1 = part_type_create();
  part_type_shape(pt1,pt_shape_explosion);
  part_type_size(pt1,0.1,0.2,-0.01,0);
  part_type_speed(pt1,4,10,0,0);
  part_type_direction(pt1,0,270,0,0);
  part_type_color1(pt1,c_white);
  part_type_alpha2(pt1,1,0.4);
  part_type_life(pt1,20,30);
  part_type_gravity(pt1,0.2,270);


  // create the emitter
  em_thruster = part_emitter_create(ps);
  