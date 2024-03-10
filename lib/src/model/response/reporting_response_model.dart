import 'package:hrms/src/model/reporting_data_model.dart';

class ReportingResponseModel {
  int statusCode;
  bool success;
  ReportingDataModel? data;

  ReportingResponseModel({
    required this.statusCode,
    required this.success,
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'success': success,
      'data': data?.toMap(),
    };
  }

  factory ReportingResponseModel.fromMap(Map<String, dynamic> map) {
    return ReportingResponseModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      data: map['data'] != null
          ? ReportingDataModel.fromMap(map['data'] as Map<String, dynamic>)
          : null,
    );
  }
}
