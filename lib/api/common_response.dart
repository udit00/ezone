class CommonResponse {
  String? message;
  int? status;
  bool? success;
  dynamic data;

  CommonResponse({this.message, this.status, this.success, this.data});

  CommonResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    success = json['success'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    data['success'] = success;
    data['data'] = this.data;
    return data;
  }
}
