health -= global.flare_damage*global.lander_can_damage;

with(other)
    {
        instance_destroy();
    }

ProcessDamage(false);