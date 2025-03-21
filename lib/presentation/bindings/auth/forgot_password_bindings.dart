import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/auth/forgot_password_controller.dart';

class ForgotPasswordBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }
}