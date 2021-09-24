import 'package:demo/MemoryGame/Model/tile_model.dart';

int points = 0;
bool selected = false;
List<TileModel> pairs = [];
List<TileModel> visiblePairs = [];

String selectedImageAssetPath = "";
int selectedTileIndex = -1;
List<bool> clicked = [];

List<bool> getClicked() {
  List<bool> youClicked = [];
  List<TileModel> myPairs = [];
  myPairs = getPairs();
  for (int i = 0; i < myPairs.length; i++) {
    youClicked[i] = false;
  }

  return youClicked;
}

List<TileModel> getPairs() {
  List<TileModel> pairs = [];
  TileModel tileModel = new TileModel();

  // 1
  tileModel.setImageAssetPath("images/MemoryGame/img (1).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 2
  tileModel.setImageAssetPath("images/MemoryGame/img (2).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 3
  tileModel.setImageAssetPath("images/MemoryGame/img (3).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 4
  tileModel.setImageAssetPath("images/MemoryGame/img (11).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 5
  tileModel.setImageAssetPath("images/MemoryGame/img (5).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 6
  tileModel.setImageAssetPath("images/MemoryGame/img (6).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 7
  tileModel.setImageAssetPath("images/MemoryGame/img (7).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 8
  tileModel.setImageAssetPath("images/MemoryGame/img (8).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 9
  tileModel.setImageAssetPath("images/MemoryGame/img (9).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 10
  tileModel.setImageAssetPath("images/MemoryGame/img (10).png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getQuestions() {
  List<TileModel> pairs = [];
  TileModel tileModel = new TileModel();

  // 1
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 2
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 3
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 4
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 5
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 6
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 7
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 8
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 9
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  // 10
  tileModel.setImageAssetPath("images/MemoryGame/QuestionMark.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  return pairs;
}
