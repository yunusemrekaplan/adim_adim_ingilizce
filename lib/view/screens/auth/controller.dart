import 'package:get/get.dart';

class Controller extends GetxController {
  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;
}
