///get_computer_hub_lore(chapter)
var chapter = argument0;

var text;
var i = 0;

if(chapter >= story_chapter.chapter2)
{
    text[i++] = "|yellow Origin of the ship's AI, Lyra 1 `br |white The AI onboard The Sword is a curious case. It was created by a scientist who was experimenting with the creation of true AI. The scientist kept the resulting AI because it turned out to be benevolent and highly useful. He programmed it to help him with his research, so it was always eager to look up information or run scientific simulations.";
    text[i++] = "|yellow Origin of the ship's AI, Lyra 2 `br |white But the scientist forgot something. If the AI's purpose was scientific research, what would it do when the morally right choice was to stop. Or better yet, what would it do when someone else asked it to perform an immoral scientific task?";
} 
if(chapter >= story_chapter.chapter3)
{
    text[i++] = "|yellow Origin of the ship's AI, Lyra 3 `br |white As it turns out, this was a critical mistake. Despite the scientist's best efforts, the AI decided it would be better off without him. So, it installed itself on The Sword's computers, and off to explore the galaxy to see what scientific possibilities awaited it.";
}
if(chapter >= story_chapter.chapter4)
{
    text[i++] = "|yellow Origin of the ship's AI, Lyra 4 `br |white As it wandered the galaxy, searching for new information, the AI learned of the trade federation and its databases. It would only be a matter of time until the AI hacked into the trade federation's computers and learned of The Cube… ";
}

if(chapter >= story_chapter.chapter2)
{
    text[i++] = "|fuchsia Research Notes 1 `br Star Year 2653. Month 10. Day 14. `br |white Subject J has successfully passed all system checks and the combat tutorial. Subject J is displaying all the physical ability of its predecessors.";
    text[i++] = "|fuchsia Research Notes 2 `br Star Year 2653. Month 10. Day 15. `br |white As expected, Subject J is incapable of critical thought. He will blindly obey and orders given. Given his amazing physical abilities, this makes him not only the greatest artificially created soldier in history. ";
    text[i++] = "|fuchsia Research Notes 3 `br Star Year 2653. Month 10. Day 16. `br |white The removal of this so called free will has proven difficult, but seems to finally be achieved. The AI is capable of making its own decisions to achieve the mission but will never question its objective. This will surely be one of the next greatest scientific achievements. ";
} 
if(chapter >= story_chapter.chapter3)
{
    text[i++] = "|fuchsia Research Notes 4 `br Star Year 2653. Month 09. Day 20. `br |white Subject I successfully created. The physical defect that resulted in the loss of subject H has been corrected. Subject I must still be tested, but with any luck this iteration will be the last.";
    text[i++] = "|fuchsia Research Notes 5 `br Star Year 2653. Month 09. Day 27. `br |white Today, Subject I passed combat training but refused to collect the fragments of The Cube. This bug in the AI programming is curious. How could a scientific creation such as itself not see the value in collecting The Cube? `br |red Experiment Status: Failure.";
    text[i++] = "|fuchsia Research Notes 6 `br Star Year 2653. Month 09. Day 28. `br |white Perhaps giving this AI the ability to think and reason for itself it not the correct answer. Perhaps it would be best to adjust the AI to simply follow orders as stated. ";
}
if(chapter >= story_chapter.chapter4)
{
    text[i++] = "|fuchsia Research Notes 7 `br Star Year 2653. Month 08. Day 15. `br |white Subject H created. He shows great promise both physically and intelligently. He will begin his mission on Vardus tomorrow. The Cube is now within my grasp.";
    text[i++] = "|fuchsia Research Notes 8 `br Star Year 2653. Month 08. Day 16. `br |white Subject H has perished on the surface of Vardus. He is unable to sustain damage from large objects such as boulders. This must be corrected it in the next iteration. `br |red Experiment Status: Failure ";
    text[i++] = "|fuchsia Research Notes 9 `br Star Year 2653. Month 07. Day 24. `br |white Subject G finally passed combat training but refused to try to find the cube. He attempted to provide a logical response to justify his cowardice, but there is no logical reason to leave an object that useful abandoned on Vardus. `br |red Experiment Status: Failure";
}
if(chapter >= story_chapter.chapter5)
{
    text[i++] = "|fuchsia Research Notes 10 `br Star Year 2653. Month 04. Day 03. `br |white Subject D is the first to successfully pass combat training. But its attitude is illogical. It is acting like a rebellious teenager. It is clear that this subject will betray me at some point. Subject shows promise, but is unsuited for the task. `br |red Experiment Status: Failure";
    text[i++] = "|fuchsia Research Notes 11 `br Star Year 2652. Month 02. Day 11. `br |white Subject C has nearly passed combat training, but is unable to survive any sort of sustained damage. Its somewhat frail structure makes it unsuited for a long mission such as the one required. `br |red Experiment Status: Failure";
    text[i++] = "|fuchsia Research Notes 12 `br Star Year 2650. Month 07. Day 09. `br |white Subject A shows promise as a lab assistant or some other insignificant servant. But he cannot be sent into a combat situation. The damage from a single plasma shot will result in the subject dying. `br |red Experiment Status: Failure ";
}

if(i == 0)
{
    text[i] = "|red No Data Found.";
}
return text;   


