import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/auth/verify_email_controller.dart';

class VerifyEmailBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<VerifyEmailController>(() => VerifyEmailController());
  }
}