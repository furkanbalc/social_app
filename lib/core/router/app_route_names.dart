enum AppRouteNames {
  splash('/', 'Splash'),
  home('/home', 'Home'),
  onboard('/onboard', 'Onboard'),
  login('/login', 'Login'),
  register('/register', 'Register'),
  ;

  const AppRouteNames(this.path, this.name);

  final String path;
  final String name;
}
