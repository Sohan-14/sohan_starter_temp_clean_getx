import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/utils/logger_utils.dart';
import 'package:sohan_flutter_template/domain/entities/sample.dart';
import 'package:sohan_flutter_template/domain/use_cases/get_sample_data_use_cases.dart';

class SampleController extends GetxController{
  SampleController(this._getSampleDataUseCase);

  final GetSampleDataUseCase _getSampleDataUseCase;

  final RxList<Sample> sampleData = RxList<Sample>();
  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;

  void fetchSampleData () async {
    try {
      isLoading(true);
      sampleData.value = await _getSampleDataUseCase.execute();
      for(final Sample sample in sampleData){
        LoggerUtils.info('result from ${sample.name}');
        LoggerUtils.info('result from controller values : ${sample.name}');
      }
    }
    catch (exception){
      errorMessage.value = exception.toString();
      LoggerUtils.info('error from controller : $exception');
    }
    finally {
      isLoading(false);
    }
  }
}