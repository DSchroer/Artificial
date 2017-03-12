///story_get_chapter()

var chapter = story_chapter.chapter2 + obj_progress.cube_parts;
if(!tutorial_done())
{
    chapter = story_chapter.chapter1;
}
return chapter;

