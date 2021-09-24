class TileModel {
  String imageAssetPath;
  bool isSelected;

  TileModel({
    this.imageAssetPath = "images/MemoryGame/img (1).png",
    this.isSelected = true,
  });

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
