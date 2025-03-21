import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/auth/sign_in_controller.dart';

class SignInBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}