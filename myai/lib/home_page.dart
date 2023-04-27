import 'package:flutter/material.dart';
import 'package:myai/feature.dart';
import 'package:myai/pallete.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ai Assistant"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                        color: Pallete.assistantCircleColor,
                        shape: BoxShape.circle),
                  ),
                ),
                Container(
                    height: 123,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/assitant.png"))))
              ],
            ),
            const SizedBox(height: 30),
                 Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 45).copyWith(top: 30),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
                borderRadius:
                    BorderRadius.circular(20).copyWith(topLeft: Radius.zero)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Good Morning , What task can I do for you ?",
                style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 20),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, left: 30),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Here are a few features',
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
            Column(
              
                children: const [
                  FeatureBox(
                    color: Pallete.firstSuggestionBoxColor,
                    headerText: 'ChatGPT',
                    description:
                        'The intelligent solution for enhanced organization and information management.',
                  ),
                  FeatureBox(
                    color: Pallete.secondSuggestionBoxColor,
                    headerText: 'Dall-E',
                    description:
                        'The intelligent solution for enhanced organization and information management.',
                  ),
                  FeatureBox(
                    color: Pallete.thirdSuggestionBoxColor,
                    headerText: 'Smart Voice Assistant',
                    description:
                        'The intelligent solution for enhanced organization and information management.',
                  ),
                ],
              
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:(){} ,
        child: const Icon(Icons.mic),
      
      ),
    );
  }
}
