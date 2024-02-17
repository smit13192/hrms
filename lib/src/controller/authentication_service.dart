import 'package:get/get.dart';
import 'package:hrms/src/model/login_data_model.dart';
import 'package:hrms/src/repository/authentication_repository.dart';
import 'package:hrms/src/router/router.dart';
import 'package:hrms/src/storage/app_storage.dart';
import 'package:hrms/src/utils/app_snackbar.dart';

class AuthenticationService extends GetxService {
  AuthenticationRepository authRepository = AuthenticationRepository();

  void signIn({
    required String email,
    required String password,
  }) async {
    LoginDataModel result = await authRepository.signIn(email, password);
    if (!result.success) {
      AppSnackbar.showErrorSnackbar(title: 'Error', message: result.message);
      return;
    }
    await AppStorage.setToken(result.token!);
    await AppStorage.setLogin(true);
    AppSnackbar.showSuccessSnackbar(title: 'Success', message: result.message);
    Get.offAllNamed(Routes.home);
  }
}
