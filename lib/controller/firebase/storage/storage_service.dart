import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  static final StorageService _instance = StorageService._internal();

  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  FirebaseStorage? _storage;
  final FirebaseApp _app = Firebase.app();

  Future<void> initialize() async {
    try {
      _storage ??= FirebaseStorage.instanceFor(app: _app);
    } on Exception catch (e) {
      print('StorageService.initialize: $e');
      // TODO
    }
  }

  Future<String?> getDownloadURL({
    required String path,
  }) async {
    if (_storage == null) await initialize();
    String? url;
    try {
      url = await _storage!.ref(path).getDownloadURL();
    } on Exception catch (e) {
      print('StorageService.getDownloadURL: $e');
    }
    return url;
  }
}
