import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tinder_clone/core/error/exception/exception.dart';

abstract class AuthenticationDatasource {
  Future<UserCredential> signInWithGoogle();

  Future<bool> signOutFromGoogle();
}

class AuthenticationDatasourceImpl extends AuthenticationDatasource {
  @override
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw SignInException(message: "sign_in_cancelled");
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      print(await FirebaseAuth.instance.signInWithCredential(credential));
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      throw AuthenticationException(message: e.message);
    }
  }

  @override
  Future<bool> signOutFromGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } on Exception catch (_) {
      return false;
    }
  }
}
