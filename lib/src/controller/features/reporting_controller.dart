import 'dart:async';

import 'package:get/get.dart';
import 'package:hrms/src/model/reporting_model.dart';
import 'package:hrms/src/model/start_stop_time_model.dart';
import 'package:hrms/src/model/user_log_model.dart';
import 'package:hrms/src/repository/feature_repository.dart';

class ReportingController extends GetxController {
  FeatureRepository featureRepository = FeatureRepository();

  RxList<UserLog> userLogs = <UserLog>[].obs;
  Rx<int> time = 0.obs;
  Rx<bool> isTimeStart = false.obs;
  Timer? timer;

  Future<void> getUserLogData({required int month, required int year}) async {
    UserLogModel result =
        await featureRepository.getUserLogData(month: month, year: year);
    if (result.success) {
      userLogs.clear();
      for (var element in result.data) {
        userLogs.add(element);
      }
    }
  }

  Future<void> reportingTime() async {
    ReportingModel result = await featureRepository.reportingTime();
    if (result.success) {
      if (result.data?.isTotalTimeRunning ?? false) {
        time.value = result.data!.totalReportingTime!;
        timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          time.value++;
        });
        isTimeStart.value = true;
      } else {
        time.value = result.data?.totalReportingTime ?? 0;
        isTimeStart.value = false;
      }
    }
  }

  Future<void> startTime() async {
    StartStopTimeModel result = await featureRepository.startTime();
    if (result.success) {
      reportingTime();
    }
  }

  Future<void> stopTime() async {
    StartStopTimeModel result = await featureRepository.stopTime();
    if (result.success) {
      timer?.cancel();
      reportingTime();
    }
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
