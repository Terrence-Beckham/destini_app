import 'story.dart';
import 'package:flutter/foundation.dart';

class StoryBrain {
  String getStory() {
    return _storyData[storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[storyNumber].choice2;
  }

  bool choiceTwoButtonVisibility = true;
// ignore: todo
//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

// ignore: todo
//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

// ignore: todo
//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int storyNumber = 0;
// ignore: todo
//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  nextStory(int choiceNumber) {
//all choice 1 paths
    if (choiceNumber == 1 && storyNumber == 0) {
      storyNumber = 2;
    } else if (choiceNumber == 1 && storyNumber == 2) {
      storyNumber = 5;
    } else if (choiceNumber == 1 && storyNumber == 1) {
      storyNumber = 2;
    }
// All choice 2 paths
    else if (choiceNumber == 2 && storyNumber == 0) {
      storyNumber = 1;
    } else if (choiceNumber == 2 && storyNumber == 1) {
      storyNumber = 3;
    } else if (choiceNumber == 2 && storyNumber == 2) {
      storyNumber = 4;
    } else if (storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
      restart();
    }
  }

  // debugPrint('Current story number is $storyNumber');
// ignore: todo
//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

// ignore: todo
//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

// ignore: todo
//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

// ignore: todo
//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  final List<Story> _storyData = [
    Story(
        storyTitle: 'Story 0\n'
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'Story 1\n'
            'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle: 'Story 2\n'
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle: 'Story 3\n'
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle: 'Story 4\n'
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle: 'Story 5\n'
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  // void resetStory(currentStoryNumber) {
  //   if (currentStoryNumber == 3 ||
  //       currentStoryNumber == 4 ||
  //       currentStoryNumber == 5) {
  //     storyNumber = 0;
  //   }
  // }

  void restart() {
    debugPrint('Current story# is $storyNumber ');
    storyNumber = 0;
  }
}
