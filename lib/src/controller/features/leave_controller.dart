import 'dart:developer';

import 'package:get/get.dart';
import 'package:hrms/src/model/leave_model.dart';
import 'package:hrms/src/model/response/leave_response_model.dart';
import 'package:hrms/src/repository/feature_repository.dart';

class LeaveController extends GetxController {
  FeatureRepository featureRepository = FeatureRepository();
  RxList<LeaveModel> leaves = <LeaveModel>[].obs;

  Future<void> getAllLeave() async {
    LeaveResponseModel result = await featureRepository.getAllLeave();
    if (result.success == true) {
      leaves.value = result.data!;
      log(leaves.toString());
    }
  }
}
