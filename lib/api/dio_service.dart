import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ezone/api/api.dart';
import 'package:ezone/api/common_response.dart';

class DioServiceImpl implements ApiService {

  final dio = Dio();
  final String baseUrl = ApiService.baseUrl;

  @override
  Future<CommonResponse> get(Map<String, dynamic> params, String apiName) async {
    try {
      Response response = await dio.get("$baseUrl$apiName",queryParameters: params);    
      CommonResponse finalResp = CommonResponse.fromJson(response.data);
      return finalResp;
    } catch(ex) {
      return CommonResponse(
        status: -1,
        message: ex.toString(),
        success: false
      );
    }
  }

  @override
  Future<CommonResponse> post(Map<String, dynamic> params, String apiName) async {
    try {
      Response response = await dio.post("$baseUrl$apiName",data: params);    
      CommonResponse finalResp = CommonResponse.fromJson(response.data);
      return finalResp;
    } catch(ex) {
      return CommonResponse(
        status: -1,
        message: ex.toString(),
        success: false
      );
    }
  }


    
}