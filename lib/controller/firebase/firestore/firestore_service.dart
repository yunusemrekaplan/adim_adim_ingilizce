import 'package:cloud_firestore/cloud_firestore.dart';

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

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> get({
    required FirestoreServiceType type,
    required String uid,
  }) async {
    DocumentSnapshot<Map<String, dynamic>> document;
    Map<String, dynamic>? data;
    final ref = _db.collection(type.name).doc(uid);
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
    List<Map<String, dynamic>?> documents = [];

    try {
      //QuerySnapshot<Map<String, dynamic>> querySnapshot = await _users.get();

      final querySnapshot = await _db.collection(type.name).get();
      documents = querySnapshot.docs.map((e) => e.data()).toList();
    } on Exception catch (e) {
      print('FirestoreService.getDocuments: $e');
    }
    return documents;
  }

  Future<void> set({
    required FirestoreServiceType type,
    required String uid,
    required Map<String, dynamic> data,
  }) async {
    final ref = _db.collection(type.name).doc(uid);
    try {
      await ref.set(data);
    } on Exception catch (e) {
      print('FirestoreService.setDocument: $e');
    }
  }
}
