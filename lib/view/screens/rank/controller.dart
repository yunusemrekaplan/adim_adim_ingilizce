import 'package:get/get.dart';

import '../../../controller/firebase/firestore/firestore_service.dart';
import '../../../model/student.dart';

class ControllerRank extends GetxController {
  final FirestoreService _firestoreService = FirestoreService();
  List<Student> students = [];

  Future<void> getStudents() async {
    final maps = await _firestoreService.getDocuments();

    students = [];

    maps.map((e) => students.add(Student.fromJson(e!))).toList();

    students.sort((a, b) => b.totalPoints.compareTo(a.totalPoints));
  }
}
