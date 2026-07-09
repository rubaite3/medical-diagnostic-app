enum Auth {
  guest,
  auth,
  loading;

  bool get isGuest => this == Auth.guest;
  bool get isAuth => this == Auth.auth;
  bool get isLoading => this == Auth.loading;
}


enum Operation {
  success,
  failure,
  neutral,
  loading;

  bool get isSuccess => this == Operation.success;
  bool get isFailure => this == Operation.failure;
  bool get isNeutral => this == Operation.neutral;
  bool get isLoading => this == Operation.loading;
}
