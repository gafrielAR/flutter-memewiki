class MemeDetail {
  String name;
  String origin;
  String imageAsset;

  MemeDetail({
    required this.name,
    required this.origin,
    required this.imageAsset,
  });
}

var memeDetailList = [
  MemeDetail(
    name: 'Success Kid',
    origin: 'Intermet',
    imageAsset: 'assets/images/Success-Kid.jpg',
  ),
  MemeDetail(
    name: 'Batman Slapping Robin',
    origin: 'Internet',
    imageAsset: 'assets/images/Batman-Slapping-Robin.jpg',
  ),
  MemeDetail(
    name: 'Roll Safe Think About It',
    origin: 'Internet',
    imageAsset: 'assets/images/Roll-Safe-Think-About-It.jpg',
  ),
];