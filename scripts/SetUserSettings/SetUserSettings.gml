ini_open("Settings.ini");
ini_write_real("UserSetting","Thrust",global.thrust);
ini_write_real("UserSetting","RotationSensitivity",global.rotation_sensitivity);
ini_write_real("UserSetting","RedFreedom",global.red_freedom);
ini_write_real("UserSetting","LanderDamping",global.lander_damping);
ini_close();