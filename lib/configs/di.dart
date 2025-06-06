import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:practice_app/configs/di.config.dart';
import 'package:practice_app/core/const.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  getIt.registerSingleton<Dio>(createApiClient());

  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
  // getIt<FlutterSecureStorage>().deleteAll();

  getIt.init();
}

Dio createApiClient() {
  Dio dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      validateStatus: (status) => true,
      connectTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60)));
  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (e, handler) {
        log("error: ${e.toString()}\n");
        handler.reject(e);
      },
      onRequest: (request, handler) {
        try {
          log(
            'Request=> ${request.baseUrl}${request.path}'
            '\n'
            'Body=> ${request.data}'
            '\n'
            'Params=> ${request.queryParameters}'
            '\n',
          );
          // if (userTokenNotifier.value.isNotNullOrEmpty) {
          //   request.headers['Authorization'] =
          //       'Bearer ${userTokenNotifier.value}';
          //   log('token => Bearer ${userTokenNotifier.value}');
          // }
          // request.headers['Accept'] = 'application/json';
          // request.headers['Content-Type'] = 'application/x-www-form-urlencoded';
          handler.next(request);
        } catch (e) {
          print(e);
        }
      },
      onResponse: (response, handler) async {
        if (response.statusCode == 401) {
          // await clearUserInfo();
          // handler.reject(DioException(requestOptions: RequestOptions()));
          // BlocProvider.of<GetAccountInfoBloc>(
          //         mainScreenState.currentState!.context)
          //     .add(GetAccountInfoClearEvent());
          // BlocProvider.of<GetMenusBloc>(mainScreenState.currentState!.context)
          //     .add(GetMenusRequestEvent());
          // BlocProvider.of<SearchMovieBloc>(
          //         mainScreenState.currentState!.context)
          //     .add(
          //         SearchMovieRequestEvent(request: SearchVideosRequestModel()));
          // if (mainScreenState.currentState!.indexMap[2] != null &&
          //     mainScreenState.currentState!.indexMap[2]!.currentContext !=
          //         null) {
          //   MyNavigator.pushReplacement(
          //       mainScreenState.currentState!.indexMap[2]!.currentContext!,
          //       LoginScreen());
          // }
          // mainScreenState.currentState!.onChangeTab(0);
        } else {
          handler.resolve(response);
        }
        log(
          'Response=> ${response.realUri} '
          '\n'
          'StatusCode=> ${response.statusCode} '
          '\n'
          'Data=> ${response.data}',
        );
      },
    ),
  );

  return dio;
}
