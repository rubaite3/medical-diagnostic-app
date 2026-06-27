class AppError {
  final String errorMessage;
  final int statusCode;

  AppError({this.statusCode = 500, this.errorMessage = "some error occured"});

  @override
  String toString() {
    return errorMessage;
  }
}
