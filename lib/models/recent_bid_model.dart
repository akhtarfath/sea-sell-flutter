class RecentBid {
  final String name;
  final String image;
  final double bidAmount;
  final String date;

  RecentBid(
      {required this.name,
      required this.image,
      required this.bidAmount,
      required this.date});
}

var recentBids = [
  RecentBid(
    name: "Dart Celline",
    image: "bid1.png",
    bidAmount: 28.40,
    date: "Apr 22",
  ),
  RecentBid(
    name: "Zipzip Koin",
    image: "bid2.png",
    bidAmount: 1.10,
    date: "Feb 31",
  ),
  RecentBid(
    name: "Dart Celline",
    image: "bid3.png",
    bidAmount: 590.00,
    date: "Feb 9",
  ),
];
