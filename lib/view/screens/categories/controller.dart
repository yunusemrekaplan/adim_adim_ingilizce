import 'package:adim_adim_ingilizce/model/category/category.dart';
import 'package:get/get.dart';
import '../../../controller/firebase/library.dart' as firebase;
import '../../../model/library.dart' as model;

class ControllerCategory extends GetxController {
  final _firestoreService = firebase.FirestoreService();
  final _storageService = firebase.StorageService();

  final _isCategorySelected = false.obs;

  bool get isCategorySelected => _isCategorySelected.value;

  final categories = <model.Category>[];

  Future<void> init() async {
    await fetchCategory();
    await _storageService.initialize();
  }

  Future<void> fetchCategory() async {
    final categoryMapList = await _firestoreService.getList(
      type: firebase.FirestoreServiceType.category,
    );
    categories.clear();

    categoryMapList.forEach((e) => categories.add(model.Category.fromMap(e!)));
  }

  Future<String?> getImageUrl(model.Category category) async {
    return await _storageService.getDownloadURL(path: category.imagePath);
  }

  void selectCategory() {
    _isCategorySelected.value = true;
  }

  void unselectCategory() {
    _isCategorySelected.value = false;
  }

  Future<void> onCategoryTap(model.Category category) async {
    unselectCategory();

    Get.toNamed('/questions', arguments: category);
  }

  Future<void> onQuestionsTap() async {
    unselectCategory();

    Get.toNamed(
      '/questions',
      arguments: Category(
        name: 'random',
        description: 'Random',
        imagePath: '',
      ),
    );
  }
}
