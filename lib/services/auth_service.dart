import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// 🔹 Google Login
  Future<UserCredential?> signInWithGoogle() async {

    final GoogleSignInAccount? googleUser =
        await GoogleSignIn().signIn();

    if (googleUser == null) return null; // user cancel

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await _auth.signInWithCredential(credential);
  }

  /// 🔹 Facebook Login
  Future<UserCredential?> signInWithFacebook() async {

    final LoginResult result =
        await FacebookAuth.instance.login();

    if (result.status != LoginStatus.success) {
      return null;
    }

    final OAuthCredential credential =
        FacebookAuthProvider.credential(
      result.accessToken!.token,
    );

    return await _auth.signInWithCredential(credential);
  }

  /// 🔹 Apple Login
  Future<UserCredential?> signInWithApple() async {

    final appleCredential =
        await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final oauthCredential =
        OAuthProvider("apple.com").credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode,
    );

    return await _auth.signInWithCredential(oauthCredential);
  }
}