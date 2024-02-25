class StartStopTimeModel {
  int statusCode;
  bool success;
  String? message;
  
  StartStopTimeModel({
    required this.statusCode,
    required this.success,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'success': success,
      'message': message,
    };
  }

  factory StartStopTimeModel.fromMap(Map<String, dynamic> map) {
    return StartStopTimeModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }
}
