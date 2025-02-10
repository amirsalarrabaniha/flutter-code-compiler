class BaseResponse<T> {
  int? returnCode;
  String? message;
  T data;

  BaseResponse({
    required this.returnCode,
    required this.message,
    required this.data,
  });

  // Create class instance from JSON
  factory BaseResponse.fromJson(
      Map<String, dynamic> data, Function(Map<String, dynamic> value) builder) {
    return BaseResponse(
      returnCode: data.containsKey('returnCode') ? data['returnCode'] : -1,
      message: data.containsKey('message') ? data['message'] : '',
      data: builder.call(
          (data['data'] is List && data['data'].isEmpty) ? {} : data['data']),
    );
  } // Create class instance from JSON
  factory BaseResponse.fromJsonArray(
      Map<String, dynamic> data, Function(List<dynamic> value) builder) {
    return BaseResponse(
      returnCode: data.containsKey('returnCode') && data['status'] != null
          ? data['returnCode']
          : -1,
      message: data.containsKey('message') && data['message'] != null
          ? data['message']
          : '',
      data: builder.call(data['data']),
    );
  }
}
