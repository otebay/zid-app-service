import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../models/app_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<AppUser?> currentUser() async {
    final user = _auth.currentUser;
    if (user == null) return null;
    final doc = await _db.collection('users').doc(user.uid).get();
    if (!doc.exists) return null;
    return AppUser.fromMap(user.uid, doc.data()!);
  }

  Future<AppUser?> registerResident(
      String email, String password, String zhksId) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = credential.user;
    if (user == null) return null;
    await _db.collection('users').doc(user.uid).set({
      'email': email,
      'role': 'resident',
      'zhksId': zhksId,
    });
    return AppUser(id: user.uid, email: email, role: 'resident', zhksId: zhksId);
  }

  Future<AppUser?> signIn(String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = credential.user;
    if (user == null) return null;
    final doc = await _db.collection('users').doc(user.uid).get();
    return AppUser.fromMap(user.uid, doc.data() ?? {});
  }
}
