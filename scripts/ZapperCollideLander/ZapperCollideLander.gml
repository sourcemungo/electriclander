if(global.lander_can_damage==1)
    {
        health -= global.zapper_damage;
        with(other)ProcessDamage(false);
        instance_destroy();
    }
