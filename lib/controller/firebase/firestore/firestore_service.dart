import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreService {
  static final FirestoreService _instance = FirestoreService._internal();

  factory FirestoreService() {
    return _instance;
  }

  FirestoreService._internal();

  FirebaseFirestore? _db;
  final FirebaseApp _app = Firebase.app();
  final _users = FirebaseFirestore.instance.collection('users');

  Future<void> initialize() async {
    try {
      _db = FirebaseFirestore.instanceFor(app: _app);
    } on Exception catch (e) {
      print('FirestoreService.initialize: $e');
      // TODO
    }
  }

  Future<DocumentSnapshot<Map<String, dynamic>>?> getDocument({
    required String uid,
  }) async {
    if (_db == null) await initialize();
    DocumentSnapshot<Map<String, dynamic>>? document;
    final ref = _users.doc(uid);
    try {
      document = await ref.get();
    } on Exception catch (e) {
      print('FirestoreService.getDocument: $e');
    }
    return document;
  }
}
