import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:haya_care/core/networking/api_constants.dart';
import 'package:haya_care/features/registeration/data/models/login_response.dart';
import 'package:haya_care/features/registeration/data/models/signup_response.dart';
import 'package:haya_care/features/registeration/data/models/login_request_body.dart';
import 'package:haya_care/features/registeration/data/models/signup_request_body.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
