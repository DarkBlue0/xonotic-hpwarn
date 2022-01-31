AUTOCVAR(cl_hpwarn, float, 30, "HP warning limit (0 to disable)");
REGISTER_MUTATOR(mod_hpwarn, cvar("cl_hpwarn"));

void toggle_alarm(entity player, int ch, Sound sound) {
	TC(Sound, sound);
	sound(player, ch, sound, VOL_BASEVOICE, ATTEN_NONE);	
}

MUTATOR_HOOKFUNCTION(mod_hpwarn, PlayerDamaged) {
	if(!autocvar_cl_hpwarn)
		return;

	entity player = M_ARGV(1, entity);
	
	float hp = GetResource(player, RES_HEALTH); // No legendary HP here.
	
	if(hp <= autocvar_cl_hpwarn)
		toggle_alarm(NULL, CH_PAIN_SINGLE, SND_VEH_ALARM);
	else
		toggle_alarm(NULL, CH_PAIN_SINGLE, SND_Null);

	return;
}
