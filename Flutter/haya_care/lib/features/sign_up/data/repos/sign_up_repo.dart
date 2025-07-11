import 'package:haya_care/core/networking/api_result.dart';
import 'package:haya_care/core/networking/api_service.dart';
import 'package:haya_care/core/networking/api_error_handler.dart';
import 'package:haya_care/features/sign_up/data/models/signup_response.dart';
import 'package:haya_care/features/sign_up/data/models/signup_request_body.dart';




class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}