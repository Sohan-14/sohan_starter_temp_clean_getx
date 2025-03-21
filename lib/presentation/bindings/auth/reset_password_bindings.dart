import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/auth/reset_password_controller.dart';

class ResetPasswordBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
  }
}