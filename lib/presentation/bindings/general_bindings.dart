import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/general_controller.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GeneralController>(() => GeneralController());
  }
}