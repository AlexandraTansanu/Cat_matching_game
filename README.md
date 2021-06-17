# Cat matching game

Cat matching replicates the 'Memory cards matching game' for little children.

**Difficulty level:** Intermediate.

**Programming language:** Java.

**How it works:** The user is required to find matching pairs of crads. Each square of the displayed grid represents a different card, i.e. a Cat object. Crads come in identical pairs, thus the grid will always be a quadratic matrix. However, the cat images are only imported once and duplictaed throughout the code so there is no need to save the image twice. The user must click a card to reveal the picture underneath and then click another to find its corresponding pair. If he managed to do that, the cards will remain revealed and the pictures will darken to signalize that a pair has been found. Otherwise, the cards will flip back again and the user should memorize the pictures' position for future reference.  

**How it was built:** The program makes use of the OOP principles such that each card, i.e. Cat object is an instance of the Cat class. A Cat object stores a cat image together with its position in the grid. To build the quadratic grid, an array list of Cat objects is used where each cat is stored twice. To keep track of which two cards are flipped over to be matched, an array list of integers is used to store their positions. The list is cleared afterwards even if the matching succeeds or not.  

> This exercise is written and animated using the Processing IDE. More information on inbuilt functions that have been used throughout the code can be found by accessing the [Processing Documentation](https://processing.org/reference/)
