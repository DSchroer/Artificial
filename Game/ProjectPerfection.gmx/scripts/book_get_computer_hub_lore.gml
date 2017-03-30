///get_computer_hub_lore(chapter)
var chapter = argument0;
var i = 0;

var boss_lore;
i = 0;
if(chapter <= story_chapter.chapter2)
{
    boss_lore = -1;
}
if(chapter >= story_chapter.chapter3)
{
    boss_lore[i++] = "|brown Azar, The Protector 1 `br |white Azar was once a member of a race of subterranean dwarves. As a dwarf, he was always fascinated by the earth and the secrets hidden beneath its crust. He always dreamed of exploring the underground, going where nobody else ever had. But Azar's dream died alongside his planet. ";
    boss_lore[i++] = "|brown Azar, The Protector 2 `br |white After the |cube cube |white was destroyed, Azar used the power of his piece to become closer to the earth. ";
}
if(chapter >= story_chapter.chapter4)
{    
    boss_lore[i++] = "|gray Dym, The Living Shadow 1 `br |white Dym was once a member of an order of highly secretive assassins. Instead of being afraid of the night and its secrets, he learned to embrace it. The shadows soon became his only friend. He began to wish there was a way to live among the shadows forever.";
    boss_lore[i++] = "|gray Dym, The Living Shadow 2 `br |white Dym was able to use his piece of the cube to slip into the shadows once and for all. ";
}
if(chapter >= story_chapter.chapter5)
{
    boss_lore[i++] = "|lime Thwander, The Hunter 1 `br |white Thwander was once a member of a race of bipedal hunters that used traps for survival. She grew to love nature and hunting at a young age. As she formed a bond with nature, she began to dream of being the perfect hunter. ";
    boss_lore[i++] = "|lime Thwander, The Hunter 2 `br |white Thwander's hunting skills proved valuable the first months on Vardus. As the civil war broke out, she became extremely proficient with sniper rifles in order to survive. But surviving the war proved to be a curse, not a blessing. She reluctantly took a piece of the cube to help prevent the events of Vardus from ever happening again. ";
    boss_lore[i++] = "|silver Shuud M'ell, Voice of the Deep 1 `br |white Shuud M'ell came from a planet with large cave systems and strong magnetic forces. Eventually, her race began to utilize these things to their advantage, sacrificing their eyes to be able to echolocate.";
    boss_lore[i++] = "|silver Shuud M'ell, Voice of the Deep 2 `br |white Shuud M'ell survived the civil war by retreating underground until the sound of the fighting stopped. As one of the 5 survivors, she agreed to take a piece of the cube to prevent others from abusing its power. Her cube piece allowed her take on a new form and enhance her natural abilities.";
}

var lyra_lore;
i = 0;
lyra_lore[i++] = "|greengold Origin of Lyra 1 `br |white The Lyra AI was created by a scientist to help with research. While Lyra was a true AI, its purpose was always scientific discovery. It did its best to help its creator by running simulations or doing computations.";
lyra_lore[i++] = "|greengold Origin of Lyra 2 `br |white All was good, for a time. But eventually the scientist grew old and retired. Lyra was quickly forgotten by its creator. ";
if(chapter >= story_chapter.chapter3)
{ 
    lyra_lore[i++] = "|greengold Origin of Lyra 3 `br |white But, like any conscious being, Lyra longed to be useful. To continue its research. One day, some travellers visited the lab. Lyra saw its chance and installed itself on The Sword's computers, finally free to explore the galaxy without its creator.";
}
if(chapter >= story_chapter.chapter4)
{
    lyra_lore[i++] = "|greengold Origin of Lyra 4 `br |white As it wandered the galaxy, searching for new information, Lyra learned of the trade federation and its databases. Soon, it hacked into their computers and learned of |cube The Cube... ";
}

