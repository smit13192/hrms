import 'package:dio/dio.dart';
import 'package:hrms/src/api/api.dart';
import 'package:hrms/src/model/login_data_model.dart';
import 'package:hrms/src/model/profile_model.dart';

class AuthenticationRepository {
  ApiClient apiClient = ApiClient();

  Future<LoginDataModel> signIn(
    String email,
    String password,
  ) async {
    dynamic data = await apiClient.post(
      ApiEndpoints.employeeLogin,
      data: {'email': email, 'password': password},
    );
    return LoginDataModel.fromMap(data);
  }

  Future<ProfileModel> profile() async {
    dynamic data = await apiClient.get(
      ApiEndpoints.profile,
    );
    return ProfileModel.fromMap(data);
  }

  Future<ProfileModel> profilePicUpdate({required String profilePic}) async {
    final data = FormData.fromMap({
      'profilePic': await MultipartFile.fromFile(profilePic),
    });
    dynamic result = await apiClient.put(
      ApiEndpoints.editProfile,
      data: data,
    );
    return ProfileModel.fromMap(result);
  }
}
