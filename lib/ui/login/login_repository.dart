import 'package:ezone/api/api.dart';
import 'package:ezone/api/common_response.dart';

class LoginRepository {

  ApiService apiService = ApiServiceImpl();

  Future<CommonResponse> userLogin(Map<String, dynamic> params) => apiService.post(params, "userLogin");
  

}