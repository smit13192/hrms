class UserLogModel {
  int statusCode;
  bool success;
  List<UserLog> data;

  UserLogModel({
    required this.statusCode,
    required this.success,
    this.data = const [],
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'success': success,
      'data': data.map((x) => x.toJson()).toList(),
    };
  }

  factory UserLogModel.fromMap(Map<String,dynamic> map) {
    return UserLogModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      data: map['data'] != null
          ? List<UserLog>.from(
              (map['data'] as List<dynamic>).map<UserLog?>(
                (x) => UserLog.fromJson(x as Map<String, dynamic>),
              ),
            )
          : [],
    );
  }
}

class UserLog {
  String? date;
  int? totalDurationInSeconds;
  int? seconds;
  int? minutes;
  int? hours;

  UserLog({
    this.date,
    this.totalDurationInSeconds,
    this.seconds,
    this.minutes,
    this.hours,
  });

  UserLog.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    totalDurationInSeconds = json['totalDurationInSeconds'];
    seconds = json['seconds'];
    minutes = json['minutes'];
    hours = json['hours'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['totalDurationInSeconds'] = totalDurationInSeconds;
    data['seconds'] = seconds;
    data['minutes'] = minutes;
    data['hours'] = hours;
    return data;
  }
}
