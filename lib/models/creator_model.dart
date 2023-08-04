class CreatorModel {
  String image;
  bool isSeen;

  CreatorModel({required this.image, required this.isSeen});
}

var creators = [
  CreatorModel(image: "creator1", isSeen: true),
  CreatorModel(image: "creator2", isSeen: false),
  CreatorModel(image: "creator3", isSeen: false),
  CreatorModel(image: "creator4", isSeen: true),
  CreatorModel(image: "creator5", isSeen: false),
  CreatorModel(image: "creator6", isSeen: false),
];
