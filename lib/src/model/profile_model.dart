import 'package:hrms/src/model/user_model.dart';

class ProfileModel {
  int statusCode;
  bool success;
  String? message;
  User? data;
  
  ProfileModel({
    required this.statusCode,
    required this.success,
    this.message,
    this.data,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'success': success,
      'message': message,
      'data': data?.toJson(),
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      statusCode: map['statusCode'] as int,
      success: map['success'] as bool,
      message: map['message'] != null ? map['message'] as String : null,
      data: map['data'] != null ? User.fromJson(map['data'] as Map<String,dynamic>) : null,
    );
  }
}
