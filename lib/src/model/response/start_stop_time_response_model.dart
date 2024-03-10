class StartStopTimeResponseModel {
  int statusCode;
  bool success;
  String? message;

  StartStopTimeResponseModel({
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

  factory StartStopTimeResponseModel.fromMap(Map<String, dynamic> map) {
    return StartStopTimeResponseModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }
}
