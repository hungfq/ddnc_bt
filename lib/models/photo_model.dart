class PhotoData {
  String? title;
  String? url;

  //let's create the constructor
  PhotoData(this.title, this.url);

  static List<PhotoData> listPhotoData = [
    PhotoData("Hinh RC1", "lib/images/rc1.jpg"),
    PhotoData("Hinh RC2", "lib/images/rc2.jpg"),
    PhotoData("Hinh RC3", "lib/images/rc3.jpg"),
    PhotoData("Hinh RC4", "lib/images/rc4.jpg"),
    PhotoData("Hinh RC4", "lib/images/rc4.jpg"),
    PhotoData("Hinh NEW1", "lib/images/new1.jpg"),
    PhotoData("Hinh NEW2", "lib/images/new2.jpg"),
    PhotoData("Hinh NEW3", "lib/images/new3.jpg"),
  ];
}
