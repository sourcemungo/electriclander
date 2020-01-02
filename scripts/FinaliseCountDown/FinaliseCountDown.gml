virtual_key_delete(vkContinue);
surface_free(countdown_surface);
sound_stop(snd_CountDown);
FinaliseButtonController();
with(obj_Star) instance_destroy();
instance_destroy();