class SliderModel {
  String image;
  bool isTrending;

  SliderModel({required this.image, this.isTrending = false});
}

List<SliderModel> sliders = [
  SliderModel(image: "slider1", isTrending: false),
  SliderModel(image: "slider2", isTrending: true),
  SliderModel(image: "slider3", isTrending: false),
];
