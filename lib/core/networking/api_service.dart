import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constance.dart';
import 'package:docdoc/feutures/login/data/models/login_request_body.dart';
import 'package:docdoc/feutures/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../feutures/signup/data/models/sign_up_request_body.dart';
import '../../feutures/signup/data/models/sign_up_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstance.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstance.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

    @POST(ApiConstance.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
