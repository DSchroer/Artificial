///book_text()
var loreText;

var i = 0;
loreText[i++] = "|cube The Cube |white was originally owned by a group of advanced beings living on the planet of Vardus. ";
loreText[i++] = "This group was made up of 5 dying races, brought together by the need to survive as a black hole threatened to destroy their solar system. ";
loreText[i++] = "As they fled their homes, they took what they could. However, they could only watch as the black hole consumed their galaxy behind them. They were lucky to be alive, but their races were devastated.";
loreText[i++] = "They no longer had a place to call home. And so they simply wandered, looking, endlessly through the dark abyss of space. ";
loreText[i++] = "The planet of Vardus soon caught their eyes. Its lush jungles, expansive meadows, and seemingly infinite lakes looked like paradise to their weary eyes. Vardus promised them a future. ";
loreText[i++] = "As their space ships touched down in a large meadow on Vardus, everyone took a deep breath. For the first time in months, they breathed in fresh air. The travellers may have escaped their dying solar system and found a new home, but there was still much work to do. ";
loreText[i++] = "By all accounts, Vardus was the galactic jackpot. With its rich soil, it took the settlers only a few months to cultivate crops and build a settlement. For the first time in nearly a year, they had a place to call home.";
loreText[i++] = "By putting aside their differences, this group prospered. Now that their day to day needs were met, they could focus on the future. Soon, their races shared any technology and knowledge they had taken with them. ";
loreText[i++] = "In the span of a mere 30 years, the settlers not only rebuilt their destroyed civilization but advanced its technology tenfold. Everyone shared in the benefits of this scientific progress. They began to see it as an ideal to strive for.";
loreText[i++] = "All was good, for a time. But one day, a miner found a new mineral under the surface of Vardus. This new mineral gave off a strange energy. The purple crystal glowed and pulsed, seemingly alive.";
loreText[i++] = "Extensive testing revealed that this strange purple rock was the undiscovered 142nd element. They decided to call it Auronium.";
loreText[i++] = "Nobody knew what to do with the Auronium, so the scientists decided to store it while they focused on other work. When they came back a few days later, nothing could prepare them for what they found. The inside of the supply cabinet had turned to Auronium!";
loreText[i++] = "They soon realized that the Auronium could react to create nearly any element. If they could learn to control it, then this solve their shortages of silver, titanium, and erbium. ";
loreText[i++] = "This led to the fateful experiment that created |cube The Cube. |white It was risky, but the greatest scientific discovery of all time was within reach. If there was even a chance it could work it was worth trying.";
loreText[i++] = "The experiment succeeded. In a moment of brilliance - or perhaps madness - one of their scientists ended up creating |cube The Cube. |white It was everything they wanted and more, but there was an unexpected side effect.";
loreText[i++] = "|cube The Cube |white was sentient. The scientists had accidently created the first real AI their species had ever seen. But luckily, |cube The Cube |white didn't want to hurt them. In fact, it was more than willing to help anyone who asked.";
loreText[i++] = "With the shortages finally solved, the 3 months that followed led to the greatest scientific advance the universe had ever known. It was as though their technologically advanced 200 years in an instant. ";
loreText[i++] = "But the peace was short lived. Many began to argue about how to best use the |cube The Cube’s |white powers.";
loreText[i++] = "With nobody willing to compromise, a great civil war ensued. For the first time, their technology was not being used to better society. It was being used to destroy it. ";
loreText[i++] = "The young society had never really experienced war. With the memories of their previous homes distant, few realized how bad their actions really were. They lost sight of the big picture, and only wanted to win. ";
loreText[i++] = "|cube The Cube |white quickly became the greatest weapon in existence. Its AI didn't side with anyone, and would simply create any materials if asked. It would not be long until one side would make a mistake it could never undo. ";
loreText[i++] = "The war ended with one final invention, the antimatter bomb. Vardus was decimated. Gone were its lush jungles, sprawling meadows, and serene lakes. Only a desert and 5 of its inhabitants survived.";
loreText[i++] = "For the first time, the survivors understood the consequences of their actions. They understood the danger of a something like |cube The Cube |white that doesn't care about right and wrong. ";
loreText[i++] = "The survivors saw no other choice. In one final, desperate act, they used |cube The Cube |white to forge |brown golems |white to protect them. Then, they broke the cube into 5 pieces, each taking one. They parted ways, ensuring no-one would ever be able to use |cube The Cube's |white power again. ";
loreText[i++] = "For a society so technologically advanced and prosperous, they made one critical mistake. They forgot that science has no morality. They were always so preoccupied with whether or not they could, they never stopped to ask whether or not they should.";

// 7 per 

for(var i = 0; i < array_length_1d(loreText); i++)
{
    loreText[i] = "|orange History of the Cube " + string(i + 1) + " `br |white " + loreText[i];
}

return loreText;
