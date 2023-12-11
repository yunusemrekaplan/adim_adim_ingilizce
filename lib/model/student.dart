class Student {
  //late final int id;
  //late final DocumentReference referance;
  late final String guid;
  late final String name;
  late final String email;
  late final String phone;
  late final int classNo;
  late int totalPoints;

  Student({
    required this.guid,
  });

  Student.fromJson(Map<String, dynamic> json)
      : guid = json['guid'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        classNo = json['classNo'],
        totalPoints = json['totalPoints'];

  static late Student student;
}
