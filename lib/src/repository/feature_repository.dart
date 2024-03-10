import 'package:hrms/src/api/api.dart';
import 'package:hrms/src/model/response/common_response_model.dart';
import 'package:hrms/src/model/response/leave_response_model.dart';
import 'package:hrms/src/model/response/notice_response_model.dart';
import 'package:hrms/src/model/response/reporting_response_model.dart';
import 'package:hrms/src/model/response/start_stop_time_response_model.dart';
import 'package:hrms/src/model/response/user_log_response_model.dart';

class FeatureRepository {
  ApiClient apiClient = ApiClient();

  Future<UserLogResponseModel> getUserLogData({
    required int month,
    required int year,
  }) async {
    dynamic data = await apiClient.get(
      ApiEndpoints.uselog,
      queryParameters: {
        'month': month,
        'year': year,
      },
    );
    return UserLogResponseModel.fromMap(data);
  }

  Future<ReportingResponseModel> reportingTime() async {
    dynamic data = await apiClient.get(
      ApiEndpoints.reportingTime,
    );
    return ReportingResponseModel.fromMap(data);
  }

  Future<StartStopTimeResponseModel> startTime() async {
    dynamic data = await apiClient.post(
      ApiEndpoints.startTime,
    );
    return StartStopTimeResponseModel.fromMap(data);
  }

  Future<StartStopTimeResponseModel> stopTime() async {
    dynamic data = await apiClient.post(
      ApiEndpoints.stopTime,
    );
    return StartStopTimeResponseModel.fromMap(data);
  }

  Future<CommonResponseModel> addLeave({
    required String leaveReason,
    required String description,
    required String startDate,
    required String endDate,
  }) async {
    dynamic data = await apiClient.post(
      ApiEndpoints.addLeave,
      data: {
        'leaveReason': leaveReason,
        'description': description,
        'startDate': startDate,
        'endDate': endDate,
      },
    );
    return CommonResponseModel.fromMap(data);
  }

  Future<LeaveResponseModel> getAllLeave() async {
    dynamic data = await apiClient.get(
      ApiEndpoints.getAllLeave,
    );
    return LeaveResponseModel.fromJson(data);
  }

  Future<CommonResponseModel> deleteLeave(String id) async {
    dynamic data = await apiClient.delete(
      '${ApiEndpoints.deleteLeave}/$id',
    );
    return CommonResponseModel.fromMap(data);
  }

  Future<NoticeResponseModel> getAllNotice() async {
    dynamic data = await apiClient.get(
      ApiEndpoints.getAllNotice,
    );
    return NoticeResponseModel.fromJson(data);
  }
}
