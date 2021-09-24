import 'package:demo/Constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Data/data.dart';
import 'Model/tile_model.dart';

class MemoryGame extends StatefulWidget {
  @override
  _MemoryGameState createState() => _MemoryGameState();
}

class _MemoryGameState extends State<MemoryGame> {
  // @override
  // void initState() {
  //   super.initState();
  //
  //   pairs = getPairs();
  //   pairs.shuffle();
  //
  //   visiblePairs = pairs;
  //   selected = true;
  //   Future.delayed(const Duration(seconds: 5), () {
  //     setState(() {
  //       visiblePairs = getQuestions();
  //       selected = false;
  //     });
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reStart();
  }

  void reStart() {
    pairs = getPairs();
    pairs.shuffle();
    points = 0;
    visiblePairs = pairs;
    Future.delayed(const Duration(seconds: 3), () {
// Here you can write your code
      setState(() {
        print("2 seconds done");
        // Here you can write your code for open new view

        visiblePairs = getQuestions();
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kclr12,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(234, 70, 61, 1),
              Color.fromRGBO(238, 109, 43, 1),
              Kclr13,
              Color(0xffFFF600)
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " $points/1000\nPoints",
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(
                  fontSize: 35, fontWeight: FontWeight.bold, color: Kclr04),
            ),
            points != 1000
                ? GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 0.0,
                      maxCrossAxisExtent: 100,
                    ),
                    children: List.generate(visiblePairs.length, (index) {
                      // print(pairs.length);
                      return Tile(
                        imageAssetPath: visiblePairs[index].getImageAssetPath(),
                        parent: this,
                        tileIndex: index,
                      );
                    }),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        points = 0;
                        reStart();
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Icon(
                          Icons.refresh_sharp,
                          size: 300,
                          color: Kclr04,
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;
  int tileIndex;
  _MemoryGameState parent;

  Tile({
    required this.imageAssetPath,
    required this.parent,
    required this.tileIndex,
  });
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        print("You clicked twice");
        selected = true;
        Future.delayed(const Duration(seconds: 1, milliseconds: 5), () {
          selected = false;
          widget.parent.setState(() {
            pairs[widget.tileIndex].setIsSelected(false);
            pairs[selectedTileIndex].setIsSelected(
                false); //todo if this gives error try the other one
          });
          selectedImageAssetPath = "";
        });
      },
      onTap: () {
        if (!selected) {
          if (selectedImageAssetPath != "") {
            if (selectedImageAssetPath ==
                    pairs[widget.tileIndex].getImageAssetPath() &&
                widget.tileIndex != selectedTileIndex) {
              // Correct
              print("You selected Correct");
              selected = true;
              Future.delayed(const Duration(seconds: 1, milliseconds: 5), () {
                // setState(() {
                //   points = points + 100;
                //   visiblePairs[widget.tileIndex]
                //       .setImageAssetPath("images/MemoryGame/correct.png");
                //   visiblePairs[selectedTileIndex]
                //       .setImageAssetPath("images/MemoryGame/correct.png");
                //   widget.parent.setState(() {});
                // });
                points = points + 100;
                // visiblePairs[widget.tileIndex]
                //     .setImageAssetPath("images/MemoryGame/correct.png");
                // visiblePairs[selectedTileIndex]
                //     .setImageAssetPath("images/MemoryGame/correct.png");
                setState(() {
                  selected = false;
                  widget.parent.setState(() {
                    // visiblePairs[widget.tileIndex].setIsSelected(true);
                    // visiblePairs[selectedTileIndex].setIsSelected(true);
                    pairs[widget.tileIndex].setImageAssetPath("");
                    pairs[selectedTileIndex].setImageAssetPath("");
                  });
                  selectedImageAssetPath = "";
                });
              });
            } else {
              // Wrong
              print("You selected wrong");
              selected = true;
              Future.delayed(const Duration(seconds: 1, milliseconds: 5), () {
                selected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                });
                selectedImageAssetPath = "";
              });
            }
          } else {
            selectedTileIndex = widget.tileIndex;
            selectedImageAssetPath =
                pairs[widget.tileIndex].getImageAssetPath();
            // we cannot write imageAssetPath directly because we are sending question mark also so we would use pairs[] so as to do a backend method
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
          print("Clicked !!");
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: pairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(pairs[widget.tileIndex].getIsSelected()
                ? pairs[widget.tileIndex].getImageAssetPath()
                : widget.imageAssetPath)
            : Image.asset(
                "images/MemoryGame/correct2.png",
              ),
      ),
    );
  }
}

//Image.asset(
//           pairs[widget.tileIndex].getIsSelected()
//               ? pairs[widget.tileIndex].getImageAssetPath()
//               : widget.imageAssetPath,
//         ),
