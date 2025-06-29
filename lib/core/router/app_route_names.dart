enum AppRouteNames {
  splash('/', 'Splash'),
  home('/home', 'Home'),
  onboard('/onboard', 'Onboard'),
  ;

  const AppRouteNames(this.path, this.name);

  final String path;
  final String name;
}
