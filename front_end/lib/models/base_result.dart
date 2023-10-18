class BaseResult 
{
  dynamic data;
  List<String>? errors;
  String? message;
  bool? success;

  BaseResult({required this.data, this.errors, this.message, this.success});

  factory BaseResult.fromJson(Map<String, dynamic> jsonData) {
    return BaseResult(
      data: jsonData['data'],
      errors: List<String>.from(jsonData['errors']),
      message: jsonData['message'],
      success: jsonData['success'],
    );
  }
}
