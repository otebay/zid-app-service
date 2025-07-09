import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../models/app_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

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

  Future<AppUser?> registerResident(String email, String password) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = credential.user;
    if (user == null) return null;
    final appUser = AppUser(id: user.uid, email: email, role: 'resident');
    await _db.collection('users').doc(user.uid).set(appUser.toMap());
    return appUser;
  }

  Future<void> signOut() => _auth.signOut();
}