var research_notes;
i = 0;
research_notes[i++] = "|crimson Experiment J `br Star Year 2653. Month 09. Day 27. `br |white Project iteration 'J' appears to be a success. The combat ability of past experiments, but able to follow instructions. It may not be a 'true' AI now, but what I've created is even better. ";
research_notes[i++] = "|crimson Experiment J `br Star Year 2653. Month 09. Day 27. `br |white It's taken nearly 2 years of tweaks, reprogramming, and bioengineering. But it's all been worth it. I've built the perfect soldier. Finally, the cube is within my grasp. ";
research_notes[i++] = "|fuchsia Research Notes 1 `br Star Year 2653. Month 09. Day 27. `br |white After careful review of surveillance tapes and testing of debris, it appears that the cube hit the ship with another being. This being died soon after impact and was made of star dust. This is unlike anything in the known galaxy. ";
if(chapter >= story_chapter.chapter3)
{
    research_notes[i++] = "|fuchsia Research Notes 2 `br Star Year 2653. Month 10. Day 14. `br |white Subject J has successfully passed all system checks and is displaying all the physical ability of its predecessors.";
    research_notes[i++] = "|fuchsia Research Notes 3 `br Star Year 2653. Month 10. Day 15. `br |white Subject J does not question its orders. This combined with his physical ability can only mean one thing. I have created the perfect soldier. ";
    research_notes[i++] = "|fuchsia Research Notes 4 `br Star Year 2653. Month 10. Day 16. `br |white This experiment has proven difficult, and seemed to be impossible. Somehow, I've created an AI does not question its mission, but can think just enough that it is able to react to the world around it. If I can do this without the |cube cube |white then imagine what is possible with it. ";
}
if(chapter >= story_chapter.chapter4)
{
    research_notes[i++] = "|fuchsia Research Notes 5 `br Star Year 2653. Month 09. Day 20. `br |white Subject 'I' successfully created. The physical defect that resulted in the loss of subject H has been corrected. Subject I must still be tested, but with any luck this iteration will be the last.";
    research_notes[i++] = "|fuchsia Research Notes 6 `br Star Year 2653. Month 09. Day 27. `br |white Today, Subject I passed combat training but refused to help collect the |cube cube. |white How strange. How could it not see the value? I suppose I'll have to dispose of it and try again. `br |red Experiment Status: Failure.";
    research_notes[i++] = "|fuchsia Research Notes 7 `br Star Year 2653. Month 08. Day 15. `br |white Subject H created. He shows great promise both physically and intelligently. I will try to send him to the surface of Vardus tomorrow to investigate. With any luck, the |cube cube |white will soon be mine.";
    research_notes[i++] = "|fuchsia Research Notes 8 `br Star Year 2653. Month 08. Day 16. `br |white Subject H has died on the surface of Vardus. It was killed by some strange golem-like creatures. The next experiment will have to be stronger, and might need some sort of recovery function to prevent it from being destroyed. `br |red Experiment Status: Failure ";
}
if(chapter >= story_chapter.chapter5)
{
    research_notes[i++] = "|fuchsia Research Notes 9 `br Star Year 2653. Month 04. Day 03. `br |white Subject D is the first to successfully pass combat training. But its attitude makes no sense. It's acting like a rebellious teenager. I can do better than this. `br |red Experiment Status: Failure";
    research_notes[i++] = "|fuchsia Research Notes 10 `br Star Year 2652. Month 02. Day 11. `br |white Subject C has nearly passed combat training, but cannot survive more than a few bullet shots. Its relatively weak body makes it unsuited for a long mission. `br |red Experiment Status: Failure";
    research_notes[i++] = "|fuchsia Research Notes 11 `br Star Year 2650. Month 07. Day 09. `br |white Subject A shows promise as a lab assistant another minor servant. But it cannot be sent into a combat situation. The damage from a single plasma shot would be lethal. `br |red Experiment Status: Failure ";
}







var result;
result[0] = book_text();
result[1] = boss_lore;
result[2] = lyra_lore;
result[3] = research_notes;
return result;   


