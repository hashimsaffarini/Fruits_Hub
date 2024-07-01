import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException('لقد ادخلت كلمة مرور ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('البريد الالكتروني مستخدم بالفعل');
      } else {
        throw CustomException('هناك خطأ ما, الرجاء المحاولة مرة اخرى');
      }
    } catch (e) {
      throw CustomException('هناك خطأ ما, الرجاء المحاولة مرة اخرى');
    }
  }
}
