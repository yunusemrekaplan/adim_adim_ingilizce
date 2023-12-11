import 'package:get/get.dart';

import '../../../controller/firebase/firestore/firestore_service.dart';
import '../../../model/student.dart';

class ControllerDash extends GetxController {
  final FirestoreService _firestoreService = FirestoreService();
  late Student student;
  int currentIndex = 2;

  Future<void> getStudent() async {
    final doc = await _firestoreService.getDocument(
      uid: Student.student.uid,
    );

    final studentMap = doc!.data();
    print(studentMap);

    Student.student.name = studentMap!['name'];
    Student.student.email = studentMap['email'];
    Student.student.phone = studentMap['phone'];
    Student.student.classNo = studentMap['classNo'];
    Student.student.totalPoints = studentMap['totalPoints'];

    student = Student.student;
  }
}
