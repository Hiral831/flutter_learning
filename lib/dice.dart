import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:futterdayone/Diceimg.dart';
class Dicedshuffle extends StatefulWidget {
  const Dicedshuffle({Key? key}) : super(key: key);

  @override
  State<Dicedshuffle> createState() => _DicedshuffleState();
}

class _DicedshuffleState extends State<Dicedshuffle> {
  List<String> images = [
    "assets/dices/dice-six-faces-one.png",
    "assets/dices/dice-six-faces-two.png",
    "assets/dices/dice-six-faces-three.png",
    "assets/dices/dice-six-faces-four.png",
    "assets/dices/dice-six-faces-five.png",
    "assets/dices/dice-six-faces-six.png"
  ];

  int firstDiceIndex = 0;
   int secondDiceIndex = 0;
  int thirdDiceIndex = 0;
  int fourthDiceIndex = 0;

  // void shuffleDice() {
  //   setState(() {
  //     firstDiceIndex = Random().nextInt(images.length);
  //     secondDiceIndex = Random().nextInt(images.length);
  //     thirdDiceIndex = Random().nextInt(images.length);
  //     fourthDiceIndex = Random().nextInt(images.length);
  //
  //   });
  // }
  void shuffleDice(int diceIndex) {
    setState(() {

      switch (diceIndex) {
        case 1:
          firstDiceIndex = Random().nextInt(images.length);
          break;
        case 2:
          secondDiceIndex = Random().nextInt(images.length);
          break;
        case 3:
          thirdDiceIndex = Random().nextInt(images.length);
          break;
        case 4:
          fourthDiceIndex = Random().nextInt(images.length);
          break;
        default:
          break;
      }
      int prevFirstDiceIndex = firstDiceIndex;
      int prevSecondDiceIndex = secondDiceIndex;
      int prevThirdDiceIndex = thirdDiceIndex;
      int prevFourthDiceIndex = fourthDiceIndex;

      //

      // while (true) {
      //
      //
      //
      //   if (firstDiceIndex != secondDiceIndex &&
      //       firstDiceIndex != thirdDiceIndex &&
      //       firstDiceIndex != fourthDiceIndex &&
      //       secondDiceIndex != thirdDiceIndex &&
      //       secondDiceIndex != fourthDiceIndex &&
      //       thirdDiceIndex != fourthDiceIndex) {
      //     break;
      //   }
      // }
      //
      //

      if (firstDiceIndex == prevFirstDiceIndex && secondDiceIndex == prevSecondDiceIndex) {
        while (true) {
          firstDiceIndex = Random().nextInt(images.length);
          if (firstDiceIndex != secondDiceIndex &&
              firstDiceIndex != thirdDiceIndex &&
               firstDiceIndex != fourthDiceIndex && firstDiceIndex != prevFirstDiceIndex && firstDiceIndex != secondDiceIndex) {
            break;
          }
          else if( secondDiceIndex != thirdDiceIndex &&
              secondDiceIndex != fourthDiceIndex){
            break;
          }
        }
      }

      if (thirdDiceIndex == prevThirdDiceIndex && fourthDiceIndex == prevFourthDiceIndex) {
        while (true) {
          thirdDiceIndex = Random().nextInt(images.length);
          if (
            thirdDiceIndex != fourthDiceIndex && thirdDiceIndex != prevThirdDiceIndex && thirdDiceIndex != fourthDiceIndex) {
            break;
          }
        }
      }



      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
    });

  }










  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(


            // children: [

          child:    Column(
                children: [
                Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => shuffleDice(1),
                    child: Image.asset(
                      images[firstDiceIndex],
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () => shuffleDice(2),
                    child: Image.asset(
                      images[secondDiceIndex],
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),


                  SizedBox(width: 20),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => shuffleDice(3),
                        child: Image.asset(
                          images[thirdDiceIndex],
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () => shuffleDice(4),
                        child: Image.asset(
                          images[fourthDiceIndex],
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Tap to roll dice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

        ]
      ),











            ),
          );


  }
}






// class Dicedshuffle extends StatefulWidget {
//   const Dicedshuffle({Key? key}) : super(key: key);
//
//   @override
//   State<Dicedshuffle> createState() => _DicedshuffleState();
// }
//
// class _DicedshuffleState extends State<Dicedshuffle> {
//   List<Diceimg> _shuffledDices = dices;
//   int? _clickedIndex;
//
//   // void _shuffleDices() {
//   //   setState(() {
//   //     _shuffledDices = List.of(dices)..shuffle(Random());
//   //   });
//   // }
//   void _shuffleDices() {
//     // Generate a random index
//     final randomIndex = Random().nextInt(_shuffledDices.length);
//     // Show a dialog with the random index
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Random Index'),
//           content: Text('The next dice index is: $randomIndex'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 // Shuffle the dice images based on the random index
//                 setState(() {
//                   _shuffledDices = List.of(dices)..shuffle(Random(randomIndex));
//                 });
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//   void _handleDiceTap(int index) {
//     setState(() {
//       _clickedIndex = index;
//       _shuffledDices[index].isClicked = true;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: GestureDetector(
//         onTap: _shuffleDices,
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//           ),
//           itemCount: _shuffledDices.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: Container(
//                 child: Image.asset(
//                   _shuffledDices[index].images,
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
//
//
