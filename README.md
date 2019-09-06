# Software Development Plan - Calcubot

[Github](https://github.com/hfrankel/calcubot)

### <u>Purpose and Scope</u>

Calcubot is a fun, ‘choose your own adventure game’ that encourages the user to reflect on moral decision making. The game is a CLI based application that runs using ruby programming. Users will navigate through a sci-fi, fantasy adventure story. At certain points they will be required to make choices between multiple options. These options vary on a scale of nefarious, balanced and virtuous decisions. Users will be rewarded appropriately, depending on the choices they make. An engaging story and fight system utilising character stats and random chance support repeat playability.

In a modern social and mainstream media landscape, people are being exposed to questionable morals and ethics on a daily basis. This is an almost constant in our lives. These incidents cause society to ripple apart while online groups stay in familiar echo chambers, unwilling to listen to opinions outside their own. Calcubot is a fun, interactive tool to encourage people to reflect on their ethical and moral decision making in a safe environment, away from noisy online echo chambers. This will help in bridging the divide in our online community as reflecting on ethics encourages empathy and susceptibility to new ideas.

The target audience is those in the age range of 15-65. That range is quite broad but there is a vast number of people globally online over the age of 40 and as Calcubot is engaging while still having a low skill barrier to entry, this will not preclude them from joining in playing the game. We wish to target as many voting age people and future voters as possible.

Clear instructions are on GitHub on how to download Calcubot. The game is straightforward and easy to play. However future development plans include implementing a character creation mode, a countdown timer with changeable difficulty settings and customizing items for the game. A tutorial page will be added as these features are introduced.


### <u>Features</u>

##### <u>Feature 1 – Interactive story</u>

The key feature of Calcubot is its interactive story mode. The story has a largely linear narrative structure with multiple option decisions points being placed at the end of each chapter. The number of options vary depending on the story situation. The user will either need to select 1, 2 or 3 and press enter. Each user input will result in a different outcome. This was achieved mainly using a combination of variables holding user input and case statements controlling conditional flow. To handle an errors from user input picking the
game selection options, a method was created to show a message every time the user picks an invalid option,
guiding them to the correct options.

##### <u>Feature 2 – Fight mode</u>

The fight mode was added to bring more excitement to Calcubot, introducing random chance, in the vain of popular board games. At a number of decision points, the user will have the option to instigate a fight with another character. A method was created outside the index file taking 2 character strength stats as arguments, then comparing a random number based on the max range for that stat, e.g. For a character with strength stat 20, a number in the range of 0 to 20 would be generated. Using an if statement, if character A’s strength was higher it would win and otherwise lose if B’s was higher.

##### <u>Feature 3 – Choose character name</u>

Having the option for the user to choose their own character adds an increased level of personalisation and satisfaction from playing. The protagonist “Calcubot” was created as a character class object. Each character is created with the instance variable of being able to set the character’s name to a desired value using @name. Combining this with user input and harnessing string interpolation to place the character’s name throughout the entire story text, is a simple way to change the name to whatever the user wants, making the game more enjoyable.

### <u>User Interaction and Experience</u>

The game has a very simple UI. Once the game is loaded with the opening title, text displays the message “Press Enter For New Game OR e To Exit.” If the user presses enter they will be loaded into chapter 1 with a gets.chomp to prevent further progress. There are no options to choose from for chapter 1 and as the user has just had to press enter to proceed, it is intuitive to keep pressing enter to progress within the game. When it comes to the decision points they only have up to 3 options (“1”, “2” or “3”) and any invalid selection prompts a message stating which are the only available options for the user to continue. If the user still has any issues, more help can be found in the HELP.md file. The game flows well and the user will appreciate big, bold chapters headings to help navigate where they are in the story as well as flashing colorful “win” signs (using the colorize ruby gem) if they beat a challenger.

### <u>Status Log</u>

##### <u>Log Update - 04.07.2019</u>
Target was to have a working skeleton program by the end of the day and for the program to run without errors. This was achieved.

##### <u>Log Update - 05.07.2019</u>
Target was to have a beta for the application ready to be released by the end of day. A few bugs held up progress but this outcome was eventually achieved. Another target was to have all documentation done but this was not achievable within the timeframe.

##### <u>Log Update - 06.07.2019</u>
Documentation complete and project submitted.

### Control Flow Diagram
![alt text](https://github.com/hfrankel/calcubot/blob/master/docs/calcubot_control_flow_diagram.jpg "calcubot_control_flow_diagram.jpg")

<img src ="https://github.com/hfrankel/calcubot/blob/master/docs/calcubot_control_flow_diagram.jpg" alt="image">

### Implementation Plan
