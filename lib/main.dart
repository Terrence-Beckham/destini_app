import 'package:flutter/material.dart';
import 'story_brain.dart';
// ignore: todo
//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}

// ignore: todo
//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

var storyBrain = StoryBrain();

class _StoryPageState extends State<StoryPage> {
  bool isEndOfStory = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),

              //Choice 1 Button.
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    // ignore: todo
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.

                    if (!isEndOfStory) {
                      storyBrain.nextStory(1);
                    } else {}
                    setState(() {});
                  },
                  color: Colors.red,
                  child: Text(
                    // ignore: todo
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice1(),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              //Choice 2 Button
              Visibility(
                visible: storyBrain.choiceTwoButtonVisibility,
                child: Expanded(
                  flex: 2,
                  // ignore: todo
                  //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                  // ignore: todo
                  //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                  child: FlatButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      // ignore: todo
                      //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      storyBrain.nextStory(2);

                      setState(() {});
                    },
                    color: Colors.blue,
                    child: Text(
                      // ignore: todo
                      //TODO: Step 14 - Use the storyBrain to get the text for choice 2.

                      storyBrain.getChoice2(),

                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
