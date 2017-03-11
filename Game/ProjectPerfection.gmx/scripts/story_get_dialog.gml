///story_get_dialog()

var chapter = story_get_chapter();
if(obj_progress.story >= story_progress.chapter2_banter1 && chapter < story_chapter.chapter2)
{
    return -1;
}
else if(obj_progress.story >= story_progress.chapter3_banter1 && chapter < story_chapter.chapter3)
{
    return -1;
}
else if(obj_progress.story >= story_progress.chapter4_banter1 && chapter < story_chapter.chapter4)
{
    return -1;
}
else if(obj_progress.story >= story_progress.chapter5_banter1 && chapter < story_chapter.chapter5)
{
    return -1;
}
else if(obj_progress.story >= story_progress.chapter6_banter1 && chapter < story_chapter.chapter6)
{
    return -1;
}





switch(obj_progress.story)
{
case story_progress.chapter2_banter1:  
    return "J: (I feel a bit funny. What is this thing, anyway?)";
case story_progress.chapter3_banter1:  
    return "J: (Even without the cube piece it hasn't stopped. I still don't feel like myself). ";
case story_progress.chapter3_banter2:  
    return "J: (I'll just return to my mission. It's probably nothing. It's not like that useless rock could possibly be messing with my head.)";
case story_progress.chapter3_banter3:  
    return "J: (What... is this... thing? I...)";
case story_progress.chapter3_banter4:  
    return "J: (It's best not to worry about this right now. I'll take this piece back to the ship for now. I don't want to lose it.)";
case story_progress.chapter3_banter5:  
    return "J: (This definitely isn't poison. I don't feel sick just... different. I wonder what this could be though? Maybe the library has more information.)";
case story_progress.chapter4_banter1:  
    return "J: (Maybe the rest of the cube can answer my questions.)";
case story_progress.chapter4_banter2:  
    return "J: (That was exhilarating. Who would've thought that there would be hunters with such amazing prowess on a place like this.)";

case story_progress.chapter5_banter1:  
    return "J: (The cube has to be fixing the part of me that Lyra tried to remove. Apparently he was right about the cube's healing powers.)";
case story_progress.chapter5_banter2:  
    return "J: (But that brings up an important question. The cube is almost reassembled. But what will we do with it when it's complete?)";
case story_progress.chapter5_banter3:  
    return "J: (And what about me? I had no choice in this crazy mission at the start, but now I do. Was I just following orders? Or am I responsible for whatever happens next?)";
case story_progress.chapter5_banter4:  
    return "J: (If I stop gathering cube pieces now, then surely Lyra would hunt me down. Or leave me here to die. He'd probably just try to build another one of me to finish gathering the cube. Maybe I really do have no choice but to finish gathering it and see what happens.)";
case story_progress.chapter5_banter5:  
    return "J: (But doesn't there always have to be a choice?)";
case story_progress.chapter5_banter6:  
    return "J: (I guess this is it, huh?)";


        
    
    
}

return "Error_";

