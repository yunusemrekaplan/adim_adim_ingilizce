import 'package:get/get.dart';
import '../../model/library.dart' as model;

class ControllerCategory extends GetxController {
  /*
  final _category = <Category>[].obs;
  final _isLoading = false.obs;

  List<Category> get category => _category.value;
  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    super.onInit();
    fetchCategory();
  }

  void fetchCategory() async {
    _isLoading.value = true;
    final category = await CategoryService.fetchCategory();
    _category.value = category;
    _isLoading.value = false;
  }
  */

  final categories = <model.Category>[
    model.colorCategory,
    model.animalCategory,
    model.weatherCategory,
    model.weatherCategory,
    model.weatherCategory,
  ];

  Future<void> init() async {
    // await CategoryService.fetchCategory();
  }
}
