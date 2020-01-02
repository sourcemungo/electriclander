var fix;
fix = physics_fixture_create();
physics_fixture_set_angular_damping(fix,2.5);
physics_fixture_set_linear_damping(fix,global.lander_damping_room);
//physics_fixture_set_collision_group(fix,0);
physics_fixture_set_restitution(fix,0.7);
physics_fixture_set_density(fix,0.1);
physics_fixture_set_polygon_shape(fix);
physics_fixture_add_point(fix,0,-16);
physics_fixture_add_point(fix,16,16);
physics_fixture_add_point(fix,-16,16);
physics_fixture_set_friction(fix,0.6);
physics_fixture_bind(fix,self);
//phy_bullet=true;
physics_fixture_delete(fix);


