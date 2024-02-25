import 'package:hrms/src/api/api.dart';
import 'package:hrms/src/model/reporting_model.dart';
import 'package:hrms/src/model/start_stop_time_model.dart';
import 'package:hrms/src/model/user_log_model.dart';

class FeatureRepository {
  ApiClient apiClient = ApiClient();

  Future<UserLogModel> getUserLogData({
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
    return UserLogModel.fromMap(data);
  }

  Future<ReportingModel> reportingTime() async {
    dynamic data = await apiClient.get(
      ApiEndpoints.reportingTime,
    );
    return ReportingModel.fromMap(data);
  }
  
  Future<StartStopTimeModel> startTime() async {
    dynamic data = await apiClient.post(
      ApiEndpoints.startTime,
    );
    return StartStopTimeModel.fromMap(data);
  }

  Future<StartStopTimeModel> stopTime() async {
    dynamic data = await apiClient.post(
      ApiEndpoints.stopTime,
    );
    return StartStopTimeModel.fromMap(data);
  }
}
