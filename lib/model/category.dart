class Category {
  //late final int id;
  late final String uid;
  late final String name;
  late final String description;
  late final String imagePath;

  Category({
    required this.name,
    required this.description,
    required this.imagePath,
  });

  Category.fromMap(Map<String, dynamic> map) {
    //id = json['id'];
    uid = map['uid'];
    name = map['name'];
    description = map['description'];
    imagePath = map['imagePath'];
  }
}
