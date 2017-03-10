///story_update()

switch(obj_progress.story)
{
case story_progress.chapter2_banter1:  
    obj_progress.story = story_progress.chapter2_banter2;
    break;
case story_progress.chapter2_banter2:  
    obj_progress.story = story_progress.chapter2_banter1;
    break;
}



