///shud_stop_other_audio(leave_alone)

var leave_alone = argument0;

if(leave_alone != snd_shuude_echolocate)
{
    audio_stop_sound(snd_shuude_echolocate);
}
if(leave_alone != snd_shuude_scream_small)
{
    audio_stop_sound(snd_shuude_scream_small);
}
if(leave_alone != snd_shuude_scream_beam)
{
    audio_stop_sound(snd_shuude_scream_beam);
}
if(leave_alone != snd_shuude_scream_long)
{
    audio_stop_sound(snd_shuude_scream_long);
}
