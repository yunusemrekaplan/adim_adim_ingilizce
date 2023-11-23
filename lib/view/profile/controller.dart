import 'package:get/get.dart';

import '../../model/profile.dart';
import '../../model/student.dart';

class Controller extends GetxController {
  Profile profile = Profile(
    student: Student(name: 'Yunus Emre Kaplan', email: 'test@test.com'),
  );
  int currentIndex = 2;
}
