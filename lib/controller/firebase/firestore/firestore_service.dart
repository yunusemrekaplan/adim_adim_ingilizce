import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

enum FirestoreServiceType {
  user,
  category,
  question,
}

extension FirestoreServiceTypeExtension on FirestoreServiceType {
  String get name {
    switch (this) {
      case FirestoreServiceType.user:
        return 'users';
      case FirestoreServiceType.category:
        return 'categories';
      case FirestoreServiceType.question:
        return 'questions';
    }
  }
}

class FirestoreService {
  static final FirestoreService _instance = FirestoreService._internal();

  factory FirestoreService() {
    return _instance;
  }

  FirestoreService._internal();

  FirebaseFirestore? _db;
  final FirebaseApp _app = Firebase.app();

  Future<void> initialize() async {
    try {
      _db = FirebaseFirestore.instanceFor(app: _app);
    } on Exception catch (e) {
      print('FirestoreService.initialize: $e');
      // TODO
    }
  }

  Future<Map<String, dynamic>?> get({
    required FirestoreServiceType type,
    required String uid,
  }) async {
    if (_db == null) await initialize();
    DocumentSnapshot<Map<String, dynamic>> document;
    Map<String, dynamic>? data;
    final ref = _db!.collection(type.name).doc(uid);
    try {
      document = await ref.get();
      data = document.data();
    } on Exception catch (e) {
      print('FirestoreService.getDocument: $e');
    }
    return data;
  }

  Future<List<Map<String, dynamic>?>> getList({
    required FirestoreServiceType type,
  }) async {
    if (_db == null) await initialize();

    List<Map<String, dynamic>?> documents = [];

    try {
      //QuerySnapshot<Map<String, dynamic>> querySnapshot = await _users.get();

      final querySnapshot = await _db!.collection(type.name).get();
      documents = querySnapshot.docs.map((e) => e.data()).toList();
    } on Exception catch (e) {
      print('FirestoreService.getDocuments: $e');
    }
    return documents;
  }
}
