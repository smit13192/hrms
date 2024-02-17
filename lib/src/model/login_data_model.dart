class LoginDataModel {
  int statusCode;
  bool success;
  String? message;
  String? token;

  LoginDataModel({
    required this.statusCode,
    required this.success,
    this.message,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'success': success,
      'message': message,
      'token': token,
    };
  }

  factory LoginDataModel.fromMap(Map<String, dynamic> map) {
    return LoginDataModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      message: map['message'] != null ? map['message'] as String : null,
      token: map['token'] != null ? map['token'] as String : null,
    );
  }

  LoginDataModel copyWith({
    int? statusCode,
    bool? success,
    String? message,
    String? token,
  }) {
    return LoginDataModel(
      statusCode: statusCode ?? this.statusCode,
      success: success ?? this.success,
      message: message ?? this.message,
      token: token ?? this.token,
    );
  }

  @override
  String toString() {
    return 'LoginDataModel(statusCode: $statusCode, success: $success, message: $message, token: $token)';
  }

  @override
  bool operator ==(covariant LoginDataModel other) {
    if (identical(this, other)) return true;

    return other.statusCode == statusCode &&
        other.success == success &&
        other.message == message &&
        other.token == token;
  }

  @override
  int get hashCode {
    return statusCode.hashCode ^
        success.hashCode ^
        message.hashCode ^
        token.hashCode;
  }
}
