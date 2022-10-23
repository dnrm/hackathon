import 'package:firebase_auth/firebase_auth.dart';
export 'sign_out.dart';

void signOut() {
  FirebaseAuth.instance.signOut();
}
