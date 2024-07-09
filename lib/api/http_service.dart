import 'dart:convert';
import 'package:ezone/api/api.dart';
import 'package:ezone/api/common_response.dart';
import 'package:http/http.dart' as http;

class HttpServiceImpl implements ApiService{

  final String baseUrl = ApiService.baseUrl;

  @override
  Future<CommonResponse> get(Map<String, dynamic> params, String apiName) async {
    String url = "$baseUrl$apiName?";
    params.forEach((key, value) { 
      url += "$key=$value&";
    });
    String finalUrl = url.substring(0, url.lastIndexOf("&"));

    try {
     http.Response response = await http.get(Uri.parse(finalUrl));    
     CommonResponse finalResp = response.body as CommonResponse;
     return finalResp;
    } catch (ex) {
      return CommonResponse(
        status: -1,
        message: ex.toString(),
        success: false
      );
    }     
  }

  @override
  Future<CommonResponse> post(Map<String, dynamic> params, String apiName) async {
    String url = "$baseUrl$apiName";
    try { 
      http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(params),
      );
    //  CommonResponse finalResp = response.body as CommonResponse;
     CommonResponse finalResp = CommonResponse.fromJson(jsonDecode(response.body));
     return finalResp;
    } catch (ex) {
      return CommonResponse(
        status: -1,
        message: ex.toString(),
        success: false
      );
    }    
  }   

}