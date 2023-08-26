class ErrorModel {
  final bool ok;
  final ErrorDetails error;

  ErrorModel({required this.ok, required this.error});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      ok: json['ok'],
      error: ErrorDetails.fromJson(json['error']),
    );
  }
}

class ErrorDetails {
  final int code;
  final String message;
  final String description;
  final String stackTrace;

  ErrorDetails({
    required this.code,
    required this.message,
    required this.description,
    required this.stackTrace,
  });

  factory ErrorDetails.fromJson(Map<String, dynamic> json) {
    return ErrorDetails(
      code: json['code'],
      message: json['message'],
      description: json['description'],
      stackTrace: json['stack_trace'],
    );
  }
}
