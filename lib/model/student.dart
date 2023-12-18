class Student {
  //late final int id;
  //late final DocumentReference referance;
  late final String uid;
  late final String name;
  late final String email;
  late final String phone;
  late final int classNo;
  late int totalPoints;

  Student({
    required this.uid,
  });

  Student.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        classNo = json['classNo'],
        totalPoints = json['totalPoints'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'name': name,
        'email': email,
        'phone': phone,
        'classNo': classNo,
        'totalPoints': totalPoints,
      };

  static late Student student;

  static void setStudentId(String userId) {
    Student.student = Student(uid: userId);
  }
}
