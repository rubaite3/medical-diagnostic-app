enum Auth {
  guest,
  auth,
  loading;

  bool get isGuest => this == Auth.guest;
  bool get isAuth => this == Auth.auth;
  bool get isLoading => this == Auth.loading;
}
