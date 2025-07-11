import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:haya_care/core/networking/api_service.dart';
import 'package:haya_care/core/networking/dio_factory.dart';
import 'package:haya_care/features/login/logic/login_cubit.dart';
import 'package:haya_care/features/sign_up/logic/signup_cubit.dart';
import 'package:haya_care/features/login/data/repos/login_repo.dart';
import 'package:haya_care/features/sign_up/data/repos/sign_up_repo.dart';


final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
