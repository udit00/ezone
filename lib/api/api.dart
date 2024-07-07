import 'package:ezone/api/common_response.dart';
import 'package:ezone/api/dio_service.dart';
import 'package:ezone/api/http_service.dart';

abstract class ApiService {
  static const String _appName = "ezone";
  static const String baseUrl = "http://157.173.218.215:5000/$_appName/";
  Future<CommonResponse> get(Map<String, dynamic> params, String apiName);
  Future<CommonResponse> post(Map<String, dynamic> params, String apiName);
}

// class ApiServiceImpl extends DioServiceImpl {
//   @override
//   void get(Map<String, dynamic> params, String apiName) {
//     super.get(params, apiName);
//   }

//   @override
//   void post(Map<String, dynamic> params, String apiName) {
//     super.post(params, apiName);
//   }

// }

// class ApiServiceImpl extends DioServiceImpl {
class ApiServiceImpl extends HttpServiceImpl {

  ApiServiceImpl._privateConstructor();

  static final ApiServiceImpl _instance = ApiServiceImpl._privateConstructor();

  factory ApiServiceImpl() {
    return _instance;
  }  

}