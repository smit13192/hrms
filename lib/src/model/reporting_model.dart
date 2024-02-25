
class ReportingModel {
  int statusCode;
  bool success;
  ReportingData? data;

  ReportingModel({
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

  factory ReportingModel.fromMap(Map<String, dynamic> map) {
    return ReportingModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      data: map['data'] != null ? ReportingData.fromMap(map['data'] as Map<String,dynamic>) : null,
    );
  }
}

class ReportingData {
  bool? isTotalTimeRunning;
  int? totalReportingTime;
  int? hours;
  int? minutes;
  int? seconds;

  ReportingData({
    this.isTotalTimeRunning,
    this.totalReportingTime,
    this.hours,
    this.minutes,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isTotalTimeRunning': isTotalTimeRunning,
      'totalReportingTime': totalReportingTime,
      'hours': hours,
      'minutes': minutes,
      'seconds': seconds,
    };
  }

  factory ReportingData.fromMap(Map<String, dynamic> map) {
    return ReportingData(
      isTotalTimeRunning: map['isTotalTimeRunning'] != null ? map['isTotalTimeRunning'] as bool : null,
      totalReportingTime: map['totalReportingTime'] != null ? map['totalReportingTime'] as int : null,
      hours: map['hours'] != null ? map['hours'] as int : null,
      minutes: map['minutes'] != null ? map['minutes'] as int : null,
      seconds: map['seconds'] != null ? map['seconds'] as int : null,
    );
  }
}
